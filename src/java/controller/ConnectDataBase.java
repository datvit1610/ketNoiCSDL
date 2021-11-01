/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author admin
 */
public class ConnectDataBase {

    private Connection conn = null;
    String path = "jdbc:mysql://localhost/java_web";

    public ConnectDataBase() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            this.conn = DriverManager.getConnection(path, "root", "");

        } catch (Exception ex) {
            Logger.getLogger(ConnectDataBase.class.getName()).log(Level.SEVERE, null, ex);

        }
    }

    public ResultSet getData() {

        ResultSet rs = null;
        Statement st = null;
        String sql = "select * from hanghoa";
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);
        } catch (Exception ex) {
            Logger.getLogger(ConnectDataBase.class.getName()).log(Level.SEVERE, null, ex);

        }
        return rs;
    }

    public int insertDate(int id, String ten, int so_luong, int don_gia) {
        int result = -1;
        String sql = "insert into hanghoa(id,ten,so_luong,don_gia) values(?,?,?,?)";
        try {
            PreparedStatement pp = conn.prepareStatement(sql);
            pp.setInt(1, id);
            pp.setString(2, ten);
            pp.setInt(3, so_luong);
            pp.setInt(4, don_gia);
            result = pp.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(ConnectDataBase.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }

    public void delete(int id) {
        String sql = "delete from hanghoa where id = ?";
        PreparedStatement pp = null;
        try {
            pp = conn.prepareCall(sql);
            pp.setInt(1, id);
            pp.execute();
        } catch (Exception ex) {
            Logger.getLogger(ConnectDataBase.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public ResultSet find (int id)
    {
        String sql = "select * from hanghoa where id like ?";
        ResultSet re = null;
        PreparedStatement pp = null;
        try {
            pp = conn.prepareStatement(sql);
            pp.setInt(1, id);
            re = pp.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(ConnectDataBase.class.getName()).log(Level.SEVERE, null, ex);
        }
        return re;
    }
    
    public ResultSet find (String ten)
    {
        String sql = "select * from hanghoa where ten like ?";
        ResultSet re = null;
        PreparedStatement pp = null;
        try {
            pp = conn.prepareStatement(sql);
            pp.setString(1, ten);
            re = pp.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(ConnectDataBase.class.getName()).log(Level.SEVERE, null, ex);
        }
        return re;
    }
    
    public void update(int id, Product newpro)
    {
        PreparedStatement pp = null;
        String sql = "update hanghoa set ten=?, so_luong=?, don_gia=? where id=?";
        try {
            pp = conn.prepareStatement(sql);
            
            pp.setString(1, newpro.getTen());
            pp.setInt(2, newpro.getSo_luong());
            pp.setInt(3, newpro.getDon_gia());
            pp.setInt(4, id);
            pp.execute();
        } catch (SQLException ex) {
            Logger.getLogger(ConnectDataBase.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
//    public void inthongtin() throws SQLEception
//    {
//        ConnectDataBase ob = new ConnectDataBase();
//        ResultSet rs = ob.getData();
//        System.err.println("In ra cac mat hang database");
//        while(rs.next())
//        {
//            System.err.println("Id:" + rs.getInt(1));
//        }
//    }

    public static void main(String[] args) {
        
        ConnectDataBase kn = new ConnectDataBase();
        ResultSet rs = kn.getData();
        try {
            while (rs.next()) {
                System.out.println("ID:" + rs.getInt(1) + "Ten SP" + rs.getString(2) + "So luong" + rs.getInt(3) + "Don gia" + rs.getInt(4));
            }

        } catch (SQLException ex) {
            Logger.getLogger(ConnectDataBase.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
