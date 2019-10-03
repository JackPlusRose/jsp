package com.cslg;

import java.io.Serializable;

public class UserInfo implements Serializable{
    private String name;
    private String password;
    private String commitPassword;
    private String gender;
    private String [] hobby;

    public UserInfo() {
    }

    public UserInfo(String name, String password, String commitPassword, String gender, String[] hobby) {
        this.name = name;
        this.password = password;
        this.commitPassword = commitPassword;
        this.gender = gender;
        this.hobby = hobby;
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

    public String getCommitPassword() {
        return commitPassword;
    }

    public void setCommitPassword(String commitPassword) {
        this.commitPassword = commitPassword;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String[] getHobby() {
        return hobby;
    }

    public void setHobby(String[] hobby) {
        this.hobby = hobby;
    }
}
