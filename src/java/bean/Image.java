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
    private boolean is_Banner;

    
//for readImage
    public Image(int imageId, String imgFilePath, String description, boolean is_Banner) {
        this.imageId = imageId;
        this.imgFilePath = imgFilePath;
        this.description = description;
        this.is_Banner = is_Banner;
    }

    
//for createImage    
    public Image(String imgFilePath, String description, boolean is_Banner) {
        this.imgFilePath = imgFilePath;
        this.description = description;
        this.is_Banner = is_Banner;
    }
    
    public Image(ResultSet rs) throws SQLException {
        this(rs.getInt("img_id"),
             rs.getString("img_filepath"),
             rs.getString("description"),
             rs.getBoolean("is_Banner"));
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

    public boolean isIs_Banner() {
        return is_Banner;
    }

    public void setIs_Banner(boolean is_Banner) {
        this.is_Banner = is_Banner;
    }

}
