package com.utp.bodegajavaweb.modelo;

import com.utp.bodegajavaweb.entidades.Producto;
import java.util.ArrayList;
import java.util.List;

public class ProductoMemoryData {
    
    private static List<Producto> lista = new ArrayList<Producto>();
    
    public ProductoMemoryData() {
        lista.add(new Producto(1,"Carne de Ternera", "CARNES, AVES Y PESCADOS", "bisteck.png", "Bisteck de Tapa x Kg", "San Fernando", 13.90));
        lista.add(new Producto(2,"Guiso de Cerdo x Kg", "CARNES, AVES Y PESCADOS", "guiso_cerdo.png", "Esto es un chanchito", "San Fernando", 26.90));
        lista.add(new Producto(3,"Arandano congelado 500 gr.", "CONGELADOS", "arandano_congelado.jpg", "Arandanos congelados sin azucares", "Feat", 6.50));
        lista.add(new Producto(4,"Champiñones 500gr.", "CONGELADOS", "champiñones_congelados.jpg", "Champiñones congelados sin sal", "Feat", 6.50));
        lista.add(new Producto(5,"Crema de Leche", "LACTEOS", "crema_leche.png", "Esto es una crema", "Gloria", 8.90));
        lista.add(new Producto(6,"Queso Fresco", "LACTEOS", "queso_fresco.png", "Queso fresco de 150 gramos", "Bonle", 34.50));
        lista.add(new Producto(7,"Manzana Golden x Kg.", "FRUTAS Y VERDURAS", "manzana_golden.jpg", "Manzana golden verde", "Pronasel", 5.00));
        lista.add(new Producto(8,"Platano seda 5Und.", "FRUTAS Y VERDURAS", "platano_seda.jpg", "Platano seda 5 unidades", "Pronasel", 3.00));
        lista.add(new Producto(9,"Pan francés", "PANADERIA Y PASTELERIA", "pan_frances.jpg", "Pan frances grande recien horneado", "Repaspan", 6.50));
        lista.add(new Producto(10,"Flan 150gr.", "PANADERIA Y PASTELERIA", "flan.jpg", "Rebanada de flan de vainilla de 150 gramos", "Repaspan", 5.00));
        lista.add(new Producto(11,"Sixpack pilsen 355ml.", "BEBIDAS", "cerveza_pilsen.jpg", "Cerveza pilsen en lata Sixpack 355ml", "Pilsen", 21.50));
        lista.add(new Producto(12,"Gaseosa Incakola 500ml.", "BEBIDAS", "incakola.jpg", "Gaseosa Incakola sabor original en botella 500ml", "Inca kola", 4.00));
        lista.add(new Producto(13,"Jabon Protex Pack x3", "CUIDADO PERSONAL", "jabon.png", "Pack x3 Jabón Antibacterial Nutri Protect Barra 110 gramos", "Protex", 11.40));
        lista.add(new Producto(14,"Gel Antibacterial 1L", "CUIDADO PERSONAL", "gel.png", "Gel Antibacterial Instan clean Sin Fragancia", "Instan clean", 20.50));
        lista.add(new Producto(15,"Jabon Bolivar 190 gr.", "LIMPIEZA", "jabon_bolivar.png", "Jab[on en Barra BOLÍVAR Floral Paquete 190g", "Bolivar", 3.50));
        lista.add(new Producto(16,"Escoba VIRUTEX", "LIMPIEZA", "escoba.png", "Escoba VIRUTEX La Poderosa", "Virutex", 15.90));
    }
    
    public List<Producto> obtenerLista() {
        return ProductoMemoryData.lista;
    }
    
    public Producto obtenerProducto(int id){
        for(Producto p : lista){
            if(p.getId() == id){
                return p;
            }
        }
        return null;
    }
    
    public void agregar(Producto producto) {
        lista.add(producto);
    }
    
    public void modificar(Producto producto) {
        for(int i = 0; i < ProductoMemoryData.lista.size(); i++){
            Producto p = ProductoMemoryData.lista.get(i);
            if(p.getId() == producto.getId()){
                ProductoMemoryData.lista.set(i, producto);
            }
        }
    }
    
    public boolean eliminar(int id) {
        for(Producto p : ProductoMemoryData.lista) {
            if(p.getId() == id) {
                return ProductoMemoryData.lista.remove(p);
            }
        }
        return false;
    }
}
