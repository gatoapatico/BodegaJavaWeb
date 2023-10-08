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

        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
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
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return productos;
    }

    public void addProducto(String nombre, String descripcion, String proveedor, Double precio, String categoria, Integer stock, String imagen)
            throws SQLException {

        String sql = "INSERT INTO productos (nombre, descripcion, proveedor, precio, categoria, stock, imagen) VALUES (?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, nombre);
        statement.setString(2, descripcion);
        statement.setString(3, proveedor);
        statement.setDouble(4, precio);
        statement.setString(5, categoria);
        statement.setInt(6, stock);
        statement.setString(7, imagen);
        statement.executeUpdate();
    }

    public void deleteProducto(int id) throws SQLException {
        String sql = "DELETE FROM productos WHERE id = ?";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, id);
        statement.executeUpdate();
    }

    public Producto getProductoById(int id) throws SQLException {
        String sql = "SELECT * FROM productos WHERE id = ?";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, id);
        ResultSet resultSet = statement.executeQuery();

        if (resultSet.next()) {
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
        } else {
            return null;
        }
    }
    
    public void updateProducto(String nombre, String descripcion, String proveedor, Double precio, String categoria, Integer stock) throws SQLException {
    String sql = "UPDATE productos SET nombre = ?, descripcion = ?, proveedor = ?, precio = ?, categoria = ?, stock = ?";
    PreparedStatement statement = connection.prepareStatement(sql);
    statement.setString(1, nombre);
    statement.setString(2, descripcion);
    statement.setString(3, proveedor);
    statement.setDouble(4, precio);
    statement.setString(5, categoria);
    statement.setInt(6, stock);
    statement.executeUpdate();
}
}
