package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Product;


@WebServlet("/ViewProductController")
public class ViewProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@SuppressWarnings("unused")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		//Product product=new Product();
		System.out.println("I am in VPC");
		
		try {
			dao.ProductDAO productDAO=new dao.ProductDAO();
			ArrayList<Product> productList=(ArrayList<Product>) productDAO.getProductList();
			
			if(productList!=null)
			{
			request.setAttribute("productList", productDAO.getProductList());
			RequestDispatcher dispatcher=request.getRequestDispatcher("ProductDisplay.jsp");
			System.out.println("I am in if block");
			dispatcher.forward(request, response);
			}
		} 
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

}
