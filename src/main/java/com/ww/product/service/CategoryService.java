package com.ww.product.service;

import com.ww.product.entity.Category;
import com.ww.product.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class CategoryService {

    @Autowired
    CategoryRepository categoryRepository;

    public List<Category> getAllCategories() {
        return categoryRepository.findAll();
    }
}
