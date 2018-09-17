/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Justine Clemente
 */
public class Image {
    private int imageId;
    private String imgFilePath;
    private String description;
    
//for readImage
    public Image(int imageId, String imgFilePath, String description) {
        this.imageId = imageId;
        this.imgFilePath = imgFilePath;
        this.description = description;
    }

    
//for createImage    
    public Image(String imgFilePath, String description) {
        this.imgFilePath = imgFilePath;
        this.description = description;
    }
    
    public Image(ResultSet rs) throws SQLException {
        this(rs.getInt("img_id"),
             rs.getString("img_filepath"),
             rs.getString("img_description"));
    }

    
    
    public int getImageId() {
        return imageId;
    }

    public void setImageId(int imageId) {
        this.imageId = imageId;
    }

    public String getImgFilePath() {
        return imgFilePath;
    }

    public void setImgFilePath(String imgFilePath) {
        this.imgFilePath = imgFilePath;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
