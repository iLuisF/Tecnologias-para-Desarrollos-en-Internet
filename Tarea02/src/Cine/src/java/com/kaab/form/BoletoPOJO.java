/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kaab.form;

import java.io.Serializable;
import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
/**
 *
 * @author Ulises
 */
@Entity
@Table(name="BOLETOS")
public class BoletoPOJO{
    
    @Id
    @Column(name="id")
    @GeneratedValue
    private Integer id;
    
    @Column(name="nombre")
    private String nombre;
    
    @Column(name="titulo_pelicula")
    private String tituloPelicula;
    
    @Column(name="precio")
    private float precio;
    
    @Column(name="sala")
    private int sala;
    
    @Column(name="asiento")
    private String asiento;
    
    @Column(name="cine")
    private String cine;
    
    @Column(name="fecha_hora")
    private Timestamp fechaHora;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getTit_peli() {
        return tituloPelicula;
    }

    public void setTit_peli(String tituloPelicula) {
        this.tituloPelicula = tituloPelicula;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
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
