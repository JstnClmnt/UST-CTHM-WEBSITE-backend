/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package helper;

import bean.AlumniProfile;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Justine Clemente
 */
public class AlumniProfileCRUD {
    public static ArrayList<AlumniProfile> listAlumniProfile(Connection con) throws SQLException {
        ArrayList<AlumniProfile> alumni = new ArrayList<>();
        try (PreparedStatement stmt = con.prepareStatement("SELECT * FROM ALUMNI_PROFILE a LEFT JOIN IMAGE I ON I.img_id=a.img_id")) {
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    alumni.add(new AlumniProfile(rs));
                }
            }
        }
        return alumni;
    }
    
      public static AlumniProfile readAlumniProfile(Connection con,int alumni_id) throws SQLException {
        try (PreparedStatement stmt = con.prepareStatement("SELECT * FROM ALUMNI_PROFILE a LEFT JOIN IMAGE I ON I.img_id=a.img_id WHERE alumni_id=? ;")) {
            stmt.setInt(1, alumni_id);
                try (ResultSet rs = stmt.executeQuery()) {
                    rs.next();
                    return new AlumniProfile(rs);
                }
        }
    }
      
    public static int editProfile(Connection con,AlumniProfile alumni) throws SQLException{
        try (PreparedStatement stmt = con.prepareStatement("UPDATE ALUMNI_PROFILE SET last_name=?,address=?,contact_number=?,email_primary=?,email_secondary=?,nationality=?,civil_status=?,img_id=?,company=?,work_address=?,company_number=?,year_started=?,work=? WHERE alumni_id=?;")) {
            stmt.setString(1, alumni.getLastName());
            stmt.setString(2, alumni.getAddress());
            stmt.setString(3, alumni.getContactNumber());
            stmt.setString(4, alumni.getEmailPrimary());
            stmt.setString(5, alumni.getEmailSecondary());
            stmt.setString(6, alumni.getNationality());
            stmt.setString(7, alumni.getCivilStatus());
            stmt.setInt(8, alumni.getImage().getImageId());
            stmt.setString(9, alumni.getCompany());
            stmt.setString(10, alumni.getWorkAddress());
            stmt.setString(11, alumni.getCompanyNumber());
            stmt.setInt(12, alumni.getYearStarted());
            stmt.setString(13, alumni.getWork());
            stmt.setInt(14, alumni.getAlumniID());
            stmt.executeUpdate();
            return 1;  
        }
    }
    public static int editProfileNoImage(Connection con,AlumniProfile alumni) throws SQLException{
        try (PreparedStatement stmt = con.prepareStatement("UPDATE ALUMNI_PROFILE SET last_name=?,address=?,contact_number=?,email_primary=?,email_secondary=?,nationality=?,civil_status=?,company=?,work_address=?,company_number=?,year_started=?,work=? WHERE alumni_id=?;")) {
            stmt.setString(1, alumni.getLastName());
            stmt.setString(2, alumni.getAddress());
            stmt.setString(3, alumni.getContactNumber());
            stmt.setString(4, alumni.getEmailPrimary());
            stmt.setString(5, alumni.getEmailSecondary());
            stmt.setString(6, alumni.getNationality());
            stmt.setString(7, alumni.getCivilStatus());
            stmt.setString(8, alumni.getCompany());
            stmt.setString(9, alumni.getWorkAddress());
            stmt.setString(10, alumni.getCompanyNumber());
            stmt.setInt(11, alumni.getYearStarted());
            stmt.setString(12, alumni.getWork());
            stmt.setInt(13, alumni.getAlumniID());
            //System.out.println(stmt.toString());
            stmt.executeUpdate();
            return 1;  
        }
    }
    public static int createProfile(Connection con,AlumniProfile alumni) throws SQLException{
        try (PreparedStatement stmt = con.prepareStatement("INSERT INTO ALUMNI_PROFILE(first_name,middle_name,last_name,birthdate,gender,address,postal_code,contact_number,nationality,civil_status,year_graduated,program,student_number,major,email_primary,email_secondary,company,work_address,year_started,company_number,company_email,work,username,password,img_id) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);")) {
            stmt.setString(1, alumni.getFirstName());
            stmt.setString(2, alumni.getMiddleName());
            stmt.setString(3, alumni.getLastName());
            stmt.setString(4, alumni.getBirthdate());
            stmt.setString(5, alumni.getGender());
            stmt.setString(6, alumni.getAddress());
            stmt.setString(7, alumni.getPostalCode());
            stmt.setString(8, alumni.getContactNumber());
            stmt.setString(9,alumni.getNationality());
            stmt.setString(10,alumni.getCivilStatus());
            stmt.setInt(11,alumni.getYearGraduated());
            stmt.setString(12, alumni.getProgram());
            stmt.setInt(13,alumni.getStudentNumber());
            stmt.setString(14,alumni.getMajor());
            stmt.setString(15,alumni.getEmailPrimary());
            stmt.setString(16,alumni.getEmailSecondary());
            stmt.setString(17,alumni.getCompany());
            stmt.setString(18, alumni.getWorkAddress());
            stmt.setInt(19,alumni.getYearStarted());
            stmt.setString(20,alumni.getCompanyNumber());
            stmt.setString(21,alumni.getCompanyEmail());
            stmt.setString(22,alumni.getWork());
            stmt.setString(23,alumni.getUsername());
            stmt.setString(24,alumni.getPassword());
            stmt.setInt(25,alumni.getImage().getImageId());
            stmt.executeUpdate();
            return 1;  
        }
    }
    public static int createProfileNoImage(Connection con,AlumniProfile alumni) throws SQLException{
        try (PreparedStatement stmt = con.prepareStatement("INSERT INTO ALUMNI_PROFILE(first_name,middle_name,last_name,birthdate,gender,address,postal_code,contact_number,nationality,civil_status,year_graduated,program,student_number,major,email_primary,email_secondary,company,work_address,year_started,company_number,company_email,work,username,password) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);")) {
            stmt.setString(1, alumni.getFirstName());
            stmt.setString(2, alumni.getMiddleName());
            stmt.setString(3, alumni.getLastName());
            stmt.setString(4, alumni.getBirthdate());
            stmt.setString(5, alumni.getGender());
            stmt.setString(6, alumni.getAddress());
            stmt.setString(7, alumni.getPostalCode());
            stmt.setString(8, alumni.getContactNumber());
            stmt.setString(9,alumni.getNationality());
            stmt.setString(10,alumni.getCivilStatus());
            stmt.setInt(11,alumni.getYearGraduated());
            stmt.setString(12, alumni.getProgram());
            stmt.setInt(13,alumni.getStudentNumber());
            stmt.setString(14,alumni.getMajor());
            stmt.setString(15,alumni.getEmailPrimary());
            stmt.setString(16,alumni.getEmailSecondary());
            stmt.setString(17,alumni.getCompany());
            stmt.setString(18, alumni.getWorkAddress());
            stmt.setInt(19,alumni.getYearStarted());
            stmt.setString(20,alumni.getCompanyNumber());
            stmt.setString(21,alumni.getCompanyEmail());
            stmt.setString(22,alumni.getWork());
            stmt.setString(23,alumni.getUsername());
            stmt.setString(24,alumni.getPassword());
            stmt.executeUpdate();
            return 1;  
        }
    }
    public static int changePassword(Connection con,String password,int alumniID) throws SQLException{
            try (PreparedStatement stmt = con.prepareStatement("UPDATE ALUMNI_PROFILE SET password=? WHERE alumni_id=?;")) {
            stmt.setString(1, password);
            stmt.setInt(2, alumniID);
            stmt.executeUpdate();
            return 1;  
        }
    }
}
