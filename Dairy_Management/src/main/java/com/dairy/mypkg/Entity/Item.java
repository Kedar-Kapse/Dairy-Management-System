package com.dairy.mypkg.Entity;

public class Item {
    private Products product;
    private int quantity;

    // Constructor
    public Item(Products product, int quantity) {
        this.product = product;
        this.quantity = quantity;
    }

    // Getters and setters
    public Products getProduct() {
        return product;
    }

    public void setProduct(Products product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
