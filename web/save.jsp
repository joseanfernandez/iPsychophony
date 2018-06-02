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
	<title>iPsychophony</title>
    </head>
    <body>
    <%
	request.setCharacterEncoding("UTF-8");
	String mensaje = request.getParameter("mensaje");

	try {    
	    File TextFile = new File("///Users/Josean/Desktop/psicofonias.txt"); 
	    FileWriter TextOut = new FileWriter(TextFile, true);
	    TextOut.write("\n" + mensaje);
	    TextOut.close();

	    response.sendRedirect("index.jsp?p=guardado");
	} catch (IOException ioe) {
	    out.println("Error");  
	}
    %>
    </body>
</html>
