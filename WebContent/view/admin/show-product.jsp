<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");

if (session.getAttribute("admin-username") == null) {
	response.sendRedirect(request.getContextPath() + "/admin/login");
}
%>
<!-- Start header section -->
<jsp:include page="./header/header.jsp" flush="true" />
<div class="content-wrapper">
	<div class="container-fluid">

		<div class="row mt-3">
			<div class="col-lg-12">
				<button class="add-catalog">
					<a href="${pageContext.request.contextPath}/admin/product/add">Thêm
						sản phẩm</a>
				</button>
			</div>
			<div class="col-lg-12">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">List Products</h5>
						<div class="table-responsive">
							<table class="table table-striped">
								<thead>
									<tr>
										<th scope="col">#</th>
										<th scope="col">Name</th>
										<th scope="col">Image</th>
										<th scope="col">Topic</th>
										<th scope="col">Prices</th>
										<th scope="col">Status</th>
										<th scope="col">Sale</th>
										<th scope="col">Created Day</th>
										<th scope="col">Action</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${productlist}" var="product">
										<tr>
											<th scope="row">${product.id }</th>
											<td>${product.name }</td>
											<td><img
												style="width: 110px; height: 67px; object-fit: cover; border: 1px solid #fff;"
												src="${pageContext.request.contextPath}/view/client/assets/images/products/img-test/${product.image_link}"
												alt="${product.name}"></td>
											<td>${product.catalog_id }</td>
											<td>${product.price }</td>
											<td><c:choose>
													<c:when test="${product.status == 1}">
														<c:out value="On" />
													</c:when>
													<c:otherwise>
														<c:out value="Out" />
													</c:otherwise>
												</c:choose></td>
											<td>${product.discount }%</td>
											<td>${product.created }</td>
											<td>
												<button class="btn btn-danger">
													<a
														href="${pageContext.request.contextPath}/admin/product/delete?id=${product.id}">Remove</a>
												</button>

												<button class="btn btn-success">
													<a
														href="${pageContext.request.contextPath}/admin/product/edit?id=${product.id}">Edit</a>
												</button>
											</td>
										</tr>
									</c:forEach>

								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="overlay toggle-menu"></div>
	</div>
</div>


<jsp:include page="./footer/footer.jsp" flush="true" />