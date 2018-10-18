/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package helper;

import bean.FacilityImage;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Christian Justine
 */
public class FacilityImageCRUD {
    public static ArrayList<FacilityImage> listFacilityImage(Connection con,int majorID) throws SQLException {
        ArrayList<FacilityImage> facimage = new ArrayList<>();
        try (PreparedStatement stmt = con.prepareStatement("SELECT * FROM FACILITIES_IMAGE a JOIN IMAGE i on i.img_id=a.img_id WHERE major_id=?;")) {
            stmt.setInt(1, majorID);
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    facimage.add(new FacilityImage(rs));
                }
            }
        }
        return facimage;
    }
    public static int createFacilityImage(Connection con, FacilityImage facimage) throws SQLException {
        try (PreparedStatement stmt = con.prepareStatement("INSERT INTO FACILITIES_IMAGE (major_id,img_id) VALUES(?,?)")) {
            stmt.setInt(1, facimage.getMajorID());
            stmt.setInt(2, facimage.getImage().getImageId());
            stmt.executeUpdate();
            return 1;  
        }
    }   
    public static int deleteNews(Connection con, int majorID,int imgID) throws SQLException{
        try (PreparedStatement stmt = con.prepareStatement("DELETE FROM FACILITIES_IMAGE WHERE major_id=? AND img_id=?;")) {
            stmt.setInt(1, majorID);
            stmt.setInt(2,imgID);
            stmt.executeUpdate();
            return 1;  
        }
    }
}
