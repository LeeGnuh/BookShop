<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>

<div id="sidebar" class="span3">
			<div class="well well-small">
				<ul class="nav nav-list">
					<c:forEach var="item" items="${ categorys }">
						<li><a href='<c:url value="/Product/${ item.id }"/>'><span
								class="icon-chevron-right"></span> ${ item.name } </a></li>
					</c:forEach>
					<li><a class="totalInCart" href="<c:url value="/ListCart"/>"><strong>Total
								Amount <span class="badge badge-warning pull-right"
								style="line-height: 18px;"> <fmt:formatNumber
										type="number" groupingUsed="true" value="${ TotalPriceCart }" />
									₫
							</span>
						</strong></a></li>
				</ul>
			</div>
		</div>