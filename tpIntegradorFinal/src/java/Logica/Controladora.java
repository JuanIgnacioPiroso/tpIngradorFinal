package Logica;

import Persistencia.ControladoraPersistencia;
import Persistencia.exceptions.NonexistentEntityException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class Controladora {

    ControladoraPersistencia controlPersis = new ControladoraPersistencia();

    public boolean verificarEmpleado(String dni, String contrasenia) {

        List<Empleado> listaEmpleado = controlPersis.traerEmpleados();

        if (listaEmpleado != null) {

            for (Empleado empl : listaEmpleado) {

                if ((empl.getDni().equals(dni)) && (empl.getContrasenia().equals(contrasenia)) ) {

                    return true;
                }
            }

        }

        return false;

    }

    public boolean verificarFecha(String fechaIngreso, String fechaEgreso, String numHabitacion, String piso) throws ParseException {

        List<Reserva> listaReservas = controlPersis.traerReservas();

        DateFormat df = new SimpleDateFormat("dd-MM-yyyy");

        Date fechaIngresoD = df.parse(fechaIngreso);
        Date fechaEgresoD = df.parse(fechaEgreso);

        if (listaReservas != null) {

            for (Reserva rsv : listaReservas) {

                Date fechaIngresoDB = df.parse(rsv.getFechaIngreso());
                Date fechaEgresoDB = df.parse(rsv.getFechaEgreso());

                if (rsv.getNumHabitacion().equals(numHabitacion) && rsv.getPiso().equals(piso)) {

                    if ((fechaIngresoDB.before(fechaEgresoD)) && (fechaEgresoDB.after(fechaIngresoD))) {

                        return false;
                    }
                }
            }
        }

        return true;
    }

    public void crearEmpleado(String dni, String nya, String fechaNac, String direccion, String cargo, String contrasenia) throws Exception {

        Empleado emp = new Empleado();

        emp.setDni(dni);
        emp.setNya(nya);
        emp.setFechaNac(fechaNac);
        emp.setDireccion(direccion);
        emp.setCargo(cargo);
        emp.setContrasenia(contrasenia);

        controlPersis.crearEmpleado(emp);

    }
    public void guardarHabitacion(String numeroHabitacion, String piso, String tematica, String tipo, double precio) throws Exception{
        
        Habitacion hab = new Habitacion();
        
        hab.setNumHabitacion(numeroHabitacion);
        hab.setPiso(piso);
        hab.setTematica(tematica);
        hab.setTipo(tipo);
        hab.setPrecio(precio);
        
        controlPersis.guardarHabitacion(hab);
        
    }

    public void guardarHuesped(String dni, String nya, String fechaNac, String direccion, String profesion) {

        Huesped hues = new Huesped();

        hues.setDni(dni);
        hues.setNya(nya);
        hues.setFechaNac(fechaNac);
        hues.setDireccion(direccion);
        hues.setProfesion(profesion);

        controlPersis.guardarHuesped(hues);
    }

    public void crearReserva(String numHabitacion, String fechaIngreso, String fechaEgreso, String tipoHabitacion,String piso, String dniHuesped, String fechaReserva, String idEmpleado) throws ParseException {

        Reserva rsv = new Reserva();
        //DateFormat df = new SimpleDateFormat("dd-MM-yyyy");

        //Date fechIng = df.parse(fechaIngreso);
        //Date fechEgr = df.parse(fechaEgreso);
        rsv.setNumHabitacion(numHabitacion);
        rsv.setFechaIngreso(fechaIngreso);
        rsv.setFechaEgreso(fechaEgreso);
        rsv.setTipoHabitacion(tipoHabitacion);
        rsv.setDniHuesped(dniHuesped);
        rsv.setFechaReserva(fechaReserva);
        rsv.setIdEmpleado(idEmpleado);
        rsv.setPiso(piso);

        controlPersis.crearReserva(rsv);
    }

    public double calcularPrecio(String fechaIngreso, String fechaEgreso, String tipoHabitacion) throws ParseException {

        // Single (1 persona) = 1000 x noche
        // Doble (2 personas como maximo) = 2000 x noche
        // Triple (3 personas como maximo) = 3500 x noche
        // Multiple (Hasta 6 personas) = 5000 x noche
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd");

        Date fechaIngresoD = df.parse(fechaIngreso);
        Date fechaEgresoD = df.parse(fechaEgreso);

        int dias = (int) ((fechaEgresoD.getTime() - fechaIngresoD.getTime()) / 86400000);
        
        System.out.println("DIAS: " + dias);

        double precio = 0;

        if (tipoHabitacion.equals("Single (1 persona)")) {

            precio = dias * 1000;
        }
        if (tipoHabitacion.equals("Doble (2 personas como maximo)")) {

            precio = dias * 2000;
        }
        if (tipoHabitacion.equals("Triple (3 personas como maximo)")) {

            precio = dias * 3500;
        }
        if (tipoHabitacion.equals("Multiple (Hasta 6 personas)")) {

            precio = dias * 5000;
        }

        return precio;

    }

    public List<Huesped> traerHuespedes() {

        return controlPersis.traerHuespedes();
    }

    public List<Reserva> traerReservas() {

        return controlPersis.traerReservas();
    }
    public void borrarHuesped(int id) throws NonexistentEntityException{
        
        controlPersis.borrarHuesped(id);
    }
    
    public Huesped buscarHuesped(int id){
        
        return controlPersis.buscarHuesped(id);
    }
    
    public void modificarHuesped(Huesped hues) throws Exception{
        
       controlPersis.modificarHuesped(hues);
    }
    
    public List<Empleado> traerEmpleados(){
        
        return controlPersis.traerEmpleados();
    }
    
    public void borrarReserva (int id) throws NonexistentEntityException{
        
        controlPersis.borrarReserva(id);
    }
    
    public Reserva buscarReserva (int id){
        
        return controlPersis.buscarReserva(id);
    }
    
    public void modificarReserva(Reserva rsv) throws Exception{
        
        controlPersis.modificarReserva(rsv);
    }
    
    public Habitacion buscarHabitacion(int num){
        
        return controlPersis.buscarHabitacion(num);
    }
    
    public List <Habitacion> traerHabitaciones() {
    
    return controlPersis.traerHabitaciones();
}
    
    public void modificarHabitacion(Habitacion hab) throws Exception{
        
        controlPersis.modificarHabitacion(hab);
    }
    
        public void borrarHabitacion(int id) throws NonexistentEntityException{
        
        controlPersis.borrarHabitacion(id);
    }
    
    
}
