package cn.cslg.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {
    private String name;
    private String password;
    private String tip;

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

    public String getTip() {
        return tip;
    }

    public void setTip(String tip) {
        this.tip = tip;
    }

    public LoginAction() {
    }

    public LoginAction(String name, String password, String tip) {
        this.name = name;
        this.password = password;
        this.tip = tip;
    }
    public String execute(){
        ActionContext ac =ActionContext.getContext();
        if(getName().equals("QQ")&&getPassword().equals("123")){
            ac.getSession().put("name",getName());
            this.tip = getText("login.success",new String[]{this.name});
            return "success";
        }else {
            return "error";
        }
    }
}
