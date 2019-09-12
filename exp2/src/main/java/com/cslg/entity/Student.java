package com.cslg.entity;

import java.io.Serializable;

/**
 * 学生实体类
 */
public class Student implements Serializable {
    private String num;
    private String name;
    private String gender;
    private String studentClass;
    private Double score;

    public Student(String num, String name, String gender, String studentClass, Double score) {
        this.num = num;
        this.name = name;
        this.gender = gender;
        this.studentClass = studentClass;
        this.score = score;
    }

    public String getNum() {
        return num;
    }

    public void setNum(String num) {
        this.num = num;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getStudentClass() {
        return studentClass;
    }

    public void setStudentClass(String studentClass) {
        this.studentClass = studentClass;
    }

    public Double getScore() {
        return score;
    }

    public void setScore(Double score) {
        this.score = score;
    }
}
