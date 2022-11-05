package com.example;

import java.util.List;
import java.util.logging.Logger;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;





public interface AppRepo extends JpaRepository<User, Integer>{

	
 @Query("select usr from User usr where usr.UserName=?1 and usr.password=?2 and usr.user_type=?3")
	public	User getUser(String uname,String password,String utype);

 @Query("select usr from User usr where usr.user_type='Customer'")
 public List<User> getcustomerlist();
	 


}
