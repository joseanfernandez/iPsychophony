<%@page import="java.util.Collections"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.ArrayList"%>
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
    <body id="fondo-rec">
	<div class="container col-lg-12">
	    <div class="rec col-lg-10 offset-1">
    <%
	String mensaje = "";

	int encontradas = 0;
	int hash = 0;

	boolean existe = false;
	boolean noRep = true;

	ArrayList<String> diccionario = new ArrayList<String>();

	try {
	    FileReader file = new FileReader("///Users/Josean/Desktop/dic.txt");
	    BufferedReader bfDic = new BufferedReader(file);
	    String lineaDic = "";

	    while (lineaDic != null) {
		diccionario.add(lineaDic);
		lineaDic = bfDic.readLine();
		encontradas++;
	    }
	    bfDic.close();
	} catch(IOException e) {     
	    out.println(e.getMessage());	
	}


	try {  
	    FileReader record = new FileReader("///Users/Josean/Desktop/rec.txt");
	    BufferedReader bfRec = new BufferedReader(record);

	    String lineaRec = "";
	    lineaRec = bfRec.readLine();

	    while (lineaRec != null) {	  
		for(String palabra: diccionario) {
		    if (lineaRec.equals(palabra)){
			existe = true;
			if (noRep){
			    mensaje += lineaRec + " ";
			    noRep = false;
			}
		    }
		}

		if (existe){    
		    out.print("<span class='exist' >" + lineaRec + "</span>");
		    out.print(" ");   
		}else{      
		    out.print("<span class='noExist' >" + lineaRec + "</span>");
		    out.print(" ");	      
		}

		lineaRec = bfRec.readLine();
		existe = false; 
		noRep = true;
	    }

	    bfRec.close();
	}catch (IOException e) {
	    out.println(e.getMessage());
	} 

    %>
    <!--    -->     
    
                <div class="col-lg-10 offset-1 message" type="text">
                    <% out.print(mensaje); %>
                </div>
                <div class="btn-group btn-group-toggle col-lg-4 offset-4" data-toggle="buttons">

                    <button type="button" class="btn btn-success col-lg-6" data-toggle="modal" 
			    data-target="#modalGuardar">
                        Guardar
                    </button>
                    <button type="button" class="btn btn-danger col-lg-6" data-toggle="modal" 
			    data-target="#exampleModal">
                        Descartar
                    </button>
                </div>
           
		<!-- Modal para Guardar -->
		<div class="modal fade" id="modalGuardar" tabindex="-1" role="dialog" 
		     aria-labelledby="exampleModalLabel" aria-hidden="true">
		    <div class="modal-dialog" role="document">
			<div class="modal-content">
			    <div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">
				    ¿Estás seguro?
				</h5>
				<button type="button" class="close" data-dismiss="modal" 
					aria-label="Close">
				    <span aria-hidden="true">&times;</span>
				</button>
			    </div>
			    <div class="modal-body">
				Si guardas está psicofonía se escribirá en el fichero.
			    </div>
			    <form class="modal-footer" action="save.jsp" method="get">
				<input type="text" name="mensaje" value="<% out.print(mensaje); %>" 
				       style="display:none;"/>
				<button type="button" class="btn btn-outline-secondary" 
					data-dismiss="modal">
				    Cancelar
				</button>
				<input type="submit" class="btn btn-outline-success" 
				       value="Confirmar"/>
			    </form>
			</div>
		    </div>
		</div>
		<!--  Modal para Descartar -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" 
		     aria-labelledby="exampleModalLabel" aria-hidden="true">
		    <div class="modal-dialog" role="document">
			<div class="modal-content">
			    <div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">
				    ¿Estás seguro?
				</h5>
				<button type="button" class="close" data-dismiss="modal" 
					aria-label="Close">
				    <span aria-hidden="true">&times;</span>
				</button>
			    </div>
			    <div class="modal-body">
				Si eliminas esta piscofonía no podrás volver a reproducirla
			    </div>
			    <div class="modal-footer">
				<button type="button" class="btn btn-outline-secondary" 
					data-dismiss="modal">
				    Cancelar
				</button>
				<a class="btn btn-outline-danger" href="index.jsp">Eliminar</a>
			    </div>
			</div>
		    </div>
		</div>
	    </div>
        </div>
    </body>
    <script>
        $('body,html').animate({ scrollTop: $('body').height() }, 10000);
    </script>
</html>
