package com.ww.product.repository;

import com.ww.product.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.Optional;

public interface ProductRepository extends JpaRepository<Product, Long> {

    @Query("select p from Product p where p.category.name = ?1")
    Optional<Product> findByCategoryName(String category);

    Optional<Product> findByName(String name);
}
