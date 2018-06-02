<%@page import="java.io.File"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.IOException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" 
	      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

	<!-- Popper JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js">
	</script>

	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

	<link rel="stylesheet" type="text/css" href="css/style.css">

	<title>iPsychophony</title>
    </head>
    <body id="fondo-listen">
	<div class="container">
	    <div class="col-lg-10 offset-1 psico">
		<table id="tPsico" class="col-lg-12">
		    <tr><th>Grabaciones disponibles</th></tr>
    <%
        
	try {    
	    FileReader psico = new FileReader("///Users/Josean/Desktop/psicofonias.txt");
	    BufferedReader bf = new BufferedReader(psico);
	    String linea = "";

	    while (linea != null) {
		out.print("<tr><td>" + linea + "</td></tr>");
		linea = bf.readLine();
	    } 

	    bf.close();
	} catch (IOException ioe) {
	    out.println("No se ha podido leer el fichero");  
	}
        
    %>
		</table>
	    </div>
            <a class="btn btn-info col-lg-2 offset-5 " href="index.jsp">Salir</a>
	</div>
    </body>
</html>

