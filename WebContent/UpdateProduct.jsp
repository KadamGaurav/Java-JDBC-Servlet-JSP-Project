<%@ page language="java" contentType="text/html"%>
<%@ include file="CommonHeader.jsp"%>

<br/><br/><br/><br/>




<div class="container">
<div class="row justify-content-center">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="card-header">Update Product Details</div>
                            <div class="card-body">

                                <form class="form-horizontal" method="post" action="UpdateProductController2">

									<div class="form-group">
                                        <label for="productId" class="cols-sm-2 control-label">Product Id</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                <input type="text" class="form-control" name="productId" id="productId" value="${product.productId}" readonly/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="productName" class="cols-sm-2 control-label">Product Name</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                <input type="text" class="form-control" name="productName" id="productName" value="${product.productName}" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="price" class="cols-sm-2 control-label">Price</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                                                <input type="text" class="form-control" name="price" id="price" value="${product.price}" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="desc" class="cols-sm-2 control-label">Description</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                                <textarea cols="30" rows="5" class="form-control" name="desc" id="desc" value="${product.description}" required>${product.description}</textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="stock" class="cols-sm-2 control-label">Stock</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                                <input type="text" class="form-control" name="stock" id="stock" value="${product.stock}" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="category" class="cols-sm-2 control-label">Category</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                                <select name="category" class="form-control" id="category" value="${product.category}" required>
													<option value="Mobile">Mobile</option>
													<option value="PenDrive">PenDrive</option>
													<option value="HardDisk">HardDisk</option>
													<option value="Tripod">Tripod</option>
												</select>
                                            </div>
                                        </div>
                                    </div> 
                                    <div class="form-group">
                                        <label for="supplier" class="cols-sm-2 control-label">Supplier</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                                <select name="supplier" class="form-control" id="supplier" value="${product.supplier}" required>
													<option value="CloudRetail">Cloud Retail</option>
													<option value="abcincorp">ABC Incorporated</option>
													<option value="CloudMap">Cloud Map</option>
													<option value="bigc">Big C</option>
												</select>
                                            </div>
                                        </div>
                                    </div>   
                                    <div class="form-group ">
                                       <!--  <button type="button" class="btn btn-primary btn-lg btn-block login-button">Register</button> -->
                                        <input type="submit" value="Update Product"/>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
</div>


<!-- 
<form action="UpdateProductController2" method="post">
<table>
	<tr bgcolor="gray">
		<td colspan="2">
			<h2>
				<font face="monotype corsiva" color="blue" size="5">Update Product Info</font>
			</h2>
		</td>
	</tr>
	<tr bgcolor="gray">
		<td colspan="2">
			<h2>
				<font face="monotype corsiva" color="red" size="5">${ErrorInfo}</font>
			</h2>
		</td>
	</tr>
	<tr>
		<td>Product Id</td>
		<td><input type="text" name="productId" value="${product.productId}" readonly/></td>
	</tr>
	<tr>
		<td>Product Name</td>
		<td><input type="text" name="productName" value="${product.productName}" /></td>
	</tr>
	<tr>
		<td>Price</td>
		<td><input type="text" name="price" value="${product.price}"/></td>
	</tr>
	<tr>
		<td>Description</td>
		<td><textarea cols="30" rows="5" name="desc" value="${product.description}" ></textarea></td>
	</tr>
	<tr>
		<td>Stock</td>
		<td><input type="text" name="stock" value="${product.stock}" /></td>
	</tr>
	<tr>
		<td>Category</td>
		<td><select name="category" value="${product.category}" >
			<option value="Mobile">Mobile</option>
			<option value="PenDrive">PenDrive</option>
			<option value="HardDisk">HardDisk</option>
			<option value="Tripod">Tripod</option>
		</select></td>
	</tr>
	<tr>
		<td>Supplier</td>
		<td><select name="supplier" value="${product.supplier}" >
			<option value="CloudRetail">Cloud Retail</option>
			<option value="abcincorp">ABC Incorporated</option>
			<option value="CloudMap">Cloud Map</option>
			<option value="bigc">Big C</option>
		</select></td>
	</tr>
	<tr bgcolor="gray">
		<td colspan="2">
		<input type="submit" value="Update Product"/>
	</td>
	</tr>
</table>
</form>
 -->

</body>
</html>