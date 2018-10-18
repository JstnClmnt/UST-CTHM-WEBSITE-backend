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
 * @author Christian Justine
 */
public class Footer {
    private int footerID;
    private String title;
    private String description;

    public Footer(int footerID, String title, String description) {
        this.footerID = footerID;
        this.title = title;
        this.description = description;
    }

    public Footer(String title, String description) {
        this.title = title;
        this.description = description;
    }
    public Footer(ResultSet rs) throws SQLException{
        this(rs.getInt("footer_id"),rs.getString("title"),rs.getString("description"));
    }
    public int getFooterID() {
        return footerID;
    }

    public void setFooterID(int footerID) {
        this.footerID = footerID;
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
    
    
}
