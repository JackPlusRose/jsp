package cn.cslg.action;

import cn.cslg.dao.LoginRegisterDao;
import cn.cslg.main.UserBean;
import com.opensymphony.xwork2.ActionSupport;

import java.util.List;

public class RegisterAction extends ActionSupport {
    private String userName;
    private String password1;
    private String password2;
    private String mess="error";
    private List list;
    public String getUserName() {
        return userName;
    }
    public void setUserName(String userName) {
        this.userName= userName;
    }
    public String getPassword1() {
        return password1;
    }

    public void setPassword1(String password1) {
        this.password1 = password1;
    }
    public String getPassword2() {
        return password2;
    }
    public void setPassword2(String password2) {
        this.password2 = password2;
    }
    public void validate(){
        if(this.getUserName()==null||this.getUserName().length()==0){
            addFieldError("userName","用户名不能为空！");
        }else{
            LoginRegisterDao info=new LoginRegisterDao();
            list=info.queryInfo("userName", this.getUserName());
            UserBean ui=new UserBean();
            for(int i=0;i<list.size();i++){
                ui=(UserBean)list.get(i);
                if(ui.getUserName().equals(this.getUserName())){
                    addFieldError("userName","用户名已存在ϼ?");
                }
            }
        }
        if(this.getPassword1()==null||this.getPassword1().length()==0){
            addFieldError("password1","登录密码不允许为空！");
        }else if(this.getPassword2()==null||this.getPassword2().length()==0){
            addFieldError("password2","重复密码不允许为空！");
        }else if(!this.getPassword1().equals(this.getPassword2())){
            addFieldError("password2","两次密码不一致！");
        }
    }
    public UserBean userInfo(){
        UserBean info=new UserBean();
        info.setUserName(this.getUserName());
        info.setPassword(this.getPassword1());
        return info;
    }
    public String execute() throws Exception{
        LoginRegisterDao lr=new LoginRegisterDao();
        String ri=lr.saveInfo(userInfo());
        if(ri.equals("success")){
            mess="success";
        }
        return mess;
    }
}
