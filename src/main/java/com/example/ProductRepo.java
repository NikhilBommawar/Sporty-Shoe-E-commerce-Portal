package com.example;

import java.util.List;
import java.util.logging.Logger;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;



public interface ProductRepo extends JpaRepository<Products, Integer>  {

	

@Query("select products from Products products")
 public List<Products> getallproducts();


}
