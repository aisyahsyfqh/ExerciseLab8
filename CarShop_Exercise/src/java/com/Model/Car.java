package com.Model;

public class Car {

    protected int car_id;
    protected String brand;
    protected String model;
    protected int cyclinder;
    protected double price;

    public Car() {
    }

    public Car(String brand,
               String model,
               int cyclinder,
               double price) {

        super();

        this.brand = brand;
        this.model = model;
        this.cyclinder = cyclinder;
        this.price = price;
    }

    public Car(int car_id,
               String brand,
               String model,
               int cyclinder,
               double price) {

        super();

        this.car_id = car_id;
        this.brand = brand;
        this.model = model;
        this.cyclinder = cyclinder;
        this.price = price;
    }

    public int getCar_id() {
        return car_id;
    }

    public void setCar_id(int car_id) {
        this.car_id = car_id;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public int getCyclinder() {
        return cyclinder;
    }

    public void setCyclinder(int cyclinder) {
        this.cyclinder = cyclinder;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}