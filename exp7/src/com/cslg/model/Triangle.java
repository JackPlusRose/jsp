package com.cslg.model;

import java.io.Serializable;

public class Triangle implements Serializable {
    private int a;
    private int b;
    private int c;

    public Triangle() {
    }

    public Triangle(int a, int b, int c) {
        this.a = a;
        this.b = b;
        this.c = c;
    }

    public int getA() {
        return a;
    }

    public void setA(int a) {
        this.a = a;
    }

    public int getB() {
        return b;
    }

    public void setB(int b) {
        this.b = b;
    }

    public int getC() {
        return c;
    }

    public void setC(int c) {
        this.c = c;
    }
    public boolean isTriangle(){
        if(a>0 && b>0 && c>0 && a+b>c && a-b<c)
            return true;
        else
            return false;
    }
    public  double mj(){
        if(isTriangle()){
            double p=(a+b+c)/2.0;
            return Math.sqrt(p*(p-a)*(p-b)*(p-c));
        }
        return -1;
    }
}
