
package com.kaab.modelos;

import java.sql.Timestamp;
import java.util.List;
import org.springframework.web.multipart.MultipartFile;

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
    private List<MultipartFile> files;

    public Boleto(String nombre, String tituloPelicula, double precio, int sala,
            String asiento, String cine, Timestamp fechaHora, List<MultipartFile> files) {        
        this.nombre = nombre;
        this.tituloPelicula = tituloPelicula;
        this.precio = precio;
        this.sala = sala;
        this.asiento = asiento;
        this.cine = cine;
        this.fechaHora = fechaHora;
        this.files = files;
    }

    public Boleto(int id, String nombre, String tituloPelicula, double precio,
            int sala, String asiento, String cine, Timestamp fechaHora, List<MultipartFile> files) {
        this.id = id;
        this.nombre = nombre;
        this.tituloPelicula = tituloPelicula;
        this.precio = precio;
        this.sala = sala;
        this.asiento = asiento;
        this.cine = cine;
        this.fechaHora = fechaHora;
        this.files = files;
    }

    public Boleto() {
        
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
    
    public void setFiles(List<MultipartFile> f){
        this.files = f;
    }
    
    public List<MultipartFile> getFiles(){
        return this.files;
    }
       
}