<%@ page language="java"
	import="com.models.DoctorDetails,java.util.ArrayList"
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
	max-width: 60%;
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
<title>Aadhya Hospital</title>
</head>
<body>

	<div class="header">
		<h1>Aadhya Hospital</h1>
	</div>
	<br>
	<center>
		<label>Specialization: <select id="specializationFilter"
			onchange="filterDoctorsBySpecialization()">
				<option value="Cardiology">Cardiology</option>
				<option value="Dermatology">Dermatology</option>
				<option value="Orthopedics">Orthopedics</option>
				<option value="Gynecology">Gynecology</option>
				<option value="Neurosurgery">Neurosurgery</option>
				<option value="Pediatrics">Pediatrics</option>
				<option value="Gastroenterology">Gastroenterology</option>
				<option value="Ophthalmology">Ophthalmology</option>
				<option value="Urology">Urology</option>
				<option value="Psychiatry">Psychiatry</option>
				<option value="ENT">ENT (Ear, Nose, and Throat)</option>
				<option value="Endocrinology">Endocrinology</option>
				<option value="PlasticSurgery">Plastic Surgery</option>
				<option value="Dentistry">Dentistry</option>
				<option value="Pulmonology">Pulmonology</option>
				<option value="Oncology">Oncology</option>
				<option value="CardiothoracicSurgery">Cardiothoracic
					Surgery</option>
				<option value="Rheumatology">Rheumatology</option>
				<option value="Nephrology">Nephrology</option>
				<option value="Obstetrics">Obstetrics</option>
		</select>
		</label> <br>
		<br>
	</center>

	<div class="product-container">
		<%
		ArrayList<DoctorDetails> docd = (ArrayList<DoctorDetails>) request.getAttribute("doctors");
		for (DoctorDetails d : docd) {
			String doc_id = d.getDoc_id() + "";
			String doc_name = d.getDoc_name();
			String doc_img = d.getDoc_img();
			String doc_qual = d.getDoc_qual();
			String doc_spec = d.getDoc_spec();
			String doc_exp = d.getDoc_exp() + "";
			String href = "?id=" + doc_id + "&name=" + doc_name + "&img=" + doc_img + "&spec=" + doc_spec + "&exp=" + doc_exp
			+ "&qual=" + doc_qual;
		%>

		<div class="product">
			<a href="doctor.jsp<%=href%>"><img src="images/img1.jpg"
				alt=<%=d.getDoc_name()%>></a>
			<h3><%=d.getDoc_name()%></h3>
			<p class="product-spec"><%=d.getDoc_spec()%></p>
		</div>

		<%
		}
		%>
	</div>

	<script>
    function filterDoctorsBySpecialization() {
        const selectedSpecialization = document.getElementById('specializationFilter').value;
        const products = document.querySelectorAll('.product');

        products.forEach(product => {
            const productSpecialization = product.querySelector('.product-spec').textContent;
            if (selectedSpecialization === 'All' || productSpecialization === selectedSpecialization) {
                product.style.display = 'block';
            } else {
                product.style.display = 'none';
            }
        });
    }
    </script>
</body>
</html>
