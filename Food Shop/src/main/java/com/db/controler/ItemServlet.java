package com.db.controler;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.db.utils.ItemDAO;


@WebServlet("/")
public class ItemServlet extends HttpServlet {
	private static final long serialVersionUID =1L;
	private ItemDAO itemDAO;
	
      public void init() {
    	  itemDAO = new ItemDAO();
      }
      protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
    	  doGet(request, response);
      }
      
      protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	  String action = request.getServletPath();
    	  
    	  try {
    		  switch (action) {
    		  case "/new" :
    			  showNewForm(request, response);
    			  break;
    		  case "/insert" :
    		  insertItem(request, response);
    		  break;
    		  case "/delete" :
    			  deleteItem(request, response);
    			  break;
    		  case "/update" :
    			  updateItem(request, response);
    			  break;
    		  case "/edit" :
    			  showeditForm(request, response);
    			  default:
    				  listItem(request, response);
    				  break;
    			  
    		  }
    	  }catch (SQLException ex) {
    		  
    	  }
      }
}
    	 
