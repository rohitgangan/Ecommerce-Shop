package com.camerashop.DAO;

import java.util.List;

import com.camerashop.model.Product;

public interface ProductDAO {

public void createProduct(Product product);
public List<Product> listProduct();
}
