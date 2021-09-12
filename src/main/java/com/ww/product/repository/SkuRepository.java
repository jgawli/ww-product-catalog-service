package com.ww.product.repository;

import com.ww.product.entity.Sku;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SkuRepository extends JpaRepository<Sku, Long> {
}
