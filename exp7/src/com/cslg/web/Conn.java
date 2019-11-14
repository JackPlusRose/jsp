package com.cslg.web;

import com.cslg.model.User;
import com.cslg.utils.DbUtil;
import org.junit.Test;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

public class Conn {
    private JdbcTemplate template = new JdbcTemplate(DbUtil.getDataSource());
    @Test
    public void login() {
        //1.编写sql
        String sql = "select * from user where username = ? and password = ?";
        //2.调用query方法
        User user = template.queryForObject(sql,
                new BeanPropertyRowMapper<User>(User.class),"001","111111");
        System.out.println(user);
    }
}
