<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<body>

	<h3>Add Product</h3>
	<div>

		<form:form action="/save-product" method="post"
			modelAttribute="command">

			<form:hidden path="id" />

			<label for="name">Name</label>
			<form:input type="text" id="name" path="name"
				placeholder="Enter Name" />

			<label for="name">Price</label>
			<form:input type="text" id="price" path="price"
				placeholder="Enter Price" />
			<input type="submit" value=" Submit ">
		</form:form>
	</div>


</body>
</html>