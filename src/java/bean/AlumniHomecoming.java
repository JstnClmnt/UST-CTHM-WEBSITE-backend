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
public class AlumniHomecoming {
    private int image_id;
    private String caption;
    private Image image;

    public AlumniHomecoming(int image_id, String caption, Image image) {
        this.image_id = image_id;
        this.caption = caption;
        this.image = image;
    }
    public AlumniHomecoming( String caption, Image image) {
        this.caption = caption;
        this.image = image;
    }
    public AlumniHomecoming(ResultSet rs) throws SQLException{
        this(rs.getInt("image_id"),rs.getString("caption"),new Image(rs));
    
    }
    public int getImage_id() {
        return image_id;
    }

    public void setImage_id(int image_id) {
        this.image_id = image_id;
    }

    public String getCaption() {
        return caption;
    }

    public void setCaption(String caption) {
        this.caption = caption;
    }

    public Image getImage() {
        return image;
    }

    public void setImage(Image image) {
        this.image = image;
    }
    
    
}
