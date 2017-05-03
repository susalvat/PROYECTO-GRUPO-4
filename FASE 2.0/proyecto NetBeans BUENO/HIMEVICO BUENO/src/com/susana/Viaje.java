/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.susana;

import com.susana.Entidades.Parte;

/**
 *
 * @author acer
 */
public class Viaje {
    
    private int idViaje;
    private int horaSalida;
    private int horaLlegada;
    private int totalHorasViaje;
    
    
    //metodo total horas viajes (idViaje, usuario, fechaParte)?
    private Parte parte;

    public Viaje() {
    }

    public Viaje(int idViaje, int horaSalida, int horaLlegada, int totalHorasViaje, Parte parte) {
        this.idViaje = idViaje;
        this.horaSalida = horaSalida;
        this.horaLlegada = horaLlegada;
        this.totalHorasViaje = totalHorasViaje;
        this.parte = parte;
    }

    public int getIdViaje() {
        return idViaje;
    }

    public void setIdViaje(int idViaje) {
        this.idViaje = idViaje;
    }

    public int getHoraSalida() {
        return horaSalida;
    }

    public void setHoraSalida(int horaSalida) {
        this.horaSalida = horaSalida;
    }

    public int getHoraLlegada() {
        return horaLlegada;
    }

    public void setHoraLlegada(int horaLlegada) {
        this.horaLlegada = horaLlegada;
    }

    public int getTotalHorasViaje() {
        return totalHorasViaje;
    }

    public void setTotalHorasViaje(int totalHorasViaje) {
        this.totalHorasViaje = totalHorasViaje;
    }

    public Parte getParte() {
        return parte;
    }

    public void setParte(Parte parte) {
        this.parte = parte;
    }
    
    
    
    
}
