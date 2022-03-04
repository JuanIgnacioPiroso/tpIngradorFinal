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
public class Reserva implements Serializable {
    
    @Id
       @GeneratedValue( strategy = GenerationType.AUTO)
    int idReserva;
    @Basic
    String numHabitacion;
    String fechaIngreso;
    String fechaEgreso;
    String tipoHabitacion;
    String dniHuesped;
   String fechaReserva;
    String idEmpleado;
    String piso;
    @OneToMany
    List <Empleado> listaEmpleados;

    public Reserva() {
    }

    public Reserva(int idReserva, String numHabitacion, String fechaIngreso, String fechaEgreso, String tipoHabitacion, String dniHuesped, String fechaReserva, String idEmpleado, String piso, List<Empleado> listaEmpleados) {
        this.idReserva = idReserva;
        this.numHabitacion = numHabitacion;
        this.fechaIngreso = fechaIngreso;
        this.fechaEgreso = fechaEgreso;
        this.tipoHabitacion = tipoHabitacion;
        this.dniHuesped = dniHuesped;
        this.fechaReserva = fechaReserva;
        this.idEmpleado = idEmpleado;
        this.piso = piso;
        this.listaEmpleados = listaEmpleados;
    }

    public int getIdReserva() {
        return idReserva;
    }

    public void setIdReserva(int idReserva) {
        this.idReserva = idReserva;
    }

    public String getNumHabitacion() {
        return numHabitacion;
    }

    public void setNumHabitacion(String numHabitacion) {
        this.numHabitacion = numHabitacion;
    }

    public String getFechaIngreso() {
        return fechaIngreso;
    }

    public void setFechaIngreso(String fechaIngreso) {
        this.fechaIngreso = fechaIngreso;
    }

    public String getFechaEgreso() {
        return fechaEgreso;
    }

    public void setFechaEgreso(String fechaEgreso) {
        this.fechaEgreso = fechaEgreso;
    }

    public String getTipoHabitacion() {
        return tipoHabitacion;
    }

    public void setTipoHabitacion(String tipoHabitacion) {
        this.tipoHabitacion = tipoHabitacion;
    }

    public String getDniHuesped() {
        return dniHuesped;
    }

    public void setDniHuesped(String dniHuesped) {
        this.dniHuesped = dniHuesped;
    }

    public String getFechaReserva() {
        return fechaReserva;
    }

    public void setFechaReserva(String fechaReserva) {
        this.fechaReserva = fechaReserva;
    }

    public String getIdEmpleado() {
        return idEmpleado;
    }

    public void setIdEmpleado(String idEmpleado) {
        this.idEmpleado = idEmpleado;
    }

    public String getPiso() {
        return piso;
    }

    public void setPiso(String piso) {
        this.piso = piso;
    }

    public List<Empleado> getListaEmpleados() {
        return listaEmpleados;
    }

    public void setListaEmpleados(List<Empleado> listaEmpleados) {
        this.listaEmpleados = listaEmpleados;
    }
    
    
}
