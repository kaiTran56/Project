<%@page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Start header section -->
<jsp:include page="./header/header.jsp" flush="true" />
<div class="content-wrapper">
	<div class="container-fluid">

		<div class="row mt-3">
			<div class="col-lg-8">
				<div class="card">
					<div class="card-body">
						<div class="card-title">Add Admin</div>
						<hr>
						<form action="${pageContext.request.contextPath}/admin/admin/add"
							method="post">

							<div class="form-group">
								<label for="input-1">Username</label> <input type="text"
									class="form-control" id="input-1" placeholder="Username"
									name="admin-username">
							</div>
							<div class="form-group">
								<label for="input-1">Password</label> <input type="password"
									class="form-control" id="myinput" placeholder="Password"
									name="admin-password"> <input type="checkbox"
									onclick="myFunction1()">show password
								<script>
									function myFunction1() {
										var x = document
												.getElementById("myinput");
										if (x.type === "password") {
											x.type = "text";
										} else {
											x.type = "password";
										}
									}
								</script>
							</div>
							<div class="form-group">
								<label for="input-1">Name </label> <input type="text"
									class="form-control" id="input-1" placeholder="name"
									name="admin-name">
							</div>
							<div class="form-footer">
								<button class="btn btn-danger">
									<i class="fa fa-times"></i><a
										href="${pageContext.request.contextPath}/admin/admin/list">Cancel</a>
								</button>
								<button type="submit" class="btn btn-success">
									<i class="fa fa-check-square-o"></i>Add
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="overlay toggle-menu"></div>
	</div>
</div>

<jsp:include page="./footer/footer.jsp" flush="true" />