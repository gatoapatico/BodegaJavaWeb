package Model;

import Config.db;
import Entity.DetallePedido;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PedidoModel {

    private Connection connection;

    public PedidoModel() {
        db con = new db();
        connection = con.Conexion();
    }

    public boolean crearPedido(String fechaPedido, int usuarioId, int metodoEnvio, String direccionEntrega,
                            String fechaEntrega, String horaEntrega, String responsableDocumento, String responsableNombre,
                            String numeroTarjetaPago, double totalPago, String codigoUnico) {

        String sql = "INSERT INTO pedido VALUES (null, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, fechaPedido);
            statement.setInt(2, usuarioId);
            statement.setInt(3, metodoEnvio);
            statement.setString(4, direccionEntrega);
            statement.setString(5, fechaEntrega);
            statement.setString(6, horaEntrega);
            statement.setString(7, responsableDocumento);
            statement.setString(8, responsableNombre);
            statement.setString(9, numeroTarjetaPago);
            statement.setDouble(10, totalPago);
            statement.setString(11, codigoUnico);
            return statement.executeUpdate() > 0;
        }
        catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean crearDetallePedido(int pedidoId, int productoId, int cantidad, double precio, double subtotal) {
        String sql = "INSERT INTO detallepedido VALUES (null, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, pedidoId);
            statement.setInt(2, productoId);
            statement.setInt(3, cantidad);
            statement.setDouble(4, precio);
            statement.setDouble(5, subtotal);
            return statement.executeUpdate() > 0;
        }
        catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public List<DetallePedido> obtenerDetalles(int pedidoId) {
        List<DetallePedido> detalles = new ArrayList<>();
        String sql = "SELECT * FROM detallepedido WHERE pedido_id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, pedidoId);
            ResultSet resultSet = statement.executeQuery();
            while(resultSet.next()) {
                DetallePedido detalle = new DetallePedido();
                detalle.setId(resultSet.getInt("id"));
                detalle.setPedidoId(resultSet.getInt("pedido_id"));
                detalle.setProductoId(resultSet.getInt("producto_id"));
                detalle.setCantidad(resultSet.getInt("cantidad"));
                detalle.setPrecio(resultSet.getDouble("precio"));
                detalle.setSubtotal(resultSet.getDouble("subtotal"));
                detalles.add(detalle);
            }
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        return detalles;
    }

    public int obtenerIdPedido(String codigoUnico) {
        String sql = "SELECT * FROM pedido WHERE codigo_recojo = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, codigoUnico);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                return resultSet.getInt("id");
            }
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        return -1;
    }
}