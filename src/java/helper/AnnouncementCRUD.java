/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package helper;

import bean.Announcements;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Justine Clemente
 */
public class AnnouncementCRUD {
    public static ArrayList<Announcements> listLatestAnnouncements(Connection con) throws SQLException {
        ArrayList<Announcements> announcements = new ArrayList<>();
        try (PreparedStatement stmt = con.prepareStatement("SELECT * FROM ANNOUNCEMENTS ORDER BY published_date DESC limit 3;")) {
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    announcements.add(new Announcements(rs));
                }
            }
        }
        return announcements;
    }
    public static ArrayList<Announcements> listAnnouncements(Connection con) throws SQLException {
        ArrayList<Announcements> announcements = new ArrayList<>();
        try (PreparedStatement stmt = con.prepareStatement("SELECT * FROM ANNOUNCEMENTS ORDER BY published_date DESC;")) {
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    announcements.add(new Announcements(rs));
                }
            }
        }
        return announcements;
    }
    
    public static int readAnnouncements(Connection con,Announcements announcement) throws SQLException {
        ArrayList<Announcements> announcements = new ArrayList<>();
        try (PreparedStatement stmt = con.prepareStatement("SELECT * FROM ANNOUNCEMENTS WHERE title=?;")) {
            stmt.setString(1, announcement.getAnnouncement());
                try (ResultSet rs = stmt.executeQuery()) {
                    rs.next();
                    return rs.getInt("announcement_id");
                }
        }
    }
    
    public static Announcements readAnnouncements(Connection con,int announcementID) throws SQLException {
        try (PreparedStatement stmt = con.prepareStatement("SELECT * FROM ANNOUNCEMENTS WHERE announcement_id=?;")) {
            stmt.setInt(1, announcementID);
                try (ResultSet rs = stmt.executeQuery()) {
                    rs.next();
                    return new Announcements(rs);
                }
        }
    }
    public static int createAnnouncement(Connection con,Announcements announcement) throws SQLException{
        try (PreparedStatement stmt = con.prepareStatement("INSERT INTO ANNOUNCEMENTS(published_date,title,description) VALUES(?,?,?);")) {
            stmt.setString(1, announcement.getPublishedDate());
            stmt.setString(2, announcement.getAnnouncement());
            stmt.setString(3, announcement.getDescription());
            stmt.executeUpdate();
            return readAnnouncements(con,announcement);  
        }
    }
    
    public static int editAnnouncement(Connection con,Announcements announcement) throws SQLException{
            try (PreparedStatement stmt = con.prepareStatement("UPDATE Announcements SET published_date=?,title=?,description=? WHERE announcement_id=?;")) {
            stmt.setString(1, announcement.getPublishedDate());
            stmt.setString(2, announcement.getAnnouncement());
            stmt.setString(3, announcement.getDescription());
            stmt.setInt(4, announcement.getAnnouncementID());
            System.out.println(stmt.toString());
            stmt.executeUpdate();
            return 1;  
        }
    }
     public static int deleteAnnouncement(Connection con,int announcementID) throws SQLException{
            try (PreparedStatement stmt = con.prepareStatement("DELETE FROM ANNOUNCEMENTS WHERE announcement_id=?;")) {
            stmt.setInt(1, announcementID);
            stmt.executeUpdate();
            return 1;  
        }
    }
}
