package Model;

import Config.db;
import Entity.Producto;
import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.io.FileUtils;

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
    
    
    public String saveImage(String imagePath) throws IOException {
    File imageFile = new File(imagePath);
FileUtils.copyFile(imageFile, new File("assets/img/productos/" + imageFile.getName()));

    return "assets/img/productos/" + imageFile.getName();
}


  public void addProducto(Producto producto) throws SQLException {

    String sql = "INSERT INTO productos (nombre, descripcion, proveedor, precio, categoria, stock, imagen) VALUES (?, ?, ?, ?, ?, ?, ?)";
    PreparedStatement statement = connection.prepareStatement(sql);
    statement.setString(1, producto.getNombre());
    statement.setString(2, producto.getDescripcion());
    statement.setString(3, producto.getProveedor());
    statement.setDouble(4, producto.getPrecio());
    statement.setString(5, producto.getCategoria());
    statement.setInt(6, producto.getStock());
    statement.setString(7, producto.getImagen());
    statement.executeUpdate();
}



}
