<%@page import="java.util.List"%>
<%@page import="cl.praxis.models.Habitacion"%>
<%@page import="cl.praxis.models.HabitacionBusiness"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
HabitacionBusiness hB = new HabitacionBusiness();
List<Habitacion> listaHabitaciones = hB.obtenerHabitaciones();
%>

<!DOCTYPE html>
<html lang="es">
<%@include file="assets/html/head.jsp"%>
<body>

	<%@include file="assets/html/header.jsp"%>

	<form method="post" action="procesa.jsp">

		<section class="py-5">
			<div class="container px-4 px-lg-5 mt-5">

				<div class="row justify-content-center">
					<h3>
						Habitaciones Disponibles (<%=listaHabitaciones.size()%>)
					</h3>
					<hr/ >
				</div>

				<div
					class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">

					<%
					for (Habitacion habitacion : listaHabitaciones) {
					%>

					<div class="col mb-5">
						<div class="card h-100">
							<img class="card-img-top"
								src="assets/images/<%=habitacion.getImagen()%>"
								alt="<%=habitacion.getNombre()%>" />
							<div class="card-body p-4">
								<div class="text-center">
									<h5 class="fw-bolder"><%=habitacion.getNombre()%></h5>
									<p><%=habitacion.getDescripcion()%></p>
									CL$ <%=habitacion.getPrecio()%>
								</div>
							</div>
							<input type="radio" id="habitacion<%=habitacion.getId()%>" name="idHabitacion" value="<%=habitacion.getId()%>" onchange="actualizarPrecio(<%=habitacion.getPrecio()%>)">  
						</div>
					</div>
					<%
					}
					%>

				</div>
			</div>
		</section>

		<!--  Formulario -->
		<section>

			<div class="container px-4 px-lg-5 mt-5">

				<h1>Información de Venta</h1>
				<hr />

				<div class="row g-3">
				
					<div class="col-md-6">
						<label for="inputEmail4" class="form-label">Nombre</label> 
						<input type="text" class="form-control" id="nombre" name="nombre">
					</div>
					
					<div class="col-md-6">
						<label for="inputPassword4" class="form-label">Apellido</label> 
						<input type="text" class="form-control" id="apellido" name="apellido">
					</div>

					<div class="col-md-6">
						<label for="inputCity" class="form-label">Email</label> 
						<input type="text" class="form-control" id="email" name="email">
					</div>

					<div class="col-md-2">
						<label for="inputZip" class="form-label">Medio de Pago</label> 
						<input type="text" class="form-control" id="medioDePago" name="medioDePago">
					</div>
					
					<div class="col-md-2">
						<label for="inputZip" class="form-label">Cantidad de Días</label> 
						<input type="text" class="form-control" id="dias" name="dias">
					</div>
					
					<div class="col-md-2">
						<label for="inputZip" class="form-label">Fecha de Entrada</label> 
						<input type="text" class="form-control" id="fechaEntrega" name="fechaEntrega">
					</div>
					
					<div class="col-md-2">
						<label for="inputZip" class="form-label">Valor a Pagar</label> 
						<input type="text" class="form-control" id="precioHabitacion" name="precioHabitacion" readonly>
					</div>
					
					<div class="col-12">
						<hr />
						<button type="submit" class="btn btn-primary">Enviar Solicitud de Compra</button>
					</div>
				</div>

			</div>

		</section>

		<br /> <br />

	</form>

	<%@include file="assets/html/footer.jsp"%>
	
	<script>
		function actualizarPrecio(precio) {
			
		    document.getElementById("precioHabitacion").value = "CL$ " + precio;
		
		}
	</script>

</body>
</html>