package Model;

import Config.db;
import Entity.Producto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductoModel {
    
    private Connection connection;
    
    public ProductoModel() {
        db con = new db();
        connection = con.Conexion();
    }
    
    public List<Producto> obtenerProductos() {
        List<Producto> productos = new ArrayList<>();
        String sql = "SELECT * FROM productos";
        
        try{
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();
            while(resultSet.next()){
                Producto producto = new Producto();
                producto.setId(resultSet.getInt("id"));
                producto.setNombre(resultSet.getString("nombre"));
                producto.setCategoria(resultSet.getString("categoria"));
                producto.setImagen(resultSet.getString("imagen"));
                producto.setDescripcion(resultSet.getString("descripcion"));
                producto.setProveedor(resultSet.getString("proveedor"));
                producto.setPrecio(resultSet.getDouble("precio"));
                producto.setStock(resultSet.getInt("stock"));
                productos.add(producto);
            }
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        return productos;
    }

    public Producto obtenerProducto(int id) {
        String sql = "SELECT * FROM productos WHERE id = ? LIMIT 1";
        try{
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, Integer.toString(id));
            ResultSet resultSet = statement.executeQuery();
            while(resultSet.next()){
                Producto producto = new Producto();
                producto.setId(resultSet.getInt("id"));
                producto.setNombre(resultSet.getString("nombre"));
                producto.setCategoria(resultSet.getString("categoria"));
                producto.setImagen(resultSet.getString("imagen"));
                producto.setDescripcion(resultSet.getString("descripcion"));
                producto.setProveedor(resultSet.getString("proveedor"));
                producto.setPrecio(resultSet.getDouble("precio"));
                producto.setStock(resultSet.getInt("stock"));
                return producto;
            }
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }
}
