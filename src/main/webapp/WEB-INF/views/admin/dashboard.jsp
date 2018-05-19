<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Dashboard</title>


<!--  CSS -->
<jsp:include page="header-css.jsp"></jsp:include>

</head>
<body style="background-color: #FFFFFF">
	<div class="page-container">
		<!--  MENU -->
		<jsp:include page="side-bar-menu.jsp"></jsp:include>


		<div class="left-content">
			<div ng-app="productManager" ng-controller="productController">
				<button type="button" class="btn btn-info btn-lg"
					data-toggle="modal" data-target="#productModal"
					ng-click="showModal();">Thêm mới</button>
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>Mã</th>
							<th>Tên sản phẩm</th>
							<th>Giá sản phẩm</th>
							<th>Giá bán</th>
							<th>Hãng</th>
							<th>Số lượng còn lại</th>
							<th>Ảnh</th>
							<th>Sửa</th>
							<th>Xóa</th>
						</tr>
					</thead>
					<tbody>
						<tr ng-repeat="product in products">
							<td>{{product.id}}</td>
							<td>{{product.name}}</td>
							<td>{{product.price}}</td>
							<td>{{product.currentPrice}}</td>
							<td>{{product.supplier.name}}</td>
							<td>{{product.quantity}}</td>
							<td><img style="width: 50px; height: 50px"
								src='<c:url value = "/resources/images/uploads/{{product.image}}"></c:url>' /></td>
							<td><button class="btn btn-info btn-sm">
									<i class="fa fa-refresh"></i>
								</button></td>
							<td><button class="btn btn-info btn-sm" data-toggle="modal"
									data-target="#productModal" ng-click="showModal(product)">
									<i class="fa fa-refresh"></i>
								</button></td>
						</tr>
					</tbody>
				</table>
				<ul class="pagination">
					<li ng-repeat="page in pages" ng-click="loadDataProduct(page)"><a
						href="">{{page}}</a></li>
				</ul>


				<!-- Modal -->
				<div id="productModal" class="modal fade" role="dialog"
					ng-model="product">
					<div class="modal-dialog">
						<!-- Modal content-->
						<div class="modal-content">

							<!-- header modal -->
							<div class="modal-header">Thêm sản phẩm mới</div>

							<!-- body modal -->
							<div class="modal-body">
								<div class="form-group">
									<label for="txtId">Mã sản phẩm</label> <input class="form-control"
										name="txtId" id="txtId" ng-model="currentProduct.id" readonly>
								</div>

								<div class="form-group">
									<label for="txtName">Tên sản phẩm</label> <input class="form-control"
										name="txtName" id="txtName" ng-model="currentProduct.name">
								</div>

								<div class="form-group">
									<label for="txtPrice">Giá gốc</label> <input class="form-control"
										 name="txtPrice" id="txtPrice" ng-model="currentProduct.price">
								</div>
								
								<div class="form-group">
									<label for="txtCurrentPrice">Giá hiện tại</label> <input class="form-control"
										 name="txtCurrentPrice" id="txtCurrentPrice" ng-model="currentProduct.currentPrice">
								</div>

								<div class="form-group">
									<label for="txtQuantity">Số lượng</label> 
									<input class="form-control" name="txtQuantity" id="txtQuantity" ng-model="currentProduct.quantity" type="number" >
								</div>
								
								<div class="form-group">
									<label for="selCategory">Danh mục</label> 
									<select class="form-control" id="selCategory">
										<option ng-repeat="category in categories" ng-value="{{category.id}}" ng-selected = "category.id == currentProduct.categoryId" ng-model="currentProduct.categoryId">{{category.name}}</option>
									</select>
								</div>
								
								<div class="form-group">
									<label for="selSupplier">Danh mục</label> 
									<select class="form-control" id="selSupplier">
										<option ng-repeat="supplier in suppliers" ng-value="{{supplier.id}}" ng-selected = "supplier.id == currentProduct.supplierId" ng-model="currentProduct.supplierId">{{supplier.name}}</option>
									</select>
								</div>
							</div>

							<!-- footer modal -->
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal" ng-click="addProduct()">Close</button>
								<button class="btn btn-primary" href="#" ng-click="clickAction()">Add
									</button>
							</div>
						</div>
					</div>
				</div>


			</div>
		</div>
	</div>


</body>

<!--  JS -->
<jsp:include page="header-js.jsp"></jsp:include>
</html>