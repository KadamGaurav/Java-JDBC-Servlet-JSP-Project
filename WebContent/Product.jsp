<%@ page language="java" contentType="text/html"%>
<%@ include file="CommonHeader.jsp"%>

<br/><br/><br/><br/>




<div class="container">
<div class="row justify-content-center">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="card-header">Add New Product</div>
                            <div class="card-body">

                                <form class="form-horizontal" method="post" action="ProductController">

                                    <div class="form-group">
                                        <label for="productName" class="cols-sm-2 control-label">Product Name</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                <input type="text" class="form-control" name="productName" id="productName" placeholder="Enter the Product Name" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="price" class="cols-sm-2 control-label">Price</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                                                <input type="text" class="form-control" name="price" id="price" placeholder="Enter the Price" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="desc" class="cols-sm-2 control-label">Description</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                                <textarea cols="30" rows="5" class="form-control" name="desc" id="desc" placeholder="Enter Product Description" required></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="stock" class="cols-sm-2 control-label">Stock</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                                <input type="text" class="form-control" name="stock" id="stock" placeholder="Enter Current Stock" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="category" class="cols-sm-2 control-label">Category</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                                <select name="category" class="form-control" id="category" required>
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
                                                <select name="supplier" class="form-control" id="supplier" required>
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
                                        <input type="submit" value="Add New Product"/>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
</div>



<!-- 

<form action="ProductController" method="post">
<table>
	<tr bgcolor="gray">
		<td colspan="2">
			<h2>
				<font face="monotype corsiva" color="blue" size="5">Product Info</font>
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
		<td>Product Name</td>
		<td><input type="text" name="productName" required/></td>
	</tr>
	<tr>
		<td>Price</td>
		<td><input type="text" name="price" required/></td>
	</tr>
	<tr>
		<td>Description</td>
		<td><textarea cols="30" rows="5" name="desc" required></textarea></td>
	</tr>
	<tr>
		<td>Stock</td>
		<td><input type="text" name="stock" required/></td>
	</tr>
	<tr>
		<td>Category</td>
		<td><select name="category" required>
			<option value="Mobile">Mobile</option>
			<option value="PenDrive">PenDrive</option>
			<option value="HardDisk">HardDisk</option>
			<option value="Tripod">Tripod</option>
		</select></td>
	</tr>
	<tr>
		<td>Supplier</td>
		<td><select name="supplier" required>
			<option value="CloudRetail">Cloud Retail</option>
			<option value="abcincorp">ABC Incorporated</option>
			<option value="CloudMap">Cloud Map</option>
			<option value="bigc">Big C</option>
		</select></td>
	</tr>
	<tr bgcolor="gray">
		<td colspan="2">
		<input type="submit" value="Add New Product"/>
	</td>
	</tr>
</table>
</form>
 -->

</body>
</html>