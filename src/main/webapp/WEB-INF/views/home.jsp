<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<jsp:include page="css-header.jsp"></jsp:include>
<jsp:include page="script-header.jsp"></jsp:include>
<title>Home</title>
</head>
<body style="background-color: #f7f7f7">
	<jsp:include page="header-user.jsp"></jsp:include>
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12"
				style='height: 400px; background-size: 100% 100%;background-image: url(<c:url value="/resources/images/uploads/background.jpeg"></c:url>)'>

			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<h2>
					HOT <b style="margin-left: 10px">DEAL</b>
				</h2>
				<div id="myCarousel" class="carousel slide" data-ride="carousel"
					data-interval="0">
					<!-- Carousel indicators -->
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
					</ol>
					<!-- Wrapper for carousel items -->
					<div class="carousel-inner">
						<div class="item carousel-item active">
							<div class="row">
								<c:forEach var="product" items="${lastest1}" varStatus="loop">
									<div class="col-sm-3">
										<div class="thumb-wrapper">
											<div class="img-box">
												<img
													src='<c:url value="/resources/images/uploads/${product.image }"></c:url>'
													class="img-responsive img-fluid" alt="">
											</div>
											<div class="thumb-content">
												<h4>${product.name}</h4>
												<p class="item-price">
													<strike>${product.price}</strike> <span>${product.currentPrice}</span>
												</p>
												<div class="star-rating">
													<ul class="list-inline">
														<li class="list-inline-item"><i class="fa fa-star"></i></li>
														<li class="list-inline-item"><i class="fa fa-star"></i></li>
														<li class="list-inline-item"><i class="fa fa-star"></i></li>
														<li class="list-inline-item"><i class="fa fa-star"></i></li>
														<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
												<div>
													<a href='<c:url value="/product?id=${product.id }"></c:url>' class="btn btn-primary">Chi tiết</a>
													<a href="#" class="btn btn-primary">Thêm giỏ hàng</a>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>

						<div class="item carousel-item">
							<div class="row">
								<c:forEach var="product" items="${lastest2}" varStatus="loop">
									<div class="col-sm-3">
										<div class="thumb-wrapper">
											<div class="img-box">
												<img
													src='<c:url value="/resources/images/uploads/${product.image }"></c:url>'
													class="img-responsive img-fluid" alt="">
											</div>
											<div class="thumb-content">
												<h4>${product.name}</h4>
												<p class="item-price">
													<strike>${product.price}</strike> <span>${product.price}</span>
												</p>
												<div class="star-rating">
													<ul class="list-inline">
														<li class="list-inline-item"><i class="fa fa-star"></i></li>
														<li class="list-inline-item"><i class="fa fa-star"></i></li>
														<li class="list-inline-item"><i class="fa fa-star"></i></li>
														<li class="list-inline-item"><i class="fa fa-star"></i></li>
														<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
													</ul>
												</div>
												<a href="#" class="btn btn-primary">Add to Cart</a>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>

					<!-- Carousel controls -->
					<a class="carousel-control left carousel-control-prev"
						href="#myCarousel" data-slide="prev"> <i
						class="fa fa-angle-left"></i>
					</a> <a class="carousel-control right carousel-control-next"
						href="#myCarousel" data-slide="next"> <i
						class="fa fa-angle-right"></i>
					</a>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12">
				<h2>
					SẢN PHẨM <b>MỚI VỀ</b>
				</h2>
				<div class="row">
					<c:forEach var="product" items="${lastest1}" varStatus="loop">
						<div class="col-sm-3" style="text-align: center;">
							<div class="thumb-wrapper">
								<a href="#">
									<div class="img-box">
										<img
											src='<c:url value="/resources/images/uploads/${product.image }"></c:url>'
											class="img-responsive img-fluid" alt="">
									</div>
								</a>

								<div class="thumb-content">
									<a href="#" style="color: black">
										<h4>${product.name}</h4>
									</a>

									<p class="item-price">
										<strike>${product.price}</strike> <span>${product.currentPrice}</span>
									</p>
									<div class="star-rating">
										<ul class="list-inline">
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star"></i></li>
											<li class="list-inline-item"><i class="fa fa-star-o"></i></li>
										</ul>
									</div>
									<a href="#" class="btn btn-primary">Add to Cart</a>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>

			</div>

		</div>
		
		<jsp:include page="footer-user.jsp"></jsp:include>
</body>

<style type="text/css">
body {
	font-family: "Open Sans", sans-serif;
	margin-top: 0px
}

h2 {
	color: #000;
	font-size: 26px;
	font-weight: 300;
	text-align: center;
	text-transform: uppercase;
	position: relative;
	margin: 30px 0 80px;
}

h2 b {
	color: #ffc000;
}

h2::after {
	content: "";
	width: 100px;
	position: absolute;
	margin: 0 auto;
	height: 4px;
	background: rgba(0, 0, 0, 0.2);
	left: 0;
	right: 0;
	bottom: -20px;
}

.carousel {
	margin: 50px auto;
	padding: 0 70px;
}

.carousel .item {
	min-height: 330px;
	text-align: center;
	overflow: hidden;
}

.carousel .item .img-box {
	height: 160px;
	width: 100%;
	position: relative;
}

.carousel .item img {
	max-width: 100%;
	max-height: 100%;
	display: inline-block;
	position: absolute;
	bottom: 0;
	margin: 0 auto;
	left: 0;
	right: 0;
}

.carousel .item h4 {
	font-size: 18px;
	margin: 10px 0;
}

.carousel .item .btn {
	color: #333;
	border-radius: 0;
	font-size: 11px;
	text-transform: uppercase;
	font-weight: bold;
	background: none;
	border: 1px solid #ccc;
	padding: 5px 10px;
	margin-top: 5px;
	line-height: 16px;
}

.carousel .item .btn:hover, .carousel .item .btn:focus {
	color: #fff;
	background: #000;
	border-color: #000;
	box-shadow: none;
}

.carousel .item .btn i {
	font-size: 14px;
	font-weight: bold;
	margin-left: 5px;
}

.carousel .thumb-wrapper {
	text-align: center;
}

.carousel .thumb-content {
	padding: 15px;
}

.carousel .carousel-control {
	height: 100px;
	width: 40px;
	background: none;
	margin: auto 0;
	background: rgba(0, 0, 0, 0.2);
}

.carousel .carousel-control i {
	font-size: 30px;
	position: absolute;
	top: 50%;
	display: inline-block;
	margin: -16px 0 0 0;
	z-index: 5;
	left: 0;
	right: 0;
	color: rgba(0, 0, 0, 0.8);
	text-shadow: none;
	font-weight: bold;
}

.carousel .item-price {
	font-size: 13px;
	padding: 2px 0;
}

.carousel .item-price strike {
	color: #999;
	margin-right: 5px;
}

.carousel .item-price span {
	color: #86bd57;
	font-size: 110%;
}

.carousel .carousel-control.left i {
	margin-left: -3px;
}

.carousel .carousel-control.left i {
	margin-right: -3px;
}

.carousel .carousel-indicators {
	bottom: -50px;
}

.carousel-indicators li, .carousel-indicators li.active {
	width: 10px;
	height: 10px;
	margin: 4px;
	border-radius: 50%;
	border-color: transparent;
}

.carousel-indicators li {
	background: rgba(0, 0, 0, 0.2);
}

.carousel-indicators li.active {
	background: rgba(0, 0, 0, 0.6);
}

.star-rating li {
	padding: 0;
}

.star-rating i {
	font-size: 14px;
	color: #ffc000;
}
</style>
</html>