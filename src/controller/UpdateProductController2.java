package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateProductController2
 */
@WebServlet("/UpdateProductController2")
public class UpdateProductController2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String productId=request.getParameter("productId");
		String productName=request.getParameter("productName");
		String price=request.getParameter("price");
		String desc=request.getParameter("desc");
		String stock=request.getParameter("stock");
		String category=request.getParameter("category");
		String supplier=request.getParameter("supplier");
		
		model.Product productObj=new model.Product();
		
		productObj.setProductId(Integer.parseInt(productId));
		productObj.setProductName(productName);
		productObj.setPrice(Integer.parseInt(price));
		productObj.setDescription(desc);
		productObj.setStock(Integer.parseInt(stock));
		productObj.setCategory(category);
		productObj.setSupplier(supplier);
		
		try
		{
			dao.ProductDAO productDAO=new dao.ProductDAO();
			
			if(productDAO.updateProduct(productObj))
			{
				request.setAttribute("productList", productDAO.getProductList());
				
				RequestDispatcher dispatcher=request.getRequestDispatcher("ProductDisplay.jsp");
				dispatcher.forward(request, response);
			}
			else
			{
				request.setAttribute("ErrorInfo", "Problem occurred while inserting the product.");
				RequestDispatcher dispatcher=request.getRequestDispatcher("Error.jsp");
				dispatcher.forward(request, response);
			}
		}
		catch(Exception e)
		{
			request.setAttribute("ErrorInfo", "Exception occurred while inserting:"+e.getMessage());
			RequestDispatcher dispatcher=request.getRequestDispatcher("Error.jsp");
			dispatcher.forward(request, response);

		}
	}

}
