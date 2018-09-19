/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package helper;
import bean.Course;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
/**
 *
 * @author Justine Clemente
 */
public class CourseCRUD {
    public static Course readCourses(Connection con,int courseID,int majorID) throws SQLException{
        try (PreparedStatement stmt = con.prepareStatement("SELECT * FROM COURSES c JOIN Major m ON c.course_id=? AND m.course_id=? WHERE major_id=?;")) {
            stmt.setInt(1, courseID);
            stmt.setInt(2, courseID);
            stmt.setInt(3, majorID);
            try (ResultSet rs = stmt.executeQuery()) {
                rs.next();
                return new Course(rs,majorID);
            }
        }
    }
    
}
