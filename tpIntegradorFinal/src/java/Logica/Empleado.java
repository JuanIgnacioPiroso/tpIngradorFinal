package Logica;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity

public class Empleado implements Serializable {
    
    @Id
    @GeneratedValue( strategy = GenerationType.AUTO)
    long idEmpleado;
    @Basic
     String dni;
    String nya;
    String fechaNac;
    String direccion;
    String cargo;
    String contrasenia;

    public Empleado() {
    }

    public Empleado(long idEmpleado, String dni, String nya, String fechaNac, String direccion, String cargo, String contrasenia) {
        this.idEmpleado = idEmpleado;
        this.dni = dni;
        this.nya = nya;
        this.fechaNac = fechaNac;
        this.direccion = direccion;
        this.cargo = cargo;
        this.contrasenia = contrasenia;
    }

    public long getIdEmpleado() {
        return idEmpleado;
    }

    public void setIdEmpleado(long idEmpleado) {
        this.idEmpleado = idEmpleado;
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

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public String getContrasenia() {
        return contrasenia;
    }

    public void setContrasenia(String contrasenia) {
        this.contrasenia = contrasenia;
    }
    
    
    
    

}
