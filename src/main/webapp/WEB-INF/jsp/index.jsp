<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<body>

<script language="javascript">
		document.onmousedown = disableclick;
		status = "Welcome to Organic food store";
		function disableclick(event) {
			if (event.button == 2) {
				alert(status);
				return false;
			}
		}
	</script>

	<!--<script type = "text/javascript" >
function preventBack()
{
window.history.forward();
}
setTimeout("preventBack()", 0);
window.onunload=function(){null};
</script>-->

	<script type="text/javascript">
		function valForm() {
			if (document.login.email.value == "") {
				alert("Please Enter your email");
				document.login.email.focus();
				return false;
			}
			if (document.login.pass.value == "") {
				alert("Please Enter your password");
				document.login.pass.focus();
				return false;
			}
			document.login.submit();
		}
	</script>
</head>

<body>
	<div class="login">
		<h2>Login</h2>
		<form name="login" id="login" method="get" action="/login">
			<input type="text" name="email" placeholder="Enter your email" /> <br>
			<br> <input type="text" name="pass"
				placeholder="Enter your password" /> <br>
			<br> <a href="">Forgot Password</a><br>
			<br> <input type="submit" value="Login"
				onclick="return valForm()" /><br>
			<br>
			
			</form>
			</div>
			
							
							

</body>
</html>