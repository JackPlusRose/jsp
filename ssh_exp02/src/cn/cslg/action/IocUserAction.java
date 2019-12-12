package cn.cslg.action;

import cn.cslg.main.User;
import cn.cslg.util.DbUtil;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import javax.servlet.http.HttpServletRequest;

public class IocUserAction extends ActionSupport implements ServletRequestAware {
    private String name;
    private String password;
    private HttpServletRequest request;

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

    public IocUserAction() {
    }

    public IocUserAction(String name, String password) {
        this.name = name;
        this.password = password;
    }

    @Override
    public void setServletRequest(HttpServletRequest httpServletRequest) {
        this.request = httpServletRequest;
    }
}
