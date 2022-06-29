<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<head>
<title>BOOKSHOP | ĐĂNG KÍ</title>
</head>
<body>
	<div class="row">
		<%@include file="/WEB-INF/views/layouts/user/sidebar.jsp" %>
		<div class="span9">
			<ul class="breadcrumb">
				<li><a href="<c:url value="/"/>">Trang chủ</a> <span class="divider">/</span></li>
				<li class="active">Đăng nhập | Đăng kí</li>
			</ul>
			<h3></h3>
			<hr class="soft" />

			<div class="row">
				<div class="span4">
					<div class="well">
						<h5>TẠO TÀI KHOẢN MỚI</h5>
						<form:form action="Register" method="POST" modelAttribute="user">  
							<div class="control-group">
								<label class="control-label" for="inputEmail">Địa chỉ Email
									</label>
								<div class="controls">
									<form:input type="email" path="user" class="span3" placeholder="Nhập Email"/>  
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputEmail">Mật khẩu
									</label>
								<div class="controls">									
									<form:input type="password" path="password" class="span3" placeholder="Nhập mật khẩu"/>  
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputEmail">Họ và tên
									</label>
								<div class="controls">									
									<form:input type="text" path="display_name" class="span3" placeholder="Nhập tên"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputEmail">Địa chỉ giao hàng
									</label>
								<div class="controls">
									<form:input type="text" path="address" class="span3" placeholder="Nhập địa chỉ"/>
								</div>
							</div>
							<div class="controls">
								<button type="submit" class="btn block">Tạo tài khoản</button>
							</div>
						</form:form>
					</div>
				</div>
				<div class="span1">&nbsp;</div>
				<div class="span4">
					<div class="well">
						<h5>BẠN ĐÃ CÓ TÀI KHOẢN?</h5>
						<h1>${ loginStatus }</h1>
						<form:form action="Login" method="POST" modelAttribute="user">  
							<div class="control-group">
								<label class="control-label" for="inputEmail">Tài khoản</label>
								<div class="controls">		
									<form:input type="email" path="user" class="span3" placeholder="Nhập Email đã đăng kí"/>  
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputPassword">Mật khẩu</label>
								<div class="controls">
									<form:input type="password" path="password" class="span3" placeholder="Nhập mật khẩu"/>  
								</div>
							</div>
							<div class="control-group">
								<div class="controls">
									<button type="submit" class="defaultBtn">Đăng nhập</button>
									<a href="#">Não cá vàng?</a>
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

