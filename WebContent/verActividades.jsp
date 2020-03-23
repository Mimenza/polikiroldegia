<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import= "java.util.ArrayList" %>
    <%@page import= "modelo.bean.Actividad" %>
    
    
    <!--pasar de objeto a arrayList-->
    
    <%
    ArrayList<Actividad> actividades = (ArrayList)request.getAttribute("actividades");
    %>
    
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Ver Actividades!</title>
  </head>
  <body>
    <h1>Actividades</h1>
    
    
    
   <table class="table">
  <thead>
    <tr>
      <th scope="col">Fecha Inico</th>
      <th scope="col">Dias</th>
      <th scope="col">Horas</th>
      <th scope="col">Max Participantes</th>
      <th scope="col">Precio</th>
      <th>
      <a scope="col" class="btn btn-success" href="CrearActividad?">Crear</a></th>
      
    </tr>
  </thead>
  <tbody>
  
  <%for(int i = 0;i<actividades.size();i++){
	  
	  Actividad actividad = actividades.get(i);  
	  
	  %>
  
    <tr>
      <th>${actividad.getFecha_inicio()}</th>
      <td>${actividad.getDias()}</td>
      <td>${actividad.getHoras()}</td>
      <td>${actividad.getMaxParticipantes()}</td>
      <td>${actividad.getPrecio()}</td>
      <td>
      <a class="btn btn-primary" href="VerActividad?id=${activida.getId()}">Ver</a>
      
      <a class="btn btn-success" href="EditarActividad?id=${activida.getId()}">Editar</a>
      
	  <a class="btn btn-danger" href="EliminarActividad?id=${activida.getId()}">Eliminar</a>
	   
      </td>
    </tr>
    
    
    <%} %>
  </tbody>
</table>
    
    
    

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>