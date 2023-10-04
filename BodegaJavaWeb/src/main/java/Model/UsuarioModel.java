package Model;

import Config.db;
import Entity.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
    
    public boolean registrar(String nombre, String apellido, String correo, String password) {
        String sqlValidation = "SELECT * FROM usuarios WHERE correo = ? LIMIT 1";
        try {
            PreparedStatement validacion = connection.prepareStatement(sqlValidation);
            validacion.setString(1, correo);
            ResultSet validationResult = validacion.executeQuery();
            if (validationResult.next()) {
                return false;
            } else {
                String sql = "INSERT INTO usuarios VALUES (null, ?, ?, ?, ?, null, null, null)";
                PreparedStatement statement = connection.prepareStatement(sql);
                statement.setString(1, nombre);
                statement.setString(2, apellido);
                statement.setString(3, correo);
                statement.setString(4, password);
                return statement.executeUpdate() > 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    
    public List<Usuario> obtenerUsuarios() {
        List<Usuario> usuarios = new ArrayList<>();
        String sql = "SELECT * FROM usuarios";
        
        try{
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();
            while(resultSet.next()){
                Usuario usuario = new Usuario();
                usuario.setId(resultSet.getInt("id"));
                usuario.setNombre(resultSet.getString("nombre"));
                usuario.setApellido(resultSet.getString("apellido"));
                usuario.setCorreo(resultSet.getString("correo"));
                usuario.setPassword(resultSet.getString("password"));
                usuarios.add(usuario);
            }
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        return usuarios;
    }
}
