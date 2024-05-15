<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Product</title>
</head>
<body>
	<div>
		<a href="/add-product">Add Product</a>

		<c:if test="${produts.size()==0}">
			<h2>No record found !!</h2>
		</c:if>


		<c:if test="${products.size() gt 0 }">
			<div>
				<table>

					<thead>
						<tr>
							<th>Name</th>
							<th>Price</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="product" items="${products}">

							<tr>
								<td>${product.name}</td>
								<td>${product.price}</td>
							</tr>

						</c:forEach>

					</tbody>


				</table>
			</div>
		</c:if>

	</div>


</body>
</html>