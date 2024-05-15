package com.luminar.organicfoodstore.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.luminar.organicfoodstore.entity.Product;

public interface ProductRepository extends JpaRepository<Product, Integer> {

}
