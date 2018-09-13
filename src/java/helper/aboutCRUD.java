/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package helper;
import bean.About;
import bean.Image;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
/**
 *
 * @author Justine Clemente
 */
public class aboutCRUD {
    public static About readAbout(Connection con,int aboutId) throws SQLException{
        try (PreparedStatement stmt = con.prepareStatement("SELECT * FROM About WHERE post_id = ?")) {
            stmt.setInt(1, aboutId);
            try (ResultSet rs = stmt.executeQuery()) {
                rs.next();
                return new About(rs);
            }
        }
   }
    
    public static int readAbout(Connection con, About about) throws SQLException {
        try (PreparedStatement stmt = con.prepareStatement("SELECT post_id FROM About WHERE description = ?")) {
            stmt.setString(1, about.getDescription());
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return rs.getInt("post_id");
                } else {
                    return -1;
                }
            }
        }
    }
    
    public static ArrayList<About> listAbout(Connection con) throws SQLException {
        ArrayList<About> abouts = new ArrayList<>();
        try (PreparedStatement stmt = con.prepareStatement("SELECT * FROM About")) {
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    abouts.add(new About(rs));
                }
            }
        }
        return abouts;
    }
    public static int editAbout(Connection con,int aboutId,String description) throws SQLException {
        try (PreparedStatement stmt = con.prepareStatement("UPDATE ABOUT SET description=? WHERE post_id=?")) {
            stmt.setString(1, description);
            stmt.setInt(2, aboutId);
            stmt.executeUpdate();
            return 1;
        }
    }
}
