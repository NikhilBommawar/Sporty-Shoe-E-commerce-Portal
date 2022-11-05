package com.example;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;


@Entity
@Table
@Data
public class User {
     @Id
     @GeneratedValue(strategy = GenerationType.AUTO)
     private int SrNo;
     private String name;
     private String user_type;
     private String UserName;
     private String password;
     
}
