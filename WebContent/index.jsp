
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
		<h1>Benvenuto visitatore!</h1>
		<p>
			<strong>Scegli un operazione </strong>
		</p>
		<p>
			<strong>Registrati o accedi al portale se vuoi effettuare un
				ordine!</strong>
		</p>
		<h:form>
			<ul>
				<li><h:commandButton value="Login" action="customerLogin" /></li>
				<li><h:commandButton value="Admin Login"
						action="#{administratorController.administratorLogin }" /></li>
				<li><h:commandButton value="Registrati"
						action="#{customerController.signUp}" /></li>
				<li><h:commandButton value="Catalogo prodotti"
						action="#{productController.listProducts}" /></li>
			</ul>
		</h:form>
	</f:view>
</body>
</html>
