package com.example;

import lombok.Data;

@Data
public class PurchaseList {

	private  int customerid;
	private String customername;
	private String[] productname;
	private float[] price;
	private float totalprice;
	
	
}
