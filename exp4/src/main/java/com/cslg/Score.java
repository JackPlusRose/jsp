package com.cslg;

import java.io.Serializable;

public class Score implements Serializable {
    private String name;
    private double one;
    private double two;
    private double three;
    private double four;
    private double five;

    public Score() {
    }

    public Score(String name, double one, double two, double three, double four, double five) {
        this.name = name;
        this.one = one;
        this.two = two;
        this.three = three;
        this.four = four;
        this.five = five;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getOne() {
        return one;
    }

    public void setOne(double one) {
        this.one = one;
    }

    public double getTwo() {
        return two;
    }

    public void setTwo(double two) {
        this.two = two;
    }

    public double getThree() {
        return three;
    }

    public void setThree(double three) {
        this.three = three;
    }

    public double getFour() {
        return four;
    }

    public void setFour(double four) {
        this.four = four;
    }

    public double getFive() {
        return five;
    }

    public void setFive(double five) {
        this.five = five;
    }
}
