/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package helper;

import bean.Industry;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.Connection;

/**
 *
 * @author Christian Justine
 */
public class IndustryCRUD {
    public static ArrayList<Industry> listIndustry(Connection con,String category) throws SQLException {
        ArrayList<Industry> industries = new ArrayList<>();
        try (PreparedStatement stmt = con.prepareStatement("SELECT * FROM INDUSTRY WHERE category=?;")) {
            stmt.setString(1, category);
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    industries.add(new Industry(rs));
                }
            }
        }
        return industries;
    }
   public static ArrayList<Industry> listIndustry(Connection con) throws SQLException {
        ArrayList<Industry> industries = new ArrayList<>();
        try (PreparedStatement stmt = con.prepareStatement("SELECT * FROM INDUSTRY;")) {
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    industries.add(new Industry(rs));
                }
            }
        }
        return industries;
    }
    
    
    public static int readIndustry(Connection con,Industry industry) throws SQLException {
        try (PreparedStatement stmt = con.prepareStatement("SELECT * FROM INDUSTRY WHERE company_name=?;")) {
            stmt.setString(1, industry.getCompanyName());
                try (ResultSet rs = stmt.executeQuery()) {
                    rs.next();
                    return rs.getInt("company_id");
                }
        }
    }
    public static Industry readIndustry(Connection con,int industryID) throws SQLException {
        try (PreparedStatement stmt = con.prepareStatement("SELECT * FROM INDUSTRY WHERE company_id=?;")) {
            stmt.setInt(1, industryID);
                try (ResultSet rs = stmt.executeQuery()) {
                    rs.next();
                    return new Industry(rs);
                }
        }
    }
    
    public static int createIndustry(Connection con,Industry industry) throws SQLException{
        try (PreparedStatement stmt = con.prepareStatement("INSERT INTO Industry(company_name,category,website_link) VALUES(?,?,?);")) {
            stmt.setString(1, industry.getCompanyName());
            stmt.setString(2, industry.getCategory());
            stmt.setString(3, industry.getWebsiteLink());
            stmt.executeUpdate();
            return readIndustry(con,industry);  
        }
    }
    public static int updateIndustry(Connection con,Industry industry) throws SQLException{
        try (PreparedStatement stmt = con.prepareStatement("UPDATE INDUSTRY SET company_name=?,category=?,website_link=? WHERE company_id=? ")) {
            stmt.setString(1,industry.getCompanyName());
            stmt.setString(2, industry.getCategory());
            stmt.setString(3, industry.getWebsiteLink());
            stmt.setInt(4,industry.getCompanyID());
            stmt.executeUpdate();
            return 1;  
        }
    }
    public static int deleteIndustry(Connection con,int industryID) throws SQLException{
        try (PreparedStatement stmt = con.prepareStatement("DELETE FROM INDUSTRY WHERE company_id=? ")) {
            stmt.setInt(1,industryID);
            stmt.executeUpdate();
            return 1;  
        }
    }
}
