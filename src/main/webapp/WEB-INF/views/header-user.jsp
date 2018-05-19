<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<div class="container" >
	<nav class="navbar " ng-app="headerManager"  style="background-color: #e2e0e0">
		<div class="navbar-header" style="width : 150px">
			<a  class="navbar-brand" href="${pageContext.request.contextPath}">
				<img style="width: 100%; height: 100%" alt="" src='<c:url value = "/resources/images/uploads/cosmetics-logo.png"></c:url>'>
			</a>
		</div>
		<ul class="nav navbar-nav">
			<li class=""><a href="${pageContext.request.contextPath}">Trang chủ</a></li>
			<li class="dropdown" ng-controller="categoryController"><a
				class="dropdown-toggle" data-toggle="dropdown" href="#">Danh mục
					<span class="caret"></span>
			</a>
				<ul class="dropdown-menu">
					<li ng-repeat="category in categories"><a href="#">{{category.name}}</a></li>
				</ul></li>
			<li class="dropdown" ng-controller="supplierController"><a
				class="dropdown-toggle" data-toggle="dropdown" href="#">Thương
					hiệu <span class="caret"></span>
			</a>
				<ul class="dropdown-menu">
					<li ng-repeat="supplier in suppliers"><a href="#">{{supplier.name}}</a></li>
				</ul></li>
			<li><a href="#">Liên hệ</a></li>
			<li><a href="#">Thông tin</a></li>
		</ul>
		
		<ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span style="color: RED" class="glyphicon glyphicon-shopping-cart"></span><span id="count" style="margin-right: 5px; margin-left: 5px; color: RED">2</span></a></li>
<!--       <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li> -->
    </ul>
	</nav>
</div>

