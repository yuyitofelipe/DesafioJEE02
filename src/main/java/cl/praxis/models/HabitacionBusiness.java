package cl.praxis.models;

import cl.praxis.models.Habitacion;
import java.util.ArrayList;
import java.util.List;

public class HabitacionBusiness {
	
	private List<Habitacion> habitaciones;
	
	public HabitacionBusiness() {
		
		habitaciones = new ArrayList<>();
		
		habitaciones.add(new Habitacion(1, "Habitación 1, Simple", "Habitación Clásica con cama extragrande, vistas al océano y balcón.", "https://i.postimg.cc/ydL8Y9ZQ/habitacion1.webp", 10000, 1, 18));
		habitaciones.add(new Habitacion(2, "Habitación 2, Doble - Simple", "Habitación Clásica con 2 camas grandes o dobles, vistas al océano y balcón", "https://i.postimg.cc/J4Vz71DW/habitacion2.webp", 20000, 1, 15));
		habitaciones.add(new Habitacion(3, "Habitación 3, Doble - Normal", "Habitación Superior en planta alta con vistas al océano y 2 camas dobles", "https://i.postimg.cc/zDPTxHcF/habitacion3.webp", 30000, 1, 20));
		habitaciones.add(new Habitacion(4, "Habitación 4, Doble - King", "Habitación Executive en planta superior con cama extragrande y vistas al océano", "ihttps://i.postimg.cc/vZXYvfPQ/habitacion4.webp", 40000, 1, 21));
		habitaciones.add(new Habitacion(5, "Habitación 5, Doble - King", "Suite Executive en planta superior con cama extragrande y vistas al océano", "https://i.postimg.cc/LsbmcRKw/habitacion5.webp", 50000, 1, 22));
		habitaciones.add(new Habitacion(6, "Habitación 6, Doble - King", "Suite Executive en planta superior con cama extragrande y vistas al océano", "https://i.postimg.cc/xCN9Y79C/habitacion6.webp", 60000, 1, 22));
		habitaciones.add(new Habitacion(7, "Habitación 7, Doble - King", "Suite Executive en planta superior con cama extragrande y vistas al océano", "https://i.postimg.cc/HnGdL2Lt/habitacion7.webp", 70000, 1, 24));
		habitaciones.add(new Habitacion(8, "Habitación 8, Doble - King", "Suite Executive en planta superior con cama extragrande y vistas al océano", "https://i.postimg.cc/Kvxhs434/habitacion8.webp", 80000, 1, 26));
	
	}
	
	public List<Habitacion> obtenerHabitaciones() {
		return habitaciones;
	}
	
	public Habitacion obtenerHabitacionesSegunID(int id) {
		for (Habitacion habitacion : habitaciones) {
			if(habitacion.getId() == id) {
				return habitacion;
			}
		}
		return null; //
	}
	
	public void agregarHabitacion (Habitacion habitacion) {
		habitaciones.add(habitacion);
	}
	
	public void eliminarHabitaciones(int id) {
		habitaciones.removeIf(habitacion -> habitacion.getId() == id);
	}
	
	public void actualizarHabitacion (Habitacion habitacionActualizada) {
		for (Habitacion habitacion : habitaciones) {
			if (habitacion.getId() == habitacionActualizada.getId()) {
				habitacion.setNombre(habitacionActualizada.getNombre());
				habitacion.setDescripcion(habitacionActualizada.getDescripcion());
				habitacion.setImagen(habitacionActualizada.getImagen());
				habitacion.setPrecio(habitacionActualizada.getPrecio());
				habitacion.setHabitaciones(habitacionActualizada.getHabitaciones());
				habitacion.setMetraje(habitacionActualizada.getMetraje());
			}
		}
	}
}