package cn.cslg.action;

import cn.cslg.main.User;
import cn.cslg.util.DbUtil;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class UserAction {

    private String name;
    private String password;

    //使用jdbc对象
    private JdbcTemplate template = new JdbcTemplate(DbUtil.getDataSource());

    public String execute() throws Exception{
        String sql = "SELECT password FROM user WHERE name = ?";
        RowMapper<User> rowMapper = new BeanPropertyRowMapper<>(User.class);
        User user = template.queryForObject(sql,rowMapper,name);
        if(password.equals(user.getPassword())) {
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

    public UserAction() {
    }

    public UserAction(String name, String password) {
        this.name = name;
        this.password = password;
    }

}
