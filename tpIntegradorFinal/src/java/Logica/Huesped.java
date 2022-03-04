package Logica;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Huesped implements Serializable {
    
    @Id
    @GeneratedValue( strategy = GenerationType.AUTO)
    int idHuesped;
    @Basic
    String dni;
    String nya;
    String fechaNac;
    String direccion;
    String profesion;
    @OneToMany
    List <Reserva> listaReservas;
    @OneToMany
    List <Habitacion> listaHabitaciones;
    
    

    public Huesped() {
    }

    public Huesped(int idHuesped, String dni, String nya, String fechaNac, String direccion, String profesion, List<Reserva> listaReservas, List<Habitacion> listaHabitaciones) {
        this.idHuesped = idHuesped;
        this.dni = dni;
        this.nya = nya;
        this.fechaNac = fechaNac;
        this.direccion = direccion;
        this.profesion = profesion;
        this.listaReservas = listaReservas;
        this.listaHabitaciones = listaHabitaciones;
    }

    public int getIdHuesped() {
        return idHuesped;
    }

    public void setIdHuesped(int idHuesped) {
        this.idHuesped = idHuesped;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getNya() {
        return nya;
    }

    public void setNya(String nya) {
        this.nya = nya;
    }

    public String getFechaNac() {
        return fechaNac;
    }

    public void setFechaNac(String fechaNac) {
        this.fechaNac = fechaNac;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getProfesion() {
        return profesion;
    }

    public void setProfesion(String profesion) {
        this.profesion = profesion;
    }

    public List<Reserva> getListaReservas() {
        return listaReservas;
    }

    public void setListaReservas(List<Reserva> listaReservas) {
        this.listaReservas = listaReservas;
    }

    public List<Habitacion> getListaHabitaciones() {
        return listaHabitaciones;
    }

    public void setListaHabitaciones(List<Habitacion> listaHabitaciones) {
        this.listaHabitaciones = listaHabitaciones;
    }
    
    
    
    
    
    

}
