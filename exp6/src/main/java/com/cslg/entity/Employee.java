package com.cslg.entity;

import java.io.Serializable;

public class Employee implements Serializable{
    private Integer id;
    private String empName;
    private String job;
    private Double salary;
    private Integer dept;

    public Employee() {
    }

    public Employee(String empName, String job, Double salary, Integer dept) {
        this.empName = empName;
        this.job = job;
        this.salary = salary;
        this.dept = dept;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getEmpName() {
        return empName;
    }

    public void setEmpName(String empName) {
        this.empName = empName;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public Double getSalary() {
        return salary;
    }

    public void setSalary(Double salary) {
        this.salary = salary;
    }

    public Integer getDept() {
        return dept;
    }

    public void setDept(Integer dept) {
        this.dept = dept;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "id=" + id +
                ", empName='" + empName + '\'' +
                ", job='" + job + '\'' +
                ", salary=" + salary +
                ", dept=" + dept +
                '}';
    }
}
