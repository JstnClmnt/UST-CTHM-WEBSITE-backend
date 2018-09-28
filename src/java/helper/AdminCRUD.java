/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package helper;

import bean.Administration;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Justine Clemente
 */
public class AdminCRUD {
    public static Administration readAdministration(Connection con,int adminId) throws SQLException{
        try (PreparedStatement stmt = con.prepareStatement("SELECT * FROM ADMINISTRATION a JOIN Image i WHERE i.img_id=a.img_id AND admin_id = ?;")) {
            stmt.setInt(1, adminId);
            try (ResultSet rs = stmt.executeQuery()) {
                rs.next();
                return new Administration(rs);
            }
        }
   }
    public static int readAdministration(Connection con, Administration admin) throws SQLException {
        try (PreparedStatement stmt = con.prepareStatement("SELECT admin_id FROM Administration WHERE full_name = ?")) {
            stmt.setString(1, admin.getFullName());
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return rs.getInt("admin_id");
                } else {
                    return -1;
                }
            }
        }
    }
    
    
    public static ArrayList<Administration> listAdministration(Connection con) throws SQLException {
        ArrayList<Administration> admin = new ArrayList<>();
        try (PreparedStatement stmt = con.prepareStatement("SELECT * FROM Administration a JOIN Image i WHERE i.img_id=a.img_id ")) {
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    admin.add(new Administration(rs));
                }
            }
        }
        return admin;
    }
    
    public static int createAdministration(Connection con, Administration administration) throws SQLException {
        try (PreparedStatement stmt = con.prepareStatement("INSERT INTO Administration (full_name,position,img_id) VALUES(?,?,?);")) {
            stmt.setString(1, administration.getFullName());
            stmt.setString(2, administration.getPosition());
            stmt.setInt(3, administration.getImage().getImageId());
            stmt.executeUpdate();
            return readAdministration(con,administration);  
        }
    }
    
        
    public static int createAdministrationNoImage(Connection con, Administration administration) throws SQLException {
        try (PreparedStatement stmt = con.prepareStatement("INSERT INTO Administration (full_name,position) VALUES(?,?);")) {
            stmt.setString(1, administration.getFullName());
            stmt.setString(2, administration.getPosition());
            stmt.executeUpdate();
            return readAdministration(con,administration);  
        }
    }
    
    public static int deleteAdministration(Connection con, int administrationId) throws SQLException {
        try (PreparedStatement stmt = con.prepareStatement("DELETE FROM Administration WHERE admin_id=?;")) {
            stmt.setInt(1, administrationId);
            stmt.executeUpdate();
            return 1;  
        }
    }
    
    public static int editAdminNoImage(Connection con, Administration administration) throws SQLException{
        try (PreparedStatement stmt = con.prepareStatement("UPDATE ADMINISTRATION SET full_name=?,position=? WHERE admin_id=?;")) {
            stmt.setString(1, administration.getFullName());
            stmt.setString(2, administration.getPosition());
            stmt.setInt(3, administration.getAdminId());
            System.out.println(stmt.toString());
            stmt.executeUpdate();
            return 1;  
        }
    }
    
    public static int editAdmin(Connection con, Administration administration) throws SQLException{
        try (PreparedStatement stmt = con.prepareStatement("UPDATE ADMINISTRATION SET full_name=?,position=?,img_id=? WHERE admin_id=?;")) {
            stmt.setString(1, administration.getFullName());
            stmt.setString(2, administration.getPosition());
            stmt.setInt(3, administration.getImage().getImageId());
            stmt.setInt(4, administration.getAdminId());
            System.out.println(stmt.toString());
            stmt.executeUpdate();
            return 1;  
        }
    }
    
}
