/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package helper;

import bean.Alumni;
import bean.AlumniHomecoming;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Justine Clemente
 */
public class AlumniCRUD {
    public static Alumni readAlumni(Connection con,int alumniId) throws SQLException{
        try (PreparedStatement stmt = con.prepareStatement("SELECT * FROM ALUMNI a LEFT JOIN IMAGE i on i.img_id=a.img_id WHERE post_id=?;")) {
            stmt.setInt(1, alumniId);
            try (ResultSet rs = stmt.executeQuery()) {
                rs.next();
                return new Alumni(rs);
            }
        }
   }
    
     public static int editAlumni(Connection con,int alumniId,String description) throws SQLException {
        try (PreparedStatement stmt = con.prepareStatement("UPDATE ALUMNI SET description=? WHERE post_id=?")) {
            stmt.setString(1, description);
            stmt.setInt(2, alumniId);
            stmt.executeUpdate();
            return 1;
        }
    }
    public static int editAlumniImage(Connection con,int alumniId,int img_id) throws SQLException {
        try (PreparedStatement stmt = con.prepareStatement("UPDATE ALUMNI SET img_id=? WHERE post_id=?")) {
            stmt.setInt(1, img_id);
            stmt.setInt(2, alumniId);
            stmt.executeUpdate();
            return 1;
        }
    }
    
    public static ArrayList<AlumniHomecoming> listAbout(Connection con) throws SQLException {
        ArrayList<AlumniHomecoming> alumni = new ArrayList<>();
        try (PreparedStatement stmt = con.prepareStatement("SELECT * FROM ALUMNI_HOMECOMING a JOIN IMAGE i on i.img_id=a.img_id;")) {
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    alumni.add(new AlumniHomecoming(rs));
                }
            }
        }
        return alumni;
    }
    
    public static int createAlumniHomecoming(Connection con, AlumniHomecoming alumni) throws SQLException {
        try (PreparedStatement stmt = con.prepareStatement("INSERT INTO Alumni_Homecoming (caption,img_id) VALUES(?,?)")) {
            stmt.setString(1, alumni.getCaption());
            stmt.setInt(2, alumni.getImage().getImageId());
            stmt.executeUpdate();
            return 1;  
        }
    }
    
}
