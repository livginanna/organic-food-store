package com.luminar.organicfoodstore.service;

import java.util.List;

import com.luminar.organicfoodstore.entity.Product;

public interface ProductService {
	void save(Product product);

	List<Product> getAll();

	Product getById(Integer id);


}
