package com.utp.bodegajavaweb.entidades;

public class Producto {
    private int id;
    private String nombre;
    private String categoria;
    private String rutaImagen;
    private String descripcion;
    private String proveedor;
    private double precio;

    public Producto(int id, String nombre, String categoria, String rutaImagen, String descripcion, String proveedor, double precio) {
        this.id = id;
        this.nombre = nombre;
        this.categoria = categoria;
        this.rutaImagen = rutaImagen;
        this.descripcion = descripcion;
        this.proveedor = proveedor;
        this.precio = precio;
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

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getRutaImagen() {
        return rutaImagen;
    }

    public void setRutaImagen(String rutaImagen) {
        this.rutaImagen = rutaImagen;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getProveedor() {
        return proveedor;
    }

    public void setProveedor(String proveedor) {
        this.proveedor = proveedor;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }
}
