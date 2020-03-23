<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="modelo.bean.Usuario"%>
<%
	Usuario usuario = (Usuario) request.getAttribute("usuario");
%>




<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
	<div class="container mt-3">
		<h1>Formulario para editar usuario</h1>

		<form action="ModificarActividad" method="POST">
			<div class="form-group">
				<label for="nombre">Nombre_apellido usuario</label> <input type="text"
					class="form-control" id="nombre_apellido" name="nombre_apellido"
					value="${usuario.getNombreApellido()}">
			</div>

			<div class="form-group">
				<label for="fecha_inicio">Dni</label> <input type="text"
					class="form-control" id="dni" name="dni"
					placeholder="yyyy-MM-dd" value="${usuario.getDni()}">
			</div>

			<div class="form-group">
				<label for="dias_semana">Codigo</label> <input type="text"
					class="form-control" id="codigo" name="codigo"
					value="${usuario.getCodigo()}">
			</div>

			<div class="form-group">
				<label for="horas">Id</label> <input type="text"
					class="form-control" id="id" name="id"
					value="${usuario.getId()}">
			</div>

			<button type="submit" class="btn btn-primary">Submit</button>
		</form>

	</div>

	<div class="row mt-3">
		<div class="col">
			<a href="VerUsuarios">Ver usuarios</a>
		</div>

	</div>


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
</body>
</html>