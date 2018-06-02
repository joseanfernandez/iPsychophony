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

    <body id="fondo-rec">
    <%
	String[] letras = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", 
			      "l", "m", "n", "ñ", "o", "p", "q", "r", "s", "t", "v", 
			      "w", "x", "y", "z"};

	String letraAleatoria = "";
	String palabraAleatoria = "";


	int duracion = Integer.parseInt(request.getParameter("duracion"));
	int t = duracion * 150;
	int l = letras.length;
	int longitud = 0;

	Double min = 0.0;  
	Double max = 100.45; 
	Double max2 = 100.03;

	BufferedWriter bw = new BufferedWriter(new FileWriter("///Users/Josean/Desktop/rec.txt"));

	// Probabilidad de longitud de cada palabra.
	for (int i = 0; i < t; i++) {
	    double y = (Math.random()*((max2-min)+1))+min / 100.0;
	    y=(double)Math.round(y * 100d) / 100d;

	    if (y <= 0.05) {
		longitud = 1;
	    }else if (y <= 0.26){
		longitud = 2;
	    }else if (y <= 0.82){
	      longitud = 3;
	    }else if (y <= 3.16){
	      longitud = 4;
	    }else if (y <= 9.09){
	      longitud = 5;
	    }else if (y <= 19.31){
	      longitud = 6;
	    }else if (y <= 33.58){
	      longitud = 7;
	    }else if (y <= 49.65){
	      longitud = 8;
	    }else if (y <= 65.02){
	      longitud = 9;
	    }else if (y <= 77.59){
	      longitud = 10;
	    }else if (y <= 86.39){
	      longitud = 11;
	    }else if (y <= 92.01){
	      longitud = 12;
	    }else if (y <= 95.57){
	      longitud = 13;
	    }else if (y <= 97.66){
	      longitud = 14;
	    }else if (y <= 98.87){
	      longitud = 15;
	    }else if (y <= 99.48){
	      longitud = 16;
	    }else if (y <= 99.76){
	      longitud = 17;
	    }else if (y <= 99.91){
	      longitud = 18;
	    }else if (y <= 99.96){
	      longitud = 19;
	    }else if (y <= 99.99){
	      longitud = 20;
	    }else if (y <= 100.01){
	      longitud = 21;
	    }else if (y <= 100.02){
	      longitud = 22;
	    }else {
	      longitud = 23;
	    }


	    // Probabilidad de cada letra de la palabra
	    for (int j = 0; j < longitud; j++) {
		double x = (Math.random()*((max-min)+1))+min / 100.0;
		x=(double)Math.round(x * 100d) / 100d;

		if (x <= 12.53) {
		  letraAleatoria = letras[0];
		}else if (x <= 13.95){
		  letraAleatoria = letras[1];
		}else if (x <= 18.63){
		  letraAleatoria = letras[2];
		}else if (x <= 24.49){
		  letraAleatoria = letras[3];
		}else if (x <= 38.17){
		  letraAleatoria = letras[4];
		}else if (x <= 38.86){
		  letraAleatoria = letras[5];
		}else if (x <= 39.87){
		  letraAleatoria = letras[6];
		}else if (x <= 40.57){
		  letraAleatoria = letras[7];
		}else if (x <= 46.82){
		  letraAleatoria = letras[8];
		}else if (x <= 47.26){
		  letraAleatoria = letras[9];
		}else if (x <= 52.25){
		  letraAleatoria = letras[10];
		}else if (x <= 55.40){
		  letraAleatoria = letras[11];
		}else if (x <= 62.11){
		  letraAleatoria = letras[12];
		}else if (x <= 62.42){
		  letraAleatoria = letras[13];
		}else if (x <= 71.11){
		  letraAleatoria = letras[14];
		}else if (x <= 73.61){
		  letraAleatoria = letras[15];
		}else if (x <= 74.49){
		  letraAleatoria = letras[16];
		}else if (x <= 81.36){
		  letraAleatoria = letras[17];
		}else if (x <= 89.43){
		  letraAleatoria = letras[18];
		}else if (x <= 93.97){
		  letraAleatoria = letras[19];
		}else if (x <= 97.90){
		  letraAleatoria = letras[20];
		}else if (x <= 98.80){
		  letraAleatoria = letras[21];
		}else if (x <= 98.81){
		  letraAleatoria = letras[22];
		}else if (x <= 99.03){
		  letraAleatoria = letras[23];
		}else if (x <= 99.93){
		  letraAleatoria = letras[24];
		} else {
		   letraAleatoria = letras[25];
		}
		
		palabraAleatoria += letraAleatoria;
	    }

	    try {  
		bw.write(palabraAleatoria + "\n");
		palabraAleatoria = "";
	    } catch (IOException e) {
		out.println(e.getMessage());
	    }
	} 

	bw.close();
	response.sendRedirect("index.jsp?q=grabado");
      
    %> 
    </body>
</html>
