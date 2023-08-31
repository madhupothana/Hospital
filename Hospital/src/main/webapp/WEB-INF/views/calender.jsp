<%@ page language="java"
    import="com.models.DoctorSlots,java.util.ArrayList"
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

.product-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    max-width: 900px;
    margin: 20px auto;
    padding: 20px;
    background-color: #fff;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.product {
    width: 30%;
    margin-bottom: 20px;
    padding: 10px;
    border: 1px solid #ccc;
    text-align: center;
    background-color: #fff;
    transition: transform 0.2s, box-shadow 0.2s;
}

.product:hover {
    transform: translateY(-5px);
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

.product img {
    max-width: 100%;
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

/* Additional CSS for the table */
table {
    border-collapse: collapse;
    width: 80%;
    margin-top: 20px;
}

table th, table td {
    border: 1px solid #ccc;
    padding: 8px;
    text-align: center;
}

table th {
    background-color: #333;
    color: #fff;
}

table tr:nth-child(even) {
    background-color: #f2f2f2;
}

table tr:hover {
    background-color: #e0e0e0;
}

table a {
    color: #333;
    text-decoration: none;
    font-weight: bold;
}

table a:hover {
    color: #ff6600;
}
</style>
<meta charset="ISO-8859-1">
<title>Aadhya Hospital</title>
</head>
<body>

<div class="header">
    <h1>Aadhya Hospital</h1>
</div>
<center>
    <%
        ArrayList<DoctorSlots> sa = (ArrayList<DoctorSlots>) request.getAttribute("doctorslots");
    %><table>
    <thead>
        <tr>
            <th>Slot ID</th>
            <th>Doctor ID</th>
            <th>Date</th>
            <th>From Time</th>
            <th>To Time</th>
            <th>Book Here</th>
        </tr>
    </thead>
    <tbody>
        <%
            for (int i = 0; i < sa.size(); i++) {
            DoctorSlots s1 = sa.get(i);
            int s_id=s1.getS_id();
            int doc_id=s1.getS_docid();
            String date=s1.getS_date()+"";
            String ftime=s1.getS_ftime();
            String ttime=s1.getS_ttime();
            String href= "?doc_id=" + doc_id + "&s_id=" + s_id + "&date=" + date + "&ftime=" + ftime + "&ttime=" + ttime;
        %><tr>
            <td><%=s1.getS_id()%></td>
            <td><%=s1.getS_docid()%></td>
            <td><%=s1.getS_date()%></td>
            <td><%=s1.getS_ftime()%></td>
            <td><%=s1.getS_ttime()%></td>
            <td><a href="patient.jsp<%=href%>">Book</a></td>
        </tr>
        <%
            }
        %>
    </tbody>
    </table>
</center>

</body>
</html>
