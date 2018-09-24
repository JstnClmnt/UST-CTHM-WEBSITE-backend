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
public class StudentServices {
    private int serviceID;
    private String title;
    private String description;
    private String icon;

    public StudentServices(int serviceID, String title, String description, String icon) {
        this.serviceID = serviceID;
        this.title = title;
        this.description = description;
        this.icon = icon;
    }

    public StudentServices(String title, String description) {
        this.title = title;
        this.description = description;
    }
    
    public StudentServices(ResultSet rs) throws SQLException{
        this(rs.getInt("service_id"),rs.getString("title"),rs.getString("description"),rs.getString("icon"));
    }

    public int getServiceID() {
        return serviceID;
    }

    public void setServiceID(int serviceID) {
        this.serviceID = serviceID;
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

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }
    
    
    
}
