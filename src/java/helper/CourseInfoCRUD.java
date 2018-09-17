/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package helper;
import bean.CourseInfo;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
/**
 *
 * @author Justine Clemente
 */
public class CourseInfoCRUD {
    
    public static ArrayList<CourseInfo> readCourseInfo(Connection con,int majorID) throws SQLException{
        ArrayList<CourseInfo> courseinfo=null;
        
        try (PreparedStatement stmt = con.prepareStatement("SELECT * FROM Program_Information p JOIN Program_Info_Category WHERE major_id=?;")) {
            try (ResultSet rs = stmt.executeQuery()) {
                stmt.setInt(1, majorID);
                while (rs.next()) {
                    courseinfo.add(new CourseInfo(rs));
                }
            }
        }
        return courseinfo;
    }
    
}
