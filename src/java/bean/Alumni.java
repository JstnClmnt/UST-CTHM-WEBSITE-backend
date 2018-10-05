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
public class Alumni {
    private int post_id;
    private String title;
    private String description;
    private Image image;

    public Alumni(int post_id, String title, String description, Image image) {
        this.post_id = post_id;
        this.title = title;
        this.description = description;
        this.image = image;
    }
    
    public Alumni(ResultSet rs) throws SQLException{
        this(rs.getInt("post_id"),rs.getString("title"),rs.getString("description"),new Image(rs));
    }

    public int getPost_id() {
        return post_id;
    }

    public void setPost_id(int post_id) {
        this.post_id = post_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Image getImage() {
        return image;
    }

    public void setImage(Image image) {
        this.image = image;
    }
    
    
}
