package com.emergentes.utiles;

public class registro {
   private int id;
   private String fecha;
   private String contenido;
   private String autor;

    public registro() {
    }

    public registro(int id, String fecha, String contenido, String autor) {
        this.id = id;
        this.fecha = fecha;
        this.contenido = contenido;
        this.autor = autor;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getContenido() {
        return contenido;
    }

    public void setContenido(String contenido) {
        this.contenido = contenido;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

   
   
}
