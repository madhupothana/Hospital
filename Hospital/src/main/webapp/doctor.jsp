<%@ page language="java" import="com.*,java.util.*"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f4f4f4;
}

.header {
	background-color: #333;
	color: #fff;
	text-align: center;
	padding: 10px;
}

.product {
	width: 40%;
	margin-bottom: 20px;
	padding: 10px;
	border: 1px solid #ccc;
	text-align: left;
	background-color: #fff;
	transition: transform 0.2s, box-shadow 0.2s;
}

.product:hover {
	transform: translateY(-5px);
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

.product img {
	max-width: 30%;
	height: auto;
}

.product h3 {
	margin-top: 10px;
	font-size: 18px;
	color: #333;
}

.product p {
	color: #777;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="header">
		<h1>Aadhya Hospital</h1>
	</div>
	<%
		String name = request.getParameter("name");
	String id = request.getParameter("id");
	String spec = request.getParameter("spec");
	String qual = request.getParameter("qual");
	String exp = request.getParameter("exp");
	String img = request.getParameter("img");
	%><center>
		<div class="product">
			<img src="images/img1.jpg" alt="sai">
			<h2>
				Doctor Name :<%=name%></h2>
			<h3>
				Doctor ID :<%=id%></h3>
			<h3>
				Specialization :<%=spec%></h3>
			<h3>
				Qualification :<%=qual%></h3>
			<h3>
				Experience :<%=exp%>y
			</h3>

		</div>
		<form action="findslots" method="get">
			<input type="submit" name="doc_id" value="FindSlots for doctor ID <%=id %>">
		</form>
	</center>
	
</body>
</html>