<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${product.name }</title>
</head>
<body>
	<jsp:include page="css-header.jsp"></jsp:include>
	<jsp:include page="script-header.jsp"></jsp:include>
	<jsp:include page="header-user.jsp"></jsp:include>
	<div class="container">
		
		<div class="row">
			<div class="col-xs-4 item-photo">
				<img style="max-width: 100%;"
					src='<c:url value="/resources/images/uploads/${product.image }"></c:url>' />
			</div>
			<div class="col-xs-4" style="border: 0px solid gray">
				<!-- Datos del vendedor y titulo del producto -->
				<h3>${product.name }</h3>


				<!-- Precios -->
				<h5 class="title-price">
					<small>Giá gốc</small>
				</h5>
				<strike style="color: RED">${product.price}</strike>

				<h5 class="title-price">
					<small>Giá khuyến mãi</small>
				</h5>
				<h2 style="margin-top: 0px; color: #025ff4">${product.currentPrice}</h2>

				<!-- Detalles especificos del producto -->


				<div class="section" style="padding-bottom: 20px;">
					Danh mục : <a href="#"><span>${product.category.name }</span></a><br>
					Hang san xuat : <a href="#"><span>${product.supplier.name }</span></a>
					<h6 class="title-attr"
						style="margin-top: 30px; margin-bottom: 20px">Nhập số lượng</h6>
					<div>
						<div class="btn-minus">
							<span class="glyphicon glyphicon-minus"></span>
						</div>
						<input value="1" />
						<div class="btn-plus">
							<span class="glyphicon glyphicon-plus"></span>
						</div>
					</div>
				</div>

				<!-- Botones de compra -->
				<div class="section" style="padding-bottom: 20px;">
					<button class="btn btn-success">
						<span style="margin-right: 20px"
							class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>
						Them vao gio hang
					</button>
				</div>
			</div>

			<div class="col-xs-4" style="border: 0px solid gray">
				<h3>Thoong tin chi tiet</h3>
			</div>


		</div>
	</div>


	<jsp:include page="footer-user.jsp"></jsp:include>
</body>
<style>
ul>li {
	margin-right: 25px;
	font-weight: lighter;
	cursor: pointer
}

li.active {
	border-bottom: 3px solid silver;
}

.item-photo {
	display: flex;
	justify-content: center;
	align-items: center;
	border-right: 1px solid #f6f6f6;
}

.menu-items {
	list-style-type: none;
	font-size: 11px;
	display: inline-flex;
	margin-bottom: 0;
	margin-top: 20px
}

.btn-success {
	width: 100%;
	border-radius: 0;
}

.section {
	width: 100%;
	margin-left: -15px;
	padding: 2px;
	padding-left: 15px;
	padding-right: 15px;
	background: #f8f9f9
}

.title-price {
	font-size: 25px;
	margin-top: 30px;
	margin-bottom: 0;
	color: black;
	margin-top: 30px;
}

.title-attr {
	margin-top: 0;
	margin-bottom: 0;
	color: black;
}

.btn-minus {
	cursor: pointer;
	font-size: 7px;
	display: flex;
	align-items: center;
	padding: 5px;
	padding-left: 10px;
	padding-right: 10px;
	border: 1px solid gray;
	border-radius: 2px;
	border-right: 0;
}

.btn-plus {
	cursor: pointer;
	font-size: 7px;
	display: flex;
	align-items: center;
	padding: 5px;
	padding-left: 10px;
	padding-right: 10px;
	border: 1px solid gray;
	border-radius: 2px;
	border-left: 0;
}

div.section>div {
	width: 100%;
	display: inline-flex;
}

div.section>div>input {
	margin: 0;
	padding-left: 5px;
	font-size: 10px;
	padding-right: 5px;
	max-width: 18%;
	text-align: center;
}

.attr, .attr2 {
	cursor: pointer;
	margin-right: 5px;
	height: 20px;
	font-size: 10px;
	padding: 2px;
	border: 1px solid gray;
	border-radius: 2px;
}

.attr.active, .attr2.active {
	border: 1px solid orange;
}

@media ( max-width : 426px) {
	.container {
		margin-top: 0px !important;
	}
	.container>.row {
		padding: 0 !important;
	}
	.container>.row>.col-xs-12.col-sm-5 {
		padding-right: 0;
	}
	.container>.row>.col-xs-12.col-sm-9>div>p {
		padding-left: 0 !important;
		padding-right: 0 !important;
	}
	.container>.row>.col-xs-12.col-sm-9>div>ul {
		padding-left: 10px !important;
	}
	.section {
		width: 104%;
	}
	.menu-items {
		padding-left: 0;
	}
}
</style>

'

</html>