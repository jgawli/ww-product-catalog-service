package com.ww.product.service;

import com.ww.product.entity.Product;
import com.ww.product.entity.SubCategory;
import com.ww.product.exception.ProductNotFoundException;
import com.ww.product.repository.ProductRepository;
import com.ww.product.repository.SubCategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;

import java.util.List;

@Service
public class ProductService {

    @Autowired
    ProductRepository productRepository;

    public Product findProductByCategory(String category) {
        return productRepository.findByCategoryName(category)
                .orElseThrow(() -> new ProductNotFoundException(category));
    }

    public Product findProductByName(String name) {
        return productRepository.findByName(name)
                .orElseThrow(() -> new ProductNotFoundException(name));
    }

    public List<Product> findAllProducts() {
        return productRepository.findAll();
    }

    public Product createNewProduct(Product newProduct) {
        return productRepository.save(newProduct);
    }

    public Product updateProduct(Product newProduct, String productName) {

        return productRepository.findByName(productName)
                .map(product -> {
                    product.setName(newProduct.getName());
                    product.setDescription(newProduct.getDescription());
                    product.setCurrency(newProduct.getCurrency());
                    product.setUrl(newProduct.getUrl());
                    return productRepository.save(product);
                })
                .orElseGet(() -> {
                    return productRepository.save(newProduct);
                });
    }

    public void deleteProduct(String productName) {
        Product product = productRepository.findByName(productName)
                .orElseThrow(() -> new ProductNotFoundException(productName));
        productRepository.delete(product);
    }
}
