package com.utp.bodegajavaweb.modelo;

import com.utp.bodegajavaweb.config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UsuarioDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    public Usuario validar(String correo, String password){
        Usuario usuario = new Usuario();
        String sql = "select * from usuarios where correo =? and password =?";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, correo);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                usuario.setId(rs.getInt("id"));
                usuario.setCorreo(rs.getString("nombre"));
                usuario.setApellido(rs.getString("apellido"));
                usuario.setCorreo(rs.getString("correo"));
                usuario.setPassword(rs.getString("password"));
            }
        }
        catch(Exception e){
            
        }
        return usuario;
    }
}
