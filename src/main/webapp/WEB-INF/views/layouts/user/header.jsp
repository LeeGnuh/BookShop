<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<header id="header">
	<div class="row">
		<div class="span4">
			<h1>
				<a class="logo" href="<c:url value="/Homepage"/>">B<img
					style="height:80px; width:auto"
					src="<c:url value="/assets/user/img/logo/bookLogo.png"/>"
					alt="bootstrap sexy shop">k Shop</a>
				
			</h1>
			<br>
		</div>
		<div class="span4">
			<div class="offerNoteWrapper">
				<h1 class="dotmark">
					<i class="icon-cut"></i> Môn học: Công nghệ JAVA <br> Giảng viên: Vũ Sơn Lâm
											
				</h1>  
			</div>
		</div>
		<div class="span4 alignR">
			<p>
				<br>
				<br> <strong> Sinh viên : Lê Thiên Minh Hùng </strong>
				<br> <strong> Mã sinh viên : 4251190002 </strong>
				<br>
				<br> <strong> </strong>
			</p>
			<span class="btn btn-mini">[ ${ TotalQuantyCart } ] <span
				class="icon-shopping-cart"></span></span> <span
				class="btn btn-warning btn-mini">₫</span> <span class="btn btn-mini">&pound;</span>
			<span class="btn btn-mini">&euro;</span>
		</div>
	</div>
</header>

<!--Navigation Bar Section-->
<div class="navbar">
	<div class="navbar-inner">
		<div class="container">
			<a data-target=".nav-collapse" data-toggle="collapse"
				class="btn btn-navbar"> <span class="icon-bar"></span> <span
				class="icon-bar"></span> <span class="icon-bar"></span>
			</a>
			<div class="nav-collapse">
				<ul class="nav">
					<c:forEach var="item" items="${ menus }" varStatus="index">
						<c:if test="${ index.first }">
							<li class="active"><a href="<c:url value="/${ item.url }"/>">${ item.name } </a></li>
						</c:if>
						<c:if test="${ not index.first }">
							<li class=""><a href="<c:url value="/${ item.url }"/>">${ item.name } </a></li>
						</c:if>
					</c:forEach>
				</ul>
				<form action="#" class="navbar-search pull-left">
					<input type="text" placeholder="Search" class="search-query span2">
				</form>
			</div>
		</div>
	</div>
</div>