<<<<<<< HEAD
=======

>>>>>>> branch 'master' of https://github.com/lupo472/siw-project.git
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
</head>
<body>
	<f:view>
		<h1>Benvenuto</h1>
		<p>
			<strong>Scegli un operazione</strong>
		</p>
		<h:form>
		<ul>
		<li><h:commandButton value="Login" action="customerLogin.jsp"/></li>
		<li><h:commandButton value="Registrati" action="customerSignUp.jsp"/></li>
		<li><h:commandButton value="Catalogo Prodotti" action="#{productController.listProducts}"/></li>
		</ul>
		</h:form>
	</f:view>
</body>
</html>
