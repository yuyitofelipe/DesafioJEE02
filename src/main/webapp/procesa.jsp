<%@page import="cl.praxis.models.Habitacion"%>
<%@page import="cl.praxis.models.HabitacionBusiness"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
int idHabitacion = Integer.parseInt(request.getParameter("idHabitacion"));
String nombre = request.getParameter("nombre");
String apellido = request.getParameter("apellido");
String email = request.getParameter("email");
String medioPago = request.getParameter("medioDePago");
String dias = request.getParameter("dias");
String fechaEntrega = request.getParameter("fechaEntrega");
String precio = request.getParameter("precioHabitacion");

HabitacionBusiness hB = new HabitacionBusiness();
Habitacion habitacion = hB.obtenerHabitacionesSegunID(idHabitacion);

//para que multiplique el valor de la habitacion por la cantidad de dias
int precioHabitacion = habitacion.getPrecio();
int valorAPagar = precioHabitacion * Integer.parseInt(dias);

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
					<h1>
						Detalle Habitacion: <strong><%=habitacion.getNombre()%></strong>
					</h1>
					<hr/ >
				</div>
			</div>

			<div class="container px-4 px-lg-5 mt-5">

				<table class="table">
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">Item</th>
							<th scope="col">Valor</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">1</th>
							<td>Nombre</td>
							<td><%=nombre%></td>
						</tr>
						<tr>
							<th scope="row">2</th>
							<td>Apellido</td>
							<td><%=apellido%></td>
						</tr>
						<tr>
							<th scope="row">3</th>
							<td>Email</td>
							<td><%=email%></td>
						</tr>
						<tr>
							<th scope="row">4</th>
							<td>Medio de Pago</td>
							<td><%=medioPago%></td>
						</tr>
						<tr>
							<th scope="row">5</th>
							<td>Cantidad de Días</td>
							<td><%=dias%></td>
						</tr>

						<tr>
							<th scope="row">6</th>
							<td>Fecha de Entrada</td>
							<td><%=fechaEntrega%></td>
						</tr>

						<tr>
							<th scope="row">7</th>
							<td>Valor a Pagar</td>
							<td><strong>CL$ <%=valorAPagar%></strong></td>
						</tr>

					</tbody>
				</table>

			</div>

		</section>

		<br /> <br />

	</form>

	<%@include file="assets/html/footer.jsp"%>

</body>
</html>