<%@ page language="java" import="com.models.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="header">
		<h1>Aadhya Hospital</h1>
	</div>
	</br>
	<center>
		<h1>Appointment Booked Successfully</h1>
		<%
		Patient p = (Patient) request.getAttribute("patient");
		BookingSlot bs = (BookingSlot) request.getAttribute("slot");
		%>
		<h3><b>Slot No: </b><%=bs.getS_id() %></h3>
		<h3><b>Doctor Id:</b><%=bs.getDoc_id() %></h3></br>
		<h3><b>Patient Name: </b><%=p.getP_name()%></h3>
		<h3><b>Patient Pnone: </b><%=p.getP_phone()%></h3></br>
		<h2>on <%=bs.getDate()%> from <%=bs.getFtime() %> to <%=bs.getTtime() %></h2></br>
		<h1>Thank You!</h1>
		
	</center>
</body>
</html>