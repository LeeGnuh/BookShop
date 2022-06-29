<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<head>
<title>BOOKSHOP | THANH TOÁN</title>
</head>
<body>
	<div class="row">
		<%@include file="/WEB-INF/views/layouts/user/sidebar.jsp" %>
		<div class="span9">
			<ul class="breadcrumb">
				<li><a href="index.html">Trang chủ</a> <span class="divider">/</span></li>
				<li class="active">Thanh toán</li>
			</ul>
			
			<h3 >THÔNG TIN THANH TOÁN</h3>
			
			<hr class="soft" />

			<div class="row">
				<div class="span4">
				
						<form:form action="Checkout" method="POST" modelAttribute="bills" class="form-horizontal">
							<div class="control-group">
								<label class="control-label">Họ và tên: <sup>*</sup></label>
								<div class="controls">
									<form:input type="text" placeholder="" path="display_name"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Email: <sup>*</sup></label>
								<div class="controls">
									<form:input type="text" placeholder="" path="user"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Số điện thoại: <sup>*</sup></label>
								<div class="controls">
									<form:input type="text" placeholder="" path="phone"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Địa chỉ: <sup>*</sup></label>
								<div class="controls">
									<form:textarea path="address" rows="5" cols="30"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Ghi chú: <sup>*</sup></label>
								<div class="controls">
									<form:textarea path="note" rows="5" cols="30"/>
								</div>
							</div>
							<div class="control-group">
								<div class="controls">
									<input type="submit" name="submitAccount" value="Thanh toán"
										class="shopBtn exclusive">
								</div>
							</div>
						</form:form>
				</div>
				<div class="span1">&nbsp;</div>
			</div>
		</div>
	</div>
</body>

