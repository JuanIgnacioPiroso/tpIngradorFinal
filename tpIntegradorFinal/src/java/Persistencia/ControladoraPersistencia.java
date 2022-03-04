package Persistencia;

import Logica.Empleado;
import Logica.Habitacion;
import Logica.Huesped;
import Logica.Reserva;
import Persistencia.exceptions.NonexistentEntityException;
import java.util.List;

public class ControladoraPersistencia {

    EmpleadoJpaController empleJPA = new EmpleadoJpaController();
    HabitacionJpaController habJPA = new HabitacionJpaController();
    ReservaJpaController rsvJPA = new ReservaJpaController();
    HuespedJpaController huesJPA = new HuespedJpaController();

    public List<Empleado> traerEmpleados() {

        return empleJPA.findEmpleadoEntities();
    }

    public List<Reserva> traerReservas() {

        return rsvJPA.findReservaEntities();
    }

    public void crearEmpleado(Empleado emp) throws Exception {

        empleJPA.create(emp);
    }

    public void crearReserva(Reserva rsv) {

        rsvJPA.create(rsv);

    }
    
    public void guardarHuesped(Huesped hues){
        
        huesJPA.create(hues);
        
        
    }
    
    public void guardarHabitacion(Habitacion hab) throws Exception{
        
        habJPA.create(hab);
    }
    
    public List<Huesped> traerHuespedes(){
        
        return huesJPA.findHuespedEntities();
    }
    
    public void borrarHuesped(int id) throws NonexistentEntityException{
        
        huesJPA.destroy(id);
    }
    
    public Huesped buscarHuesped(int id){
        
        return huesJPA.findHuesped(id);
    }
    
    public Habitacion buscarHabitacion(int id){
        
        return habJPA.findHabitacion(id);
    }
    
    public void modificarHuesped(Huesped hues) throws Exception{
        
        huesJPA.edit(hues);
    }
    
    public void borrarReserva (int id) throws NonexistentEntityException{
        
        rsvJPA.destroy(id);
    }
    
    public Reserva buscarReserva (int id){
        
        return rsvJPA.findReserva(id);
    }
    
    public void modificarReserva(Reserva rsv) throws Exception{
        
        rsvJPA.edit(rsv);
    }
    
       public List<Habitacion> traerHabitaciones(){
        
        return habJPA.findHabitacionEntities();
    }
       
       public void modificarHabitacion(Habitacion hab) throws Exception{
           
           habJPA.edit(hab);
       }
       
        public void borrarHabitacion (int id) throws NonexistentEntityException{
        
        habJPA.destroy(id);
    }


}
