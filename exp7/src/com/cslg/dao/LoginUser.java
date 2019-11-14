package com.cslg.dao;

import com.cslg.model.User;
import com.cslg.utils.DbUtil;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

public class LoginUser {
//    public void login() {
//        //1.编写sql
//        String sql = "select * from user where username = ? and password = ?";
//        //2.调用query方法
//        User user = template.queryForObject(sql,
//                new BeanPropertyRowMapper<User>(User.class),"001","111111");
//        System.out.println(user);
//    }
    private JdbcTemplate template = new JdbcTemplate(DbUtil.getDataSource());
    public User login(User loginUser){
        User user = null;
        try {
            String sql="select * from user where username = ? and password = ?";
            user = template.queryForObject(sql, new BeanPropertyRowMapper<User>(User.class),loginUser.getUserName(),loginUser.getPassword());
        } catch (DataAccessException e) {
            e.printStackTrace();
        }
        return user;
    }
}
