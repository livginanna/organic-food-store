package com.luminar.organicfoodstore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.luminar.organicfoodstore.entity.Product;
import com.luminar.organicfoodstore.repository.ProductRepository;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	ProductRepository productRepository;
	
	@Override
	public void save(Product product) {
		if (product.getId() == null) {
			productRepository.save(product);
		} else {
			Product itemUpdate = productRepository.findById(product.getId()).get();
			itemUpdate.setName(product.getName());
			itemUpdate.setPrice(product.getPrice());
			
			productRepository.save(itemUpdate);
		}
	}
	@Override
	public List<Product> getAll() {
		return productRepository.findAll();
	}
	@Override
	public Product getById(Integer id) {
		return productRepository.findById(id).get();

	}
	

	

}
