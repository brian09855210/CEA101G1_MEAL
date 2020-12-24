<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.mealorderdetail.model.*"%>

<%
	MealOrderDetailVO mealOrderDetailVO = (MealOrderDetailVO) request.getAttribute("mealOrderDetailVO");
	MealOrderDetailService mealOrderDetailSvc = new MealOrderDetailService();
	List<MealOrderDetailVO> mealOrderDetailList = mealOrderDetailSvc.getAll();
	pageContext.setAttribute("mealOrderDetailList", mealOrderDetailList);
%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.31.3/css/theme.metro-dark.min.css" />
<link href='${pageContext.request.contextPath}/css/datatables.min.css'
	rel='stylesheet' />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/backend-meal.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.tablesorter.min.js"></script>
<script src='${pageContext.request.contextPath}/js/datatables.min.js'></script>
<title>showAllMealOrderDetail</title>
</head>

<body>
	<h2>所有餐點訂單細項 - All Meal Order Detail</h2>
	<hr>
	<%-- 	<c:if test="${not empty errorMsgs}"> --%>
	<!-- 		<font style="color: red">請修正以下錯誤:</font> -->
	<!-- 		<ul> -->
	<%-- 			<c:forEach var="message" items="${errorMsgs}"> --%>
	<%-- 				<li style="color: red">${message}</li> --%>
	<%-- 			</c:forEach> --%>
	<!-- 		</ul> -->
	<%-- 	</c:if> --%>
	<c:choose>
		<c:when test="${mealOrderDetailList.size() > 0}">
			<table id="myTable" class="table tablesorter">
				<thead>
					<tr>
						<th scope="col">訂單編號</th>
						<th scope="col">餐點編號</th>
						<th scope="col">單價</th>
						<th scope="col">數量</th>
						<th scope="col">修改</th>
					</tr>
				</thead>
				<tbody>
					<%-- 		<%@ include file="page1.file" %> --%>
					<c:forEach var="mealOrderDetailVO" items="${mealOrderDetailList}">
						<tr>
							<td style="font-size: 16px; text-align: center; padding-top: 3%;">${mealOrderDetailVO.meal_odno}</td>
							<td style="font-size: 16px; text-align: center; padding-top: 3%;">${mealOrderDetailVO.meal_no}</td>
							<td style="font-size: 16px; text-align: center; padding-top: 3%;">${mealOrderDetailVO.price}</td>
							<td style="font-size: 16px; text-align: center; padding-top: 3%;">${mealOrderDetailVO.qty}</td>
							<td><input type="hidden" name="meal_odno"
								value="${mealOrderDetailVO.meal_odno}">
								<button type="submit" class="update btn btn-info">修改</button></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:when>
		<c:otherwise>
			<h3>查無資料</h3>
		</c:otherwise>
	</c:choose>
	<%-- 	<%@ include file="page2.file" %> --%>

	<form class="update-display" method="post"
		action="${pageContext.request.contextPath}/MealOrderDetailServlet">
		<div class="update-display-div">
			<div class="close-icon">
				<i class="fas fa-times icon"></i>
			</div>
			<h3>
				訂單編號：<b id="update-mealodno"></b>
			</h3>

			<h3>
				餐點編號：<b id="update-mealno"></b>
			</h3>

			<label for="update-qty"><p>
					<b>數量</b>
				</p> <input type="text" id="update-qty" name="update-qty"
				placeholder="請輸入數量" required /> </label> <input type="hidden" name="action"
				value="update_meal_orderdetail"> <input type="hidden"
				name="update-meal-odno" id="update-mealodno-to-servlet"> <input
				type="hidden" name="update-meal-no" id="update-mealno-to-servlet">
			<button type="submit" class="btn btn-success"
				style="width: 100px; margin: 50px auto; background-color: pink;">更新資料</button>
		</div>
	</form>

	<script>
		$(".update").click(function() {
			$(".update-display").addClass("display-show");
			$(".black").css("display", "block");
			$(".black").click(function() {
				$(".update-display").removeClass("display-show");
				$(".black").css("display", "none");
			})
			let tr = $(this).parents("tr");
			let children = tr.children();
			$("#update-mealodno").text(children.eq(0).text());
			$("#update-mealno").text(children.eq(1).text());
			$("#update-mealodno-to-servlet").val(children.eq(0).text());
			$("#update-mealno-to-servlet").val(children.eq(1).text());
			$("#update-qty").val(children.eq(3).text());
		})

		$(".icon").click(function() {
			let display = $(this).parents(".display-show");
			display.removeClass("display-show");
			$(".black").css("display", "none");
		})

		$("#myTable").tablesorter({
			theme : "metro-dark",
			widgets : [ 'zebra' ]
		});

		$(function() {
			$('#myTable').DataTable();
		});
	</script>

</body>

</html>