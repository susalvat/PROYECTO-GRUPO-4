/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.susana;
import java.sql.Date;
import java.util.ArrayList;

/**
 *
 * @author acer
 */
public class Parte {
   private double kmPrincipio;
   private double kmFinal;
   private Date fecha;
   private String estado;
   private double gastoGasoil;
   private double gastoAutopista;
   private double gastoDietas;
   private double gastosVarios;
   private String incidencias;
   private String validar;
   private double Exceso;
   private String usuario;
   
   private Aviso aviso;
   private ArrayList<Viaje> viajes;
   private Transportista transportista;

    public Parte() {
    }

    public Parte(double kmPrincipio, double kmFinal, Date fecha, String estado, double gastoGasoil, double gastoAutopista, double gastoDietas, double gastosVarios, String incidencias, String validar, double Exceso, String usuario, Aviso aviso, Transportista transportista) {
        this.kmPrincipio = kmPrincipio;
        this.kmFinal = kmFinal;
        this.fecha = fecha;
        this.estado = estado;
        this.gastoGasoil = gastoGasoil;
        this.gastoAutopista = gastoAutopista;
        this.gastoDietas = gastoDietas;
        this.gastosVarios = gastosVarios;
        this.incidencias = incidencias;
        this.validar = validar;
        this.Exceso = Exceso;
        this.usuario = usuario;
        this.aviso = aviso;
        this.transportista = transportista;
    }

    public double getKmPrincipio() {
        return kmPrincipio;
    }

    public void setKmPrincipio(double kmPrincipio) {
        this.kmPrincipio = kmPrincipio;
    }

    public double getKmFinal() {
        return kmFinal;
    }

    public void setKmFinal(double kmFinal) {
        this.kmFinal = kmFinal;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public double getGastoGasoil() {
        return gastoGasoil;
    }

    public void setGastoGasoil(double gastoGasoil) {
        this.gastoGasoil = gastoGasoil;
    }

    public double getGastoAutopista() {
        return gastoAutopista;
    }

    public void setGastoAutopista(double gastoAutopista) {
        this.gastoAutopista = gastoAutopista;
    }

    public double getGastoDietas() {
        return gastoDietas;
    }

    public void setGastoDietas(double gastoDietas) {
        this.gastoDietas = gastoDietas;
    }

    public double getGastosVarios() {
        return gastosVarios;
    }

    public void setGastosVarios(double gastosVarios) {
        this.gastosVarios = gastosVarios;
    }

    public String getIncidencias() {
        return incidencias;
    }

    public void setIncidencias(String incidencias) {
        this.incidencias = incidencias;
    }

    public String getValidar() {
        return validar;
    }

    public void setValidar(String validar) {
        this.validar = validar;
    }

    public double getExceso() {
        return Exceso;
    }

    public void setExceso(double Exceso) {
        this.Exceso = Exceso;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public Aviso getAviso() {
        return aviso;
    }

    public void setAviso(Aviso aviso) {
        this.aviso = aviso;
    }

    public Transportista getTransportista() {
        return transportista;
    }

    public void setTransportista(Transportista transportista) {
        this.transportista = transportista;
    }

   
}
