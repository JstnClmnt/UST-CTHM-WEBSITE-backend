/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package helper;

import bean.Events;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Justine Clemente
 */
public class EventsCRUD {
      public static Events readEvents(Connection con,int eventsId) throws SQLException{
        try (PreparedStatement stmt = con.prepareStatement("SELECT * FROM Events WHERE  event_id= ?;")) {
            stmt.setInt(1, eventsId);
            try (ResultSet rs = stmt.executeQuery()) {
                rs.next();
                return new Events(rs);
            }
        }
      }
      
      public static int readEvents(Connection con,Events events) throws SQLException{
        try (PreparedStatement stmt = con.prepareStatement("SELECT * FROM Events WHERE  event_title= ?;")) {
            stmt.setString(1, events.getEventTitle());
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return rs.getInt("event_id");
                } else {
                    return -1;
                }
            }
        }
      } 
      
    public static ArrayList<Events> listEvents(Connection con) throws SQLException {
        ArrayList<Events> events = new ArrayList<>();
        try (PreparedStatement stmt = con.prepareStatement("SELECT * FROM EVENTS;")) {
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    events.add(new Events(rs));
                }
            }
        }
        return events;
    }
    public static ArrayList<Events> listEvents(Connection con,int month) throws SQLException {
        ArrayList<Events> events = new ArrayList<>();
        try (PreparedStatement stmt = con.prepareStatement("SELECT * FROM EVENTS WHERE MONTH(event_date)=?;")) {
            stmt.setInt(1, month);
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    events.add(new Events(rs));
                }
            }
        }
        return events;
    }
    public static int createEvents(Connection con,Events event) throws SQLException{
        try (PreparedStatement stmt = con.prepareStatement("INSERT INTO EVENTS(event_date,event_title,event_description) VALUES(?,?,?); ")) {
            stmt.setString(1, event.getEventDate());
            stmt.setString(2, event.getEventTitle());
            stmt.setString(3, event.getEventDescription());
            stmt.executeUpdate();
            return readEvents(con,event);  
        }
    }
    public static int updateEvents(Connection con,Events event) throws SQLException{
        try (PreparedStatement stmt = con.prepareStatement("UPDATE EVENTS SET event_title=?,event_description=?,event_date=? WHERE event_id=? ")) {
            stmt.setString(1, event.getEventTitle());
            stmt.setString(2, event.getEventDescription());
            stmt.setString(3, event.getEventDate());
            stmt.setInt(4,event.getEventID());
            stmt.executeUpdate();
            return 1;  
        }
    }
    
    public static int deleteEvents(Connection con,int eventID) throws SQLException{
        try (PreparedStatement stmt = con.prepareStatement("DELETE FROM EVENTS WHERE event_id=? ")) {
            stmt.setInt(1,eventID);
            stmt.executeUpdate();
            return 1;  
        }
    }
}
