/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package helper;

import bean.StudentOrg;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Justine Clemente
 */
public class StudentOrgCRUD {
    public static ArrayList<StudentOrg> listStudentOrg(Connection con) throws SQLException {
        ArrayList<StudentOrg> abouts = new ArrayList<>();
        try (PreparedStatement stmt = con.prepareStatement("SELECT * FROM STUDENT_ORG s JOIN Image i WHERE s.img_id=i.img_id;")) {
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    abouts.add(new StudentOrg(rs));
                }
            }
        }
        return abouts;
    }
    
    public static int createStudentOrg(Connection con,StudentOrg studentorg) throws SQLException{
        try (PreparedStatement stmt = con.prepareStatement("INSERT INTO STUDENT_ORG(org_name,org_about,org_objectives,org_offices,org_phone,org_activities,img_id) VALUES(?,?,?,?,?,?,?);")) {
            stmt.setString(1, studentorg.getOrgName());
            stmt.setString(2, studentorg.getOrgAbout());
            stmt.setString(3, studentorg.getOrgObjectives());
            stmt.setString(4, studentorg.getOrgOffices());
            stmt.setString(5, studentorg.getOrgPhone());
            stmt.setString(6, studentorg.getOrgActivities());
            stmt.setInt(7, studentorg.getImage().getImageId());
            stmt.executeUpdate();
            return readStudentOrg(con,studentorg);  
        }
    }
    
    public static int readStudentOrg(Connection con, StudentOrg studentorg) throws SQLException {
        try (PreparedStatement stmt = con.prepareStatement("SELECT org_id FROM Student_Org WHERE org_name = ?")) {
            stmt.setString(1, studentorg.getOrgName());
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return rs.getInt("org_id");
                } else {
                    return -1;
                }
            }
        }
    }
}