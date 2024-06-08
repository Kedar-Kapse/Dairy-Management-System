package com.dairy.mypkg.Entity;

import java.util.List;

import jakarta.persistence.*;

@Entity
public class CartInfo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    
    private Long id;

    private String name;
    private String email;
    private String address;
    private String mobileNumber;
    private String productNames;
    private double totalPrice;
    private String orderId; // Added orderId field

    public CartInfo() {
    }

    public CartInfo(String name, String email, String address, String mobileNumber, String productNames, double totalPrice) {
        this.name = name;
        this.email = email;
        this.address = address;
        this.mobileNumber = mobileNumber;
        this.productNames = productNames;
        this.totalPrice = totalPrice;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getMobileNumber() {
        return mobileNumber;
    }

    public void setMobileNumber(String mobileNumber) {
        this.mobileNumber = mobileNumber;
    }

    public String getProductNames() {
        return productNames;
    }

    public void setProductNames(String productNames) {
        this.productNames = productNames;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }
    
    // Getter and setter for orderId
    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public List<CartInfo> getCartItems() {
        // TODO Auto-generated method stub
        return null;
    }
}
