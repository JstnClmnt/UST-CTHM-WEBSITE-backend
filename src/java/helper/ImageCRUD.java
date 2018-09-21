/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package helper;

import bean.Image;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Justine Clemente
 */
public class ImageCRUD {
    public static Image readImage(Connection con,int imgId) throws SQLException{
        try (PreparedStatement stmt = con.prepareStatement("SELECT * FROM Image WHERE img_id = ?")) {
            stmt.setInt(1, imgId);
            try (ResultSet rs = stmt.executeQuery()) {
                rs.next();
                return new Image(rs);
            }
        }
   }
    
    public static int readImage(Connection con, Image Image) throws SQLException {
        try (PreparedStatement stmt = con.prepareStatement("SELECT img_id FROM Image WHERE img_description = ?")) {
            stmt.setString(1, Image.getDescription());
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return rs.getInt("img_id");
                } else {
                    return -1;
                }
            }
        }
    }
    
    public static ArrayList<Image> listImage(Connection con) throws SQLException {
        ArrayList<Image> images = new ArrayList<>();
        try (PreparedStatement stmt = con.prepareStatement("SELECT * FROM Image")) {
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    images.add(new Image(rs));
                }
            }
        }
        return images;
    }
    
    public static int createImage(Connection con, Image image) throws SQLException {
        try (PreparedStatement stmt = con.prepareStatement("INSERT INTO Image (img_filepath,img_description) VALUES(?,?)")) {
            stmt.setString(1, image.getImgFilePath());
            stmt.setString(2, image.getDescription());
            stmt.executeUpdate();
            return readImage(con,image);  
        }
    }
    
    
    public static int deleteImage(Connection con, int imageId) throws SQLException {
        try (PreparedStatement stmt = con.prepareStatement("DELETE FROM Image WHERE img_ID=?;")) {
            stmt.setInt(1, imageId);
            stmt.executeUpdate();
            return 1;  
        }
    }
    
}
