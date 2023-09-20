package Model;

import Config.db;
import Entity.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UsuarioModel {
    private Connection connection;
    
    public UsuarioModel() {
        db con = new db();
        connection = con.Conexion();
    }
    
    public Usuario login(String correo, String password) {
        Usuario usuario = new Usuario();
        String sql = "SELECT * FROM usuarios WHERE correo = ? AND password = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, correo);
            statement.setString(2, password);
            ResultSet resultSet = statement.executeQuery();
            while(resultSet.next()){
                usuario.setId(resultSet.getInt("id"));
                usuario.setNombre(resultSet.getString("nombre"));
                usuario.setApellido(resultSet.getString("apellido"));
                usuario.setCorreo(resultSet.getString("correo"));
                usuario.setPassword(resultSet.getString("password"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return usuario;
    }
}
