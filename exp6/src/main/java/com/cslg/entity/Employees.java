package com.cslg.entity;

import java.io.Serializable;

public class Employees implements Serializable {
    private Integer id;
    private String name;
    private Integer age;
    private String education;
    private String address;
    private Double salary;

    public Employees() {
    }

    public Employees(String name, Integer age, String education, String address, Double salary) {
        this.name = name;
        this.age = age;
        this.education = education;
        this.address = address;
        this.salary = salary;
    }

    public Employees(Integer id, String name, Integer age, String education, String address, Double salary) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.education = education;
        this.address = address;
        this.salary = salary;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Double getSalary() {
        return salary;
    }

    public void setSalary(Double salary) {
        this.salary = salary;
    }

    @Override
    public String toString() {
        return "Employees{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", age=" + age +
                ", education='" + education + '\'' +
                ", address='" + address + '\'' +
                ", salary=" + salary +
                '}';
    }
}
