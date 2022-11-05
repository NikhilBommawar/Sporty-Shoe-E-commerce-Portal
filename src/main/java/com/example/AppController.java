package com.example;

import java.util.List;
import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class AppController {
	@Autowired
	AppDAO dao;
	
	Logger log=Logger.getAnonymousLogger();

	@RequestMapping("/")
	public ModelAndView login() {
		ModelAndView mv=new ModelAndView();
		
		mv.setViewName("index.jsp");
		return mv;
	}
	
	// User Registration
	@RequestMapping("/RegisterUser")
	public ModelAndView insert(HttpServletRequest request,HttpServletResponse reponse) {
		log.info("Entered register user control");
		User user=new User();
		
		ModelAndView mv=new ModelAndView();
		user.setName(request.getParameter("name"));
		user.setUser_type(request.getParameter("user_type"));
		user.setUserName(request.getParameter("UserName"));
		user.setPassword(request.getParameter("password"));
		log.info("going to dao for insert");
		if(dao.InsertUser(user)!=null){
			log.info("returned from dao on successful insert");
			mv.setViewName("success.jsp");
			mv.addObject("user", user);
		   
		}
		else{
			log.info("returned from dao on failed insert");
			mv.setViewName("success.jsp");
			mv.addObject("user", user);
		}
		 return mv;
	}
	
	
	//User Verification for Login
	@RequestMapping("/VerifyUser")
	public ModelAndView AdminLogin(HttpServletRequest request,HttpServletResponse reponse) {
		log.info("Entered Admin verification control");
		User user=new User();
		
		ModelAndView mv=new ModelAndView();
		
		user.setUser_type(request.getParameter("utype"));
		user.setUserName(request.getParameter("uname"));
		user.setPassword(request.getParameter("password"));
		User usr=dao.getUserforLogin(user);
		log.info("going to dao for verification");
				if(usr!=null) {
			log.info("returned from dao and user not null true");
			if(usr.getUser_type().equals("Admin")) {
				log.info(" going to admin home");
			mv.setViewName("AdminHome.jsp");
			}
			else {
				log.info(" going to customer home");
				mv.setViewName("CustomerHome.jsp");
				mv.addObject("user", usr);
			}
		}
		else {
			mv.setViewName("LoginFailure.jsp");
		}
  
	   return mv;
	}




	

	// Get all products
	@RequestMapping("/ViewProducts")
	public ModelAndView GetallProducts(HttpServletRequest request,HttpServletResponse reponse) {
		log.info("Entered get products control");
		ModelAndView mv=new ModelAndView();
		
		List<Products> products= dao.getallproducts();
		 if(products!=null) {
			 mv.setViewName("displayproducts.jsp");
			 mv.addObject("allprod", products);
		 }
		 else {
			 mv.setViewName("failure.jsp");
		 }
		
	return mv;
}
	
	   // add product
	@RequestMapping("/AddProduct")
	public ModelAndView addProducts(HttpServletRequest request,HttpServletResponse reponse) {
		log.info("Entered add products control");
		ModelAndView mv=new ModelAndView();
         Products product=new Products();
         
         product.setBrand(request.getParameter("brand"));
         product.setGender(request.getParameter("gender"));
         product.setPrcategory(request.getParameter("prcategory"));
		 product.setPrname(request.getParameter("prname"));
		 product.setPrprice(Float.parseFloat(request.getParameter("prprice")));
		if(dao.addproduct(product)!=null) {
			mv.setViewName("ManProducts.jsp");
		}
		return mv;	
}
	
	// edit product
	@RequestMapping("/EditProduct")
	public ModelAndView editProduct(HttpServletRequest request,HttpServletResponse reponse) {
		log.info("Entered edit products control");
		ModelAndView mv=new ModelAndView();
         Products product=new Products();
         product.setPrid(Integer.parseInt(request.getParameter("prid")));
         product.setBrand(request.getParameter("brand"));
         product.setGender(request.getParameter("gender"));
         product.setPrcategory(request.getParameter("prcategory"));
		 product.setPrname(request.getParameter("prname"));
		 product.setPrprice(Float.parseFloat(request.getParameter("prprice")));
		if(dao.editproduct(product)!=null) {
			mv.setViewName("ManProducts.jsp");
		}
		return mv;	
}  
	
	// deleteing product
	@RequestMapping("/DeleteProduct")
	public ModelAndView deleteProduct(HttpServletRequest request,HttpServletResponse reponse) {
		log.info("Entered dewlete products control");
		ModelAndView mv=new ModelAndView();
         Products product=new Products();
         product.setPrid(Integer.parseInt(request.getParameter("prid")));
         dao.deleteproduct(product);
         mv.setViewName("ManProducts.jsp");
         return mv;	
}
	
	// View products for shopping
	@RequestMapping("/Shopping")
	public ModelAndView shopping(HttpServletRequest request,HttpServletResponse reponse) {
		log.info("Entered get shopping control");
		ModelAndView mv=new ModelAndView();
		
		List<Products> products= dao.getallproducts();
		 if(products!=null) {
			 log.info("going to shopping display");
			 
			 mv.setViewName("shoppingdisplay.jsp");
			 mv.addObject("products", products);
			 
		 }
		 else {
			 mv.setViewName("failure.jsp");
		 }
		
	return mv;
}
	
	
	
	// add to cart
	@RequestMapping("/addtocart")
	public String addToCart(HttpServletRequest request,HttpServletResponse response) {
		log.info("Entered add to cart control");
		GlobalCart.cart.add(dao.getProductbyid(Integer.parseInt(request.getParameter("prid"))));
		return "redirect:/Shopping";
		
		
	}
	   
	   // view cart

   @RequestMapping("/ViewCart")
   public  void viewcart(HttpServletResponse response) {
	   log.info("Entered view to cart control");
	   for(Products p:GlobalCart.cart) {
		   try {
		   response.getWriter().write(p.getPrname());
		   }catch(Exception e) {
			   System.out.println(e);
		   }
		   }
	   
   }
   
	// Get all Customers
	@RequestMapping("/ViewCustomers")
	public ModelAndView GetCustomerslist(HttpServletRequest request,HttpServletResponse reponse) {
		log.info("Entered get view customers control");
		ModelAndView mv=new ModelAndView();
		
		List<User> users= dao.getcustomerlist();
		 if(users!=null) {
			 mv.setViewName("displaycustomers.jsp");
			 mv.addObject("users",users);
		 }
		 else {
			 mv.setViewName("failure.jsp");
		 }
		
	return mv;
}
     
	// Delete Customer
	@RequestMapping("/DeleteCustomer")
	public String DeleteCustomer(HttpServletRequest request,HttpServletResponse reponse) {
		log.info("Entered get delete customer control");

		dao.deletecustomer(Integer.parseInt(request.getParameter("id")));
		
		return "redirect:/ViewCustomers";
	  
	}
	
	
	
}