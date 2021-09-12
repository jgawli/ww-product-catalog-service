package com.ww.product.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Sku {

    @JsonIgnore
    @Id
    @GeneratedValue
    private Long id;
    private String name;
    private String description;

    @Column(name = "retail_price")
    private Double retailPrice;

    @Column(name = "sale_price")
    private Double salePrice;

    @Column(name = "inventory_type")
    private String inventoryType;

    @Column(name = "quantity_available")
    private int quantityAvailable;
}
