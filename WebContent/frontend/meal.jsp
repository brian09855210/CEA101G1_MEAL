<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.mealtype.model.*"%>
<%@ page import="com.meal.model.*"%>
<%@ page import="java.util.List"%>

<%
	MealTypeVO mealTypeVO = (MealTypeVO) request.getAttribute("mealTypeVO");
	MealVO mealVO = (MealVO) request.getAttribute("mealVO");
	MealService mealSvc = new MealService();
%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8" />
<meta name="description" content="Sona Template" />
<meta name="keywords" content="Sona, unica, creative, html" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>Diamond Resort</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap"
	rel="stylesheet" />

<!-- Css Styles -->
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/font-awesome.min.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/elegant-icons.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/flaticon.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/owl.carousel.min.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/nice-select.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/jquery-ui.min.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/slicknav.min.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/template.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/meal.css" type="text/css" />
</head>

<body>
	<div class="black"></div>

	<div class="shopping-cart-box">
		<a class="close-display-box"> <i class="fas fa-window-close"></i>
		</a>

		<div class="display-wrapper">
			<h2 style="text-align: center;">
				<b>購物車</b>
			</h2>
			<div class="shopping-cart-detail">
				<div class="container">
					<div class="row" style="height: 300px;">
						<div class="col-4">
							<h4 style="text-align: center;">心痛的感覺</h4>
						</div>
						<div class="col-4">
							<h4 style="text-align: center;">x</h4>
						</div>
						<div class="col-4">
							<h4 style="text-align: center;">NT$ 99</h4>
						</div>
					</div>
					<div class="row" style="height: 70px;">
						<div class="col-12">
							<button class="display-button" style="margin: 10px auto;"
								type="submit">
								<i class="fas fa-cart-plus"
									style="margin-right: 10px; vertical-align: center;"></i>
								<h5 class="display-button-word">添加 NT$</h5>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Page Preloder -->
	<div id="preloder">
		<img id="preloaderpic"
			src="${pageContext.request.contextPath}/img/loading.png" />
		<div class="loader"></div>
	</div>

	<!-- Offcanvas Menu Section Begin -->
	<div class="offcanvas-menu-overlay"></div>
	<div class="canvas-open">
		<i class="icon_menu"></i>
	</div>
	<div class="offcanvas-menu-wrapper">
		<div class="canvas-close">
			<i class="icon_close"></i>
		</div>
		<div class="search-icon search-switch">
			<i class="icon_search"></i>
		</div>
		<div class="header-configure-area">
			<div class="language-option">
				<img src="img/flag.jpeg" alt="" /> <span>TW <i
					class="fa fa-angle-down"></i></span>
			</div>
			<a href="#" class="bk-btn">立刻訂房</a>
		</div>
		<nav class="mainmenu mobile-menu">
			<ul>
				<li><a href="./pages.html" class="nav-event">會員中心</a>
					<ul class="dropdown">
						<li><a href="./room-details.html">個人檔案</a></li>
						<li><a href="./blog-details.html">我的假期</a></li>
						<li><a href="#">我的足跡</a></li>
					</ul></li>
				<li><a class="nav-event">住客專區</a>
					<ul class="dropdown">
						<li><a href="./activity.html">活動報名</a></li>
						<li><a href="">預約服務</a></li>
						<li><a href="">訂購餐點</a></li>
					</ul></li>
				<li><a href="shop.html" class="nav-evnet">戴蒙商城</a></li>
				<li><a class="nav-event" href="./rooms.html">渡假空間</a>
					<ul class="dropdown">
						<li><a href="#">戴蒙經典房</a></li>
						<li><a href="#">豪華蜜月房</a></li>
						<li><a href="#">奢華海景房</a></li>
						<li><a href="#">波賽頓套房</a></li>
						<li><a href="#">公共空間</a></li>
					</ul></li>
				<li><a class="nav-event" href="./pages.html">精彩活動</a>
					<ul class="dropdown">
						<li><a href="./room-details.html">陸上活動</a></li>
						<li><a href="./room-details.html">海上活動</a></li>
						<li><a href="./room-details.html">網紅行程</a></li>
					</ul></li>
				<li><a href="" class="nav-event">會員登入</a></li>
				<li><a href="" class="nav-event"
					style="color: rgb(240, 218, 162)">加入會員</a></li>
			</ul>
		</nav>
		<div id="mobile-menu-wrap"></div>
		<div class="top-social">
			<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
				class="fa fa-twitter"></i></a> <a href="#"><i
				class="fa fa-tripadvisor"></i></a> <a href="#"><i
				class="fa fa-instagram"></i></a>
		</div>
		<ul class="top-widget">
			<li><i class="fa fa-phone"></i> (12) 345 67890</li>
			<li><i class="fa fa-envelope"></i> info.colorlib@gmail.com</li>
		</ul>
	</div>
	<!-- Offcanvas Menu Section End -->

	<!-- Header Section Begin -->
	<header class="header-section nav-fixed">
		<div class="menu-item">
			<div class="container">
				<div class="row">
					<div class="col-lg-3">
						<div class="logo">
							<a href="./index.html"> <img
								src="${pageContext.request.contextPath}/img/logo.png" alt="" />
							</a>
						</div>
					</div>
					<div class="col-lg-9">
						<div class="nav-menu">
							<nav class="mainmenu">
								<ul>
									<li class="active"><a href="index.html">回首頁</a></li>
									<li><a href="" class="nav-evnet">您的訂單</a></li>
									<li><a class="nav-event"> <i
											class="fas fa-shopping-cart shopping-cart"
											style="font-size: 20px"></i>
									</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- Header Section End -->

	<div class="body-wrapper">
		<div class="img-slide">
			<div class="container">
				<div class="row">
					<div class="col">
						<div id="carouselExampleIndicators" class="carousel slide"
							data-ride="carousel">
							<div class="carousel-inner" role="listbox">
								<div class="carousel-item active">
									<img class="d-block w-100 img-box"
										src="${pageContext.request.contextPath}/img/food.jpg"
										alt="First slide">
								</div>
								<div class="carousel-item ">
									<img class="d-block w-100 img-box"
										src="${pageContext.request.contextPath}/img/food-2.jpg "
										alt="Second slide ">
								</div>
								<div class="carousel-item ">
									<img class="d-block w-100 img-box"
										src="${pageContext.request.contextPath}/img/food-3.jpg "
										alt="third slide ">
								</div>
								<div class="carousel-item ">
									<img class="d-block w-100 img-box"
										src="${pageContext.request.contextPath}/img/food-4.jpg "
										alt="fourth slide ">
								</div>
							</div>
							<a class="carousel-control-left"
								href="#carouselExampleIndicators" role="button"
								data-slide="prev"> <span class="carousel-control-prev-icon"
								aria-hidden="true"></span> <span class="sr-only">Previous</span>
							</a> <a class="carousel-control-right"
								href="#carouselExampleIndicators" role="button"
								data-slide="next"> <span class="carousel-control-next-icon"
								aria-hidden="true"></span> <span class="sr-only">Next</span>
							</a>
							<ol class="carousel-indicators ">
								<li data-target="#carouselExampleIndicators " data-slide-to="0 "
									class="active "></li>
								<li data-target="#carouselExampleIndicators " data-slide-to="1 "></li>
								<li data-target="#carouselExampleIndicators " data-slide-to="2 "></li>
								<li data-target="#carouselExampleIndicators " data-slide-to="3 "></li>
							</ol>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="wrapper ">
			<div class="container ">
				<div class="row ">
					<div class="col-lg-3 type-wrapper nav-fixed-type ">
						<div id="list type-list " class="list-group ">
							<jsp:useBean id="mealTypeSvc" scope="page"
								class="com.mealtype.model.MealTypeService" />
							<c:forEach var="mealTypeVO" items="${mealTypeSvc.all}"
								varStatus="i">
								<a class="list-group-item list-group-item-action "
									href="#list-item-${i.index}">
									<div class="type-box ">
										<h4 class="type-title ">${mealTypeVO.type_name}</h4>
									</div>
								</a>
							</c:forEach>
						</div>
					</div>

					<div class=" col-lg-9 card-wrapper ">
						<div data-spy="scroll " data-target="#list " data-offset="0"
							class="scrollspy-example ">
							<c:forEach var="mealTypeVO" items="${mealTypeSvc.all}"
								varStatus="j">

								<h2 class="title " id="list-item-${j.index}"
									style="visibility: hidden;">${mealTypeVO.type_name}</h2>
								<hr>
								<h2 class="title ">${mealTypeVO.type_name}</h2>
								<div class="row ">
									<jsp:useBean id="mealSvc" scope="page"
										class="com.meal.model.MealService" />
									<c:forEach var="mealVO" items="${mealSvc.all}">
										<c:if
											test="${(mealVO.meal_type_no == mealTypeVO.meal_type_no) and (mealVO.meal_status == 1)}">


											<div class="col-lg-4 card-box">
												<a style="outline: none;">
													<div class=" card ">
														<img class="card-img-top img-fluid img-fixed"
															src="${pageContext.request.contextPath}/MealServlet?action=view_mealpic&meal_no=${mealVO.meal_no}"
															alt="Card image cap ">
														<div class="card-body ">
															<h4 class="card-title ">${mealVO.meal_name}</h4>
															<p class="card-text ">${mealVO.meal_info}</p>
															<button class="button btn-block"
																style="margin-top: 20px;">加入購物車</button>
														</div>
													</div>
												</a>
											</div>


										</c:if>
									</c:forEach>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
		<footer class="footer-section main-footer ">
			<div class="copyright-option ">
				<div class="container ">
					<div class="row ">
						<div>
							<div class="co-text ">
								<p>
									Copyright &copy;
									<script>
										document
												.write(new Date().getFullYear());
									</script>
									All rights reserved | This template is made with <i
										class="fa fa-heart " aria-hidden="true "></i> by <a
										href="https://colorlib.com " target="_blank ">Colorlib</a>
									<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</footer>
	</div>

	<div class="display-box">
		<a class="close-display-box"> <i class="fas fa-window-close"></i>
		</a>
		<div class="display-wrapper">
			<div class="display-img-word">
				<div class="container">
					<div class="row">
						<div class="col-lg-6 display-img-box">
							<img
								src="${pageContext.request.contextPath}/MealServlet?action=view_mealpic&<%= mealSvc.getOnePic(meal_no) %>"
								id="display-img-box" style="width: 100%; height: 100%;">
						</div>
						<div class="col-lg-6 display-word-box">
							<h2 class="display-word-title" id="display-word-title">${mealVO.meal_name}</h2>
							<h4 class="display-word-info" id="display-word-info">${mealVO.meal_info}</h4>
							<h4 class="display-word-price" id="display-word-price">${mealVO.price}</h4>
						</div>
					</div>
					<div class="row" style="height: 70px;">
						<div class="col-lg-6">
							<i class="fas fa-minus-square display-icon-minus"></i> <input
								type="text" value=1 class="display-qty"
								style="margin: 6% 3%; border-radius: 5px;"
								oninput="if(value<1)value=1"> <i
								class="fas fa-plus-square display-icon-plus"></i>
						</div>
						<div class="col-lg-6">
							<button class="display-button" type="submit">
								<i class="fas fa-cart-plus" style="margin-right: 10px;"></i>
								<h5 class="display-button-word">加入購物車</h5>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



	<!-- Footer Section Start -->

	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<script
		src="${pageContext.request.contextPath}/js/jquery-3.5.1.min.js "></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js "></script>
	<script
		src="${pageContext.request.contextPath}/js/jquery.nice-select.min.js "></script>
	<script src="${pageContext.request.contextPath}/js/jquery-ui.min.js "></script>
	<script src="${pageContext.request.contextPath}/js/jquery.slicknav.js "></script>
	<script
		src="${pageContext.request.contextPath}/js/owl.carousel.min.js "></script>
	<script src="${pageContext.request.contextPath}/js/template.js "></script>
	<script src="${pageContext.request.contextPath}/js/sweetalert.js "></script>
	<script src="${pageContext.request.contextPath}/js/meal.js "></script>
	<script src="${pageContext.request.contextPath}/js/scrollspy.js "></script>
</body>

</html>