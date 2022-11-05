package com.example;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Proxy;
import org.springframework.transaction.annotation.Transactional;

import lombok.Data;

@Entity
@Data
@Table
@Transactional
@Proxy(lazy = false)
public class Products {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int prid;
	private String prname;
	private String brand;
	private String prcategory;
	private String gender;
	private float prprice;

}
