/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.susana;

/**
 *
 * @author acer
 */
public class Aviso {

    private String fechaAviso;
    private String comentario;

    private Parte parte;
    private Trabajador trabajador;

    public Aviso(String fechaAviso, String comentario, Parte parte) {
        this.fechaAviso = fechaAviso;
        this.comentario = comentario;
        this.parte = parte;
    }

    //metodo listado avisos(usuario, fechaaviso)?
    public Aviso() {
    }

    public String getFechaAviso() {
        return fechaAviso;
    }

    public void setFechaAviso(String fechaAviso) {
        this.fechaAviso = fechaAviso;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    public Parte getParte() {
        return parte;
    }

    public void setParte(Parte parte) {
        this.parte = parte;
    }

}