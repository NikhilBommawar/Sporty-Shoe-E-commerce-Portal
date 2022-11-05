package com.example;

import java.util.List;
import java.util.logging.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;



@Service
@Transactional
public class AppDAO {
	
	@Autowired
	AppRepo repo;
	
	@Autowired
	ProductRepo prepo;
	
	
	
	Logger log=Logger.getAnonymousLogger();
	
	// Insert User
	public User InsertUser(User user) {
		log.info(user.getName());
		return repo.save(user);
	}
	
	// User Verification for Login 
	public User getUserforLogin(User user) {
		log.info("came to dao for admin gverification");
		return repo.getUser(user.getUserName(),user.getPassword(),user.getUser_type());
	}

	
	// get all products list
	public List<Products> getallproducts() {
		return prepo.getallproducts();
		}
	


	// Add product
	public Products addproduct(Products product) {
		return prepo.save(product);
	}
	
	// Edit Product
	
	public Products editproduct(Products product) {
		Products p=prepo.getById(product.getPrid());
		p.setBrand(product.getBrand());
		p.setGender(product.getGender());
		p.setPrcategory(product.getPrcategory());
		p.setPrname(product.getPrname());
		p.setPrprice(product.getPrprice());
		return prepo.save(p);
		
		
	}

	// Delete Product
	
	public void deleteproduct(Products product) {
		prepo.deleteById(product.getPrid());
		
	}
	
     // get product by id
	@Transactional
	public Products getProductbyid(int id) {
		return prepo.getById(id);
		
	}
	
	// get all products list
		public List<User> getcustomerlist() {
			return repo.getcustomerlist();
			}
		
	// delete customer
		public void deletecustomer(int Userid) {
			repo.deleteById(Userid);
		}
		
	// edit customer	
	
}
