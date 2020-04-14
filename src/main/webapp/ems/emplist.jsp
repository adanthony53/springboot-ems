<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Employees</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/ems/css/style.css" />
	</head>
	<body>
		<div id="wrap">
			<div id="top_content"> 
				<div id="header">
					<div id="rightheader">
						<p>
							2009/11/20
							<br />
						</p>
					</div>
					<div id="topheader">
						<h1 id="title">
							<a href="#">EMS</a>
						</h1>
					</div>
					<div id="navigation">
					</div>
				</div>
				<div id="content">
					<p id="whereami">
					</p>
					<h1>
						Welcome, ${sessionScope.user.realname}!
					</h1>
					<table class="table">
						<tr class="table_header">
							<td>ID</td>
							<td>Name</td>
							<td>Salary</td>
							<td>Age</td>
							<td>Operation</td>
						</tr>
						<c:forEach items="${requestScope.employees}" var="emp">
							<tr class="row1">
								<td>${emp.id}</td>
								<td>${emp.name}</td>
								<td>${emp.salary}</td>
								<td>${emp.age}</td>
								<td>
									<a href="${pageContext.request.contextPath}/employee/findById?id=${emp.id}">Update</a>&nbsp;
									<a href="${pageContext.request.contextPath}/employee/delete?id=${emp.id}">Delete</a>
								</td>
							</tr>
						</c:forEach>

					</table>
					<p>
						<input type="button" class="button" value="Add Employee" onclick="location='${pageContext.request.contextPath}/ems/addEmp.jsp'"/>
					</p>
				</div>
			</div>
			<div id="footer">
				<div id="footer_bg">
				ABC@126.com
				</div>
			</div>
		</div>
	</body>
</html>
