package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import model.Product;

@WebServlet("/UpdateProductController")
public class UpdateProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   //Error in code
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		String pId=request.getParameter("productId");
		int productId=Integer.parseInt(pId);
		
		dao.ProductDAO productDAO;
		try {
			productDAO = new dao.ProductDAO();
		
		Product product=productDAO.getProductById(productId);
		
		System.out.println(product.getProductId());
		
		if(product!=null)
		{
			request.setAttribute("product", productDAO.getProductById(productId));
			
			RequestDispatcher dispatcher=request.getRequestDispatcher("UpdateProduct.jsp");
			dispatcher.forward(request, response);
		}
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		/*String productName=request.getParameter("productName");
		String price=request.getParameter("price");
		String desc=request.getParameter("desc");
		String stock=request.getParameter("stock");
		String category=request.getParameter("category");
		String supplier=request.getParameter("supplier");
		
		model.Product productObj=new model.Product();
		
		
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

		}*/
	}

}
