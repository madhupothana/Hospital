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
	String s_id= request.getParameter("s_id");
	String doc_id =request.getParameter("doc_id");
	String date = request.getParameter("date");
	String ftime = request.getParameter("ftime");
	String ttime = request.getParameter("ttime");
	%>
	<center>
	
	</br>
	<form action="booking" method="post">
	<h2>Doctor Details</h2></br>
	<lable><b>Slot ID :</b><input type="text" value=<%=s_id %> name="s_id"></lable>
	<lable><b>Doc ID :</b><input type="text" value=<%=doc_id %> name="doc_id"></lable>
	<lable><b>Date :</b><input type="text" value=<%=date%> name="date"></lable>
	<lable><b>Ftime :</b><input type="text" value=<%=ftime %> name="ftime"></lable>
	<lable><b>Ttime :</b><input type="text" value=<%=ttime %> name="ttime"></lable>
	</br>
	</br>
	<h2>Enter Patient Details</h2></br></br>
	<lable><b>Name :</b><input type="text" name="p_name"></lable></br></br>
	<lable><b>Age :</b><input type="text" name="p_age"></lable></br></br>
	<lable><b>Gender :</b><select name="p_gen"><option>select</option><option>male</option><option>female</option><option>other</option></select></lable></br></br>
	<lable><b>Phone :</b><input type="text" name="p_phone"></lable></br></br>
	<lable><b>Village:</b><input type="text" name="p_village"></lable></br></br>
	<input type="submit" value="Book">
	</form>
	</center>
	
</body>
</html>