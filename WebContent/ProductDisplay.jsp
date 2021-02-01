<%@ page language="java" contentType="text/html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="CommonHeader.jsp" %>

<br /><br /><br /><br />


<div class="container">
	<div class="row">
		
        
        <div class="col-md-12">
        <h4>List of all Products</h4>
        <div class="table-responsive">

                
              <table id="mytable" class="table table-bordred table-striped">              
                   <thead>                   
	                   <th>Product Id</th>
	                   <th>Product Name</th>
	                   <th>Price</th>
	                   <th>Product Description</th>
	                   <th>Stock</th>
	                   <th>Category</th>                      
	                   <th>Supplier</th>
	                   <th>Manage</th>
	                   <th>Manage</th>
                   </thead>                   
                   <tbody>
    					<c:forEach items="${productList}" var="product">
					    <tr>
					    
					    <td>${product.productId}</td>
						<td>${product.productName}</td>
						<td>${product.price}</td>
						<td>${product.description}</td>
						<td>${product.stock}</td>
						<td>${product.category}</td>
						<td>${product.supplier}</td>
						<td>
							<a href="DeleteProductController?productid=${product.productId}">Delete</a>
						</td>
						<td>
							<a href="UpdateProductController?productId=${product.productId}">Update</a>
						</td>
					    </tr>
    					</c:forEach>
    				</tbody>
    		</table>
    
   		</div>
      </div>
     </div>
   </div>

<!-- 
<table align="center" cellspacing="4" cellpadding="4">
	<tr bgcolor="blue">
		<td> Product Id</td>
		<td> Product Name</td>
		<td> Price</td>
		<td> Product Description</td>
		<td> Stock</td>
		<td> Category</td>
		<td> Supplier</td>
		<td> Manage</td>
		<td> Manage</td>
	</tr>
	
	<c:forEach items="${productList}" var="product">
		<tr bgcolor="pink">
			<td>${product.productId}</td>
			<td>${product.productName}</td>
			<td>${product.price}</td>
			<td>${product.description}</td>
			<td>${product.stock}</td>
			<td>${product.category}</td>
			<td>${product.supplier}</td>
			<td>
				<a href="DeleteProductController?productid=${product.productId}">Delete</a>
			</td>
			<td>
				<a href="UpdateProductController?productId=${product.productId}">Update</a>
			</td>
		</tr>
	</c:forEach>
</table>
 -->

</body>
</html>






