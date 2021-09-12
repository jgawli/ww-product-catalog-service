package com.ww.product.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "sub_category")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class SubCategory {

    @JsonIgnore
    @Id
    @GeneratedValue
    private Long id;
    private String name;
    private String description;
}
