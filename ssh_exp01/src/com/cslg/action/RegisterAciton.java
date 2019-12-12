package com.cslg.action;

import com.cslg.util.DbUtil;
import org.springframework.jdbc.core.JdbcTemplate;

public class RegisterAciton {
    private String name;
    private String password;

    //使用jdbc对象
    private JdbcTemplate template = new JdbcTemplate(DbUtil.getDataSource());

    public String execute() throws Exception{
        String sql = "insert into user(name,password) values (?,?)";
        if(template.update(sql,name,password) == 1) {
            return "success";
        }else {
            return "error";
        }
    }
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public RegisterAciton() {
    }

    public RegisterAciton(String name, String password) {
        this.name = name;
        this.password = password;
    }
}
