package com.ww.product.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Product {

    @JsonIgnore
    @Id
    @GeneratedValue
    private Long id;
    private String name;
    private String description;
    private String url;
    private String currency;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "category_id", referencedColumnName = "id")
    private Category category;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "sub_category_id", referencedColumnName = "id")
    private SubCategory subCategory;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "media_id", referencedColumnName = "id")
    private Media media;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "sku_id", referencedColumnName = "id")
    private Sku sku;
}
