package com.ww.product.service;

import com.ww.product.entity.SubCategory;
import com.ww.product.repository.SubCategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SubCategoryService {

    @Autowired
    SubCategoryRepository subCategoryRepository;

    public List<SubCategory> getAllCategories() {
        return subCategoryRepository.findAll();
    }
}
