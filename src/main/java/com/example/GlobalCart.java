package com.example;

import java.util.ArrayList;
import java.util.List;

import org.springframework.transaction.annotation.Transactional;

@Transactional
public class GlobalCart {

	
	public static List<Products> cart;
	static {
		cart =new ArrayList<Products>();
	}
}
