
package com.kaab.internet.tarea02.modelo;

import java.sql.Timestamp;

/**
 * Modela el objeto boleto.
 * 
 * @author Flores González Luis.
 */
public class Boleto {

    private int id;
    private String nombre;
    private String tituloPelicula;
    private double precio;
    private int sala;
    private String asiento;
    private String cine;
    private Timestamp fechaHora;

    public Boleto(String nombre, String tituloPelicula, double precio, int sala,
            String asiento, String cine, Timestamp fechaHora) {        
        this.nombre = nombre;
        this.tituloPelicula = tituloPelicula;
        this.precio = precio;
        this.sala = sala;
        this.asiento = asiento;
        this.cine = cine;
        this.fechaHora = fechaHora;
    }

    public Boleto(int id, String nombre, String tituloPelicula, double precio,
            int sala, String asiento, String cine, Timestamp fechaHora) {
        this.id = id;
        this.nombre = nombre;
        this.tituloPelicula = tituloPelicula;
        this.precio = precio;
        this.sala = sala;
        this.asiento = asiento;
        this.cine = cine;
        this.fechaHora = fechaHora;
    }
       
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getTituloPelicula() {
        return tituloPelicula;
    }

    public void setTituloPelicula(String tituloPelicula) {
        this.tituloPelicula = tituloPelicula;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public int getSala() {
        return sala;
    }

    public void setSala(int sala) {
        this.sala = sala;
    }

    public String getAsiento() {
        return asiento;
    }

    public void setAsiento(String asiento) {
        this.asiento = asiento;
    }

    public String getCine() {
        return cine;
    }

    public void setCine(String cine) {
        this.cine = cine;
    }

    public Timestamp getFechaHora() {
        return fechaHora;
    }

    public void setFechaHora(Timestamp fechaHora) {
        this.fechaHora = fechaHora;
    }
       
}
