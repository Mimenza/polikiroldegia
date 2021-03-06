<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    
    
    
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Actividades</title>
  </head>
  <body>
  <div class="container">
  
  <h1 class="text-center">Actividades</h1>
  
  <div class="col-4 offset-8">
  <form action="BuscarActividad" method="POST" class="form-inline">
  
  <input type="text"  name="query" class="fomr.control" placeholder="buscar actividades" >
  <button type="submit" class="btn btn-primary mx-2">Buscar</button>
  <a class="btn btn-secondary" href="VerActividades?">Todas</a>
  
  </form>
  </div>
  
  
  
  
  <div class="row justify-content-center mt-2 text-center">
  <div class="col">
  
 <table class="table table-striped table-dark table-bordered" >
  <thead>
    <tr>
      <th scope="col">Nombre</th>
      <th scope="col">Fecha Inico</th>
      <th scope="col">Dias</th>
      <th scope="col">Horas</th>
      <th scope="col">Max Participantes</th>
      <th scope="col">Precio</th>
      <th scope="col" >
      <a class="btn btn-warning btn-md text-white" href="Menu">Volver</a>
  <a class="btn btn-success btn-md text-white" href="CrearActividad">Crear</a>
      </th>
    </tr>
  </thead>
  <tbody>
  
  <c:forEach items="${actividades}" var="actividad">
  
   <tr>
      <th>${actividad.getNombre()}</th>
      <th>${actividad.getFecha_inicio()}</th>
      <td>${actividad.getDias()}</td>
      <td>${actividad.getHoras()}</td>
      <td>${actividad.getMaxParticipantes()}</td>
      <td>${actividad.getPrecio()}</td>
      <td>
      <a class="btn btn-primary" href="VerActividad?id=${actividad.getId()}">Ver</a>
      
      <a class="btn btn-success" href="EditarActividad?id=${actividad.getId()}">Editar</a>
      
	  <a class="btn btn-danger" href="EliminarActividad?id=${actividad.getId()}">Eliminar</a>
	   
      </td>
    </tr>
  
  </c:forEach>
		    
  		
  </tbody>
</table>
  
  </div>
  </div>
  
  
  
  </div>
   

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>