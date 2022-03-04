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
public class Habitacion implements Serializable {
    
    @Id
     @GeneratedValue( strategy = GenerationType.AUTO)
    int idHabitacion;
    @Basic
    String numHabitacion;       
    String piso;
    String tematica;
    String tipo;
    Double precio;
    @OneToMany
    List<Reserva> resv;

    public Habitacion() {
    }

    public Habitacion(int idHabitacion, String numHabitacion, String piso, String tematica, String tipo, Double precio, List<Reserva> resv) {
        this.idHabitacion = idHabitacion;
        this.numHabitacion = numHabitacion;
        this.piso = piso;
        this.tematica = tematica;
        this.tipo = tipo;
        this.precio = precio;
        this.resv = resv;
    }

    public int getIdHabitacion() {
        return idHabitacion;
    }

    public void setIdHabitacion(int idHabitacion) {
        this.idHabitacion = idHabitacion;
    }

    public String getNumHabitacion() {
        return numHabitacion;
    }

    public void setNumHabitacion(String numHabitacion) {
        this.numHabitacion = numHabitacion;
    }

    public String getPiso() {
        return piso;
    }

    public void setPiso(String piso) {
        this.piso = piso;
    }

    public String getTematica() {
        return tematica;
    }

    public void setTematica(String tematica) {
        this.tematica = tematica;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public Double getPrecio() {
        return precio;
    }

    public void setPrecio(Double precio) {
        this.precio = precio;
    }

    public List<Reserva> getResv() {
        return resv;
    }

    public void setResv(List<Reserva> resv) {
        this.resv = resv;
    }

  

}
