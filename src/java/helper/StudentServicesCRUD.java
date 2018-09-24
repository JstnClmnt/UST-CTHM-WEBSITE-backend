/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package helper;

import bean.StudentServices;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
/**
 *
 * @author Justine Clemente
 */
public class StudentServicesCRUD {
    
    public static StudentServices readStudentServices(Connection con,int serviceID) throws SQLException{
        try (PreparedStatement stmt = con.prepareStatement("SELECT * FROM STUDENT_SERVICES WHERE service_id=?;")) {
            stmt.setInt(1, serviceID);
            try (ResultSet rs = stmt.executeQuery()) {
                rs.next();
                return new StudentServices(rs);
            }
        }
   }
    
    public static ArrayList<StudentServices> listAbout(Connection con) throws SQLException {
        ArrayList<StudentServices> abouts = new ArrayList<>();
        try (PreparedStatement stmt = con.prepareStatement("SELECT * FROM STUDENT_SERVICES;")) {
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    abouts.add(new StudentServices(rs));
                }
            }
        }
        return abouts;
    }
    public static int editStudentServices(Connection con,int serviceID,String description) throws SQLException {
        try (PreparedStatement stmt = con.prepareStatement("UPDATE STUDENT_SERVICES SET description=? WHERE service_id=?;")) {
            stmt.setString(1, description);
            stmt.setInt(2, serviceID);
            stmt.executeUpdate();
            return 1;
        }
    }
    
}
