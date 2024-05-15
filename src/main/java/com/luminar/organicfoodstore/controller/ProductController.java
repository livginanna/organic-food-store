package com.luminar.organicfoodstore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.luminar.organicfoodstore.entity.Product;
import com.luminar.organicfoodstore.service.ProductService;

@Controller
public class ProductController {
	@Autowired
	ProductService productService;
	
	@GetMapping("/")
	public String adminLogin() {
		return "index";
	}
	

	
	
	@GetMapping("/login")
	public ModelAndView getAllProducts() {
		ModelAndView mav = new ModelAndView("admin_home");
		List<Product> productList = productService.getAll();
		mav.addObject("products", productList);
		return mav;
	}
	@GetMapping("/add-product")
	public ModelAndView addProduct() {		
		ModelAndView mav = new ModelAndView("add_product");
		mav.addObject("command", new Product());	
		return mav;
	}
	@PostMapping("/save-product")
	public String saveItem(@ModelAttribute Product product) {
		productService.save(product);
		return "redirect:/login";
	}
	
	}



