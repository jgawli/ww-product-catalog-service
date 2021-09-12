package com.ww.product.exception;

public class ProductNotFoundException extends RuntimeException {

    public ProductNotFoundException(String identifier) {
        super("Could not find product by " + identifier);
    }
}
