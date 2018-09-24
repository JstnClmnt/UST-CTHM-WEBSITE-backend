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
        ArrayList<CourseInfo> courseinfo=new ArrayList<CourseInfo>();
        try (PreparedStatement stmt = con.prepareStatement("SELECT program_info_id,p.pic_id,major_id,description,pic_title,c.icon FROM Program_Information p JOIN Program_Info_Category c ON c.pic_id=p.pic_id WHERE p.major_id=?;")) {
            stmt.setInt(1, majorID);
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    courseinfo.add(new CourseInfo(rs));
                }
            }
        }
        return courseinfo;
    }
    
    public static int updateCourseInfo(Connection con,int majorID,int categoryID,String description) throws SQLException{
        try (PreparedStatement stmt = con.prepareStatement("UPDATE PROGRAM_INFORMATION SET description=? WHERE major_id=? AND pic_id=?;")) {
            stmt.setString(1, description);
            stmt.setInt(2, majorID);
            stmt.setInt(3,categoryID);
            stmt.executeUpdate();
            return 1;
        }
    }
    
    
}
