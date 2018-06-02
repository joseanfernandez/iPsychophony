<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
    <body>
        <%
            String mostrar = request.getParameter("q"); 
            String mostrar2 = request.getParameter("p");
        %>
        <div class="mensaje lead" id="<% out.print(mostrar); %>">Grabación realizada</div>
        <div class="mensaje lead" id="<% out.print(mostrar2); %>">Guardado correctamente</div>
        <div class="col-lg-10 offset-1">
            <div class="jumbotron">
		<h1>iPsychophony</h1>
		<p class="lead">
		    Para empezar a grabar la psicofonía, pulse en 
		    <span class="cursiva">Grabar.</span>
		</p>
		<form action="rec.jsp" method="get">
		    <span class="lead">Elija la duración de la grabación</span>
		    <select id="duracion" name="duracion">
			<option value="50"> - </option>
			<option value="10">10"</option>
			<option value="15">15"</option>
			<option value="20">20"</option>
			<option value="30">30"</option>
			<option value="50">50"</option>
			<option value="90">1' 30"</option>
			<option value="120">2'</option>
		    </select>
		    <br/><br/>
		    <input type="submit" class="btn btn-warning" value="Grabar"/>
		</form>
		<hr/>
		<p class="lead">
		    Cuando tengas la grabación, pulsa en 
		    <span class="cursiva">Analizar.</span>
		</p>
		<p class="lead">
		    A continuación se le mostrará la transcripción en texto, si encontramos alguna 
		    palabra, se la resaltaremos.
		</p>
		<p class="lead">
		    Se le mostrará el mensaje en claro y podrá decidir si guardarlo o descartarlo.
		</p>
		<a class="btn btn-success" href="analyzer.jsp">Analizar</a>
		<hr/>
		<p class="lead">
		    Para ver las grabaciones guardadas, pulse en 
		    <span class="cursiva">Ver grabaciones.</span>
		</p>
		<a class="btn btn-info" href="listen.jsp">Ver grabaciones</a>
	    </div>
        </div>
    </body>
    <script>
        $(document).ready(function() {
            setTimeout(function() {
                $("#grabado").fadeIn(1500);
            }, 0);
        });

        $(document).ready(function() {
            setTimeout(function() {
                $("#grabado").fadeOut(1500);
            }, 2000);
        });

        $(document).ready(function() {
            setTimeout(function() {
                $("#guardado").fadeIn(1500);
            }, 0);
        });

        $(document).ready(function() {
            setTimeout(function() {
                $("#guardado").fadeOut(1500);
            }, 2000);
        });

    </script>
</html>