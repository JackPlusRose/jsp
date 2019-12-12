package cn.cslg.action;

import com.opensymphony.xwork2.ActionSupport;

public class RegisterAciton extends ActionSupport {
    private String userName;
    private String userPassword;
    private String userAge;
    private String userTelephone;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getUserAge() {
        return userAge;
    }

    public void setUserAge(String userAge) {
        this.userAge = userAge;
    }

    public String getUserTelephone() {
        return userTelephone;
    }

    public void setUserTelephone(String userTelephone) {
        this.userTelephone = userTelephone;
    }

    public RegisterAciton() {
    }

    public RegisterAciton(String userName, String userPassword, String userAge, String userTelephone) {
        this.userName = userName;
        this.userPassword = userPassword;
        this.userAge = userAge;
        this.userTelephone = userTelephone;
    }
    public String execute(){
        return "success";
    }
}
