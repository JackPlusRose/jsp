package com.cslg;

import java.io.Serializable;

public class Car implements Serializable {
    private String color;
    private boolean cold;

    public Car() {
    }

    public Car(String color, boolean cold) {
        this.color = color;
        this.cold = cold;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public boolean getCold() {
        return cold;
    }

    public void setCold(boolean cold) {
        this.cold = cold;
    }
}
