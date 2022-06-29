<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title><decorator:title default="Master-Layout"></decorator:title></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Bootstrap styles -->
<link href="<c:url value="/assets/user/css/bootstrap.css"/>"
	rel="stylesheet" />

<!-- Customize styles -->
<link href="<c:url value="/assets/user/style.css"/>" rel="stylesheet" />

<!-- font awesome styles -->
<link
	href="<c:url value="/assets/user/font-awesome/css/font-awesome.css"/>"
	rel="stylesheet" />

<!-- Favicons -->
<link rel="shortcut icon"
	href="<c:url value="/assets/user/ico/favicon.ico"/>" />

<decorator:head></decorator:head>
</head>
<body>
	<!--Upper Header Section-->
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="topNav">
			<div class="container">
				<div class="alignR">
					<c:if test="${ not empty LoginInfo }">
						<a href="#"><span class="icon-user"></span> ${ LoginInfo.display_name }</a>
						<a href="<c:url value="/Logout"/>"><span class="icon-edit"></span>Đăng
							xuất</a>
					</c:if>
					<c:if test="${ empty LoginInfo }">
						<a href="<c:url value="/Register"/>"><span class="icon-edit"></span>Đăng nhập | Đăng
							ký</a>
					</c:if>
					 <a
						href="<c:url value="/ListCart"/>"><span
						class="icon-shopping-cart"></span> ${ TotalQuantyCart } Item(s) -
						<span class="badge badge-warning"> <fmt:formatNumber
								type="number" groupingUsed="true" value="${ TotalPriceCart }" />
							₫
					</span></a>
				</div>
			</div>
		</div>
	</div>

	<!--Lower Header Section-->
	<div class="container">
		<div id="gototop"></div>

		<%@include file="/WEB-INF/views/layouts/user/header.jsp"%>

		<decorator:body />

		<%@include file="/WEB-INF/views/layouts/user/footer.jsp"%>

	</div>


	<a href="#" class="gotop"><i class="icon-double-angle-up"></i></a>
	
	
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="<c:url value="/assets/user/js/jquery.js"/>"></script>
	<script src="<c:url value="/assets/user/js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="/assets/user/js/jquery.easing-1.3.min.js"/>"></script>
	<script
		src="<c:url value="/assets/user/js/jquery.scrollTo-1.4.3.1-min.js"/>"></script>
	<script src="<c:url value="/assets/user/js/shop.js"/>"></script>

	<decorator:getProperty property="page.script"></decorator:getProperty>
</body>
</html>