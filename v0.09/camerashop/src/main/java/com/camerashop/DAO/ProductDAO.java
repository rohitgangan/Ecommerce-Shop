package com.camerashop.DAO;

import java.util.List;

import com.camerashop.model.Category;
import com.camerashop.model.Product;

public interface ProductDAO {

public void createProduct(Product product);
public List<Product> listProduct();
public String stringProduct();
public Product getById(int productId);
public void delete(int productId);
}
