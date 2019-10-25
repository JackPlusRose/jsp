package com.cslg.sql;

import com.cslg.entity.Employee;
import com.cslg.utils.Conn;
import org.junit.Test;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class SqlOperator {
    private static Connection conn;
    private static Statement st;

    static {
        conn = Conn.getConn();
        st = Conn.getSt();
    }

    @Test
    public void addSql() {
        Employee employee = new Employee("姜鹏", "boss", 6000.00, 30);
        String sql = "insert into employee(EMP_NAME,JOB,SALARY,DEPT) values('王楠','clerk',4300.00,10)";
        String sql1 = "insert into employee(EMP_NAME,JOB,SALARY,DEPT) values('张敬','clerk',4300.00,10)";
        String sql2 = "insert into employee(EMP_NAME,JOB,SALARY,DEPT) values('李刚','manager',5000.00,20)";
        String sql3 = "insert into employee(EMP_NAME,JOB,SALARY,DEPT) values('马明','manager',5000.00,20)";
        String sql4 = "insert into employee(EMP_NAME,JOB,SALARY,DEPT) values(?,?,?,?)";
        try {
            st.addBatch(sql);
            st.addBatch(sql1);
            st.addBatch(sql2);
            st.addBatch(sql3);
            //预编译
            PreparedStatement ps = conn.prepareStatement(sql4);
            ps.setObject(1, employee.getEmpName());
            ps.setObject(2, employee.getJob());
            ps.setObject(3, employee.getSalary());
            ps.setObject(4, employee.getDept());
            ps.executeUpdate();
            st.executeBatch();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void modifySql() {
        String sql1 = "update employee set SALARY=SALARY+200 where DEPT=10";
        String sql2 = "update employee set SALARY=SALARY+500 where DEPT=20";
        try {
            st.addBatch(sql1);
            st.addBatch(sql2);
            st.executeBatch();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void delSql() {
        String sql1 = "delete from employee where EMP_ID in(9,10,12)";
        try {
            st.addBatch(sql1);
            st.executeBatch();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void selSql() {
        String sql = "select * from employee  where JOB='manager'";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery(sql);

            List<Employee> employee=new ArrayList<Employee>();
            Integer id;
            String empName;
            String job;
            Double salary;
            Integer dept;
            while(rs.next()){
                id=(Integer) rs.getObject(1);
                empName=(String) rs.getObject(2);
                job=(String) rs.getObject(3);
                salary=(Double) rs.getObject(4);
                dept=(Integer) rs.getObject(5);
                employee.add(new Employee(empName,job,salary,dept));
            }
            for (Employee empl : employee) {
                System.out.println(empl);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
