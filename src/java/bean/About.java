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
public class About {
    private int post_id;
    private String title;
    private String description;
    private Image img;
    private String icon;

    public About(int post_id, String title, String description,Image img,String icon) {
        this.post_id = post_id;
        this.title = title;
        this.description = description;
        this.img=img;
        this.icon=icon;
    }

    public About(String title, String description) {
        this.title = title;
        this.description = description;
    }

    public About(ResultSet rs) throws SQLException{
        this(rs.getInt("post_id"),rs.getString("title"),rs.getString("description"),new Image(rs),rs.getString("icon"));
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

    public Image getImg() {
        return img;
    }

    public void setImg(Image img) {
        this.img = img;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }
    
    
    
}
