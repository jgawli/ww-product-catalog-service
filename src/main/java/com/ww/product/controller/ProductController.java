package com.ww.product.controller;

import com.ww.product.entity.Product;
import com.ww.product.exception.ProductNotFoundException;
import com.ww.product.service.ProductService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Api(value = "ProductController", description = "REST APIs related to WW Product!!!!")
@RestController
public class ProductController {

    @Autowired
    ProductService productService;

    @ApiOperation(value = "Get list of Products in the System ", response = Iterable.class, tags = "getProducts")
    @ApiResponses(value = {
            @ApiResponse(code = 200, message = "Success|OK"),
            @ApiResponse(code = 401, message = "not authorized!"),
            @ApiResponse(code = 403, message = "forbidden!!!"),
            @ApiResponse(code = 404, message = "not found!!!") })
    @GetMapping("/products")
    ResponseEntity<List<Product>> findAllProducts() {
        return new ResponseEntity<List<Product>>(productService.findAllProducts(), HttpStatus.OK);
    }

    @ApiOperation(value = "Create new Product in the System ", response = Iterable.class, tags = "createNewProduct")
    @PostMapping("/products")
    ResponseEntity<Product> createNewProduct(@RequestBody Product newProduct) {
        Product product = productService.createNewProduct(newProduct);
        return new ResponseEntity<Product>(product, HttpStatus.CREATED);
    }

    @ApiOperation(value = "Get specific Product in the System by category", response = Product.class, tags = "getProductByCategory")
    @GetMapping("/products/{category}")
    ResponseEntity<Product> findProductByCategory(@PathVariable String category) throws ProductNotFoundException {
        return new ResponseEntity<Product>(productService.findProductByCategory(category), HttpStatus.OK);
    }

    @ApiOperation(value = "Update existing Product in the System ", response = Iterable.class, tags = "updateProduct")
    @PutMapping("/products/{id}")
    ResponseEntity<Product> updateProduct(@RequestBody Product newProduct, @PathVariable String productName) {
        Product updatedProduct = productService.updateProduct(newProduct, productName);
        return new ResponseEntity<Product>(updatedProduct, HttpStatus.OK);
    }

    @DeleteMapping("/products/{id}")
    @ResponseStatus(HttpStatus.OK)
    void deleteProduct(@PathVariable String productName) {
        productService.deleteProduct(productName);
    }
}
