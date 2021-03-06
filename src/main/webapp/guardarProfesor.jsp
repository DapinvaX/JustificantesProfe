<%@page import="java.util.Date"%>
			
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

	<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    

	<title>Guardar Profesor</title>
</head>
<body>
	
	<%
		
		String nombre = request.getParameter("nombre"); 
	
		String dni = request.getParameter("inpDNI"); 
	
		String nrp = request.getParameter("nrp"); 
		
		String asignatura = request.getParameter("asignatura");
		
		String fAusencia = request.getParameter("inpFechasFalta");
		
		String hLectivas = request.getParameter("horasLectivas");
		
		String hComplementarias = request.getParameter("horasComplementarias");
		
		String motivo = request.getParameter("TAMotivo");
		
		//ProfesorVO profesor = new ProfesorVO();
		
		//Quitar despuÃ©s
		System.out.println(nombre);
		System.out.println(nrp);
		System.out.println(asignatura);
		System.out.println(fAusencia);
		System.out.println(hLectivas);
		System.out.println(hComplementarias);
		System.out.println(motivo);
		
		
	%>
	
	 <!-- 
            Codigo de estilo para el formulario
            style="margin-left: 600px; text-align: center; border-style:solid; border-width: 1px;  width: 600px; height: 800px;"
        -->
      <div class="container" style="text-align: left; width: 600px; height: 800px; border-style:solid; border-width: 1px; margin-top: 20px">
          
          <div class="row">
          	<div class="col-md-12" style="margin-bottom: 25px; text-align: center">
          		<h3><b>Formulario de falta de asistencia.</b></h3>
          	</div>
          </div>
          
          <div class="row">
              
            <div class="col-md-12" style="text-align: justify-content: ;" >
               <!--  <h4>Formulario de falta de asistencia.</h4>  -->

                <b>D./Dña. :</b> <label id="nombre"><%=nombre%></label><br>
                <b>Con DNI :</b> <label id="dni"><%=dni%></label> y <b>NRP:</b> <label id="nrp"><%=nrp%></label><br>
                <b>Profesor/a de :</b> <label id="idAsignatura"><%=asignatura%></label> en el IES Augustóbriga
                de Navalmoral de la Mata.<br><br><br>
                
                
                
                <h4><b><sub>DECLARA QUE:</sub></h4></b></br></br>
                Faltó a clase en la/s fecha/s: <label id="idFecha"><%=fAusencia%></label><br>
                Horas lectivas: <label id="hLectivas"><%=hLectivas%></label><br>
                Horas complementarias: <label id="hComplementarias"><%=hComplementarias%></label><br><br>
                
                
                Por los motivos que se detallan a acontinuación:
                <label id="idMotivo"> <%=motivo%> </label><br><br><br>
                <br>
                <b>
                <% 
                
                //Creamos el objeto fecha
                Date fecha = new Date();
                
                //De este obtenemos el dia, mes y año.
                fecha.getDay();
                fecha.getMonth();
                fecha.getYear();
                
                //Lo pasamos a String
                fecha.toString();
                
                %>
                </b>
                Y para que conste y serte a los efectos oportunos, firma la presente en Navalmoral de la Mata a <%=fecha %>
                
                
                 	

              </div>

           
          
          
            </div>

      </div> 
       <div style="margin-top: 30px;margin-left: 835px">

                <!-- <button type="button" class="btn btn-primary" >Imprimir</button> -->
              	<input type="button" class="btn btn-primary" value="Imprimir" onclick="javascript:window.print()" />
              
              </div>
	
</body>
</html>
