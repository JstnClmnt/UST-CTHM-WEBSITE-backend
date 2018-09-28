    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import helper.JsonObject;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Justine Clemente
 */
public class Administration {
    private int adminId;
    private String fullName;
    private String position;
    private Image image;
    
    //for readAdministrator
    public Administration(int adminId, String fullName, String position, Image image) {
        this.adminId = adminId;
        this.fullName = fullName;
        this.position = position;
        this.image=image;
    }

//for createAdministrator

    public Administration(String fullName, String position, Image image) {
        this.fullName = fullName;
        this.position = position;
        this.image=image;
    }
    
    public Administration(String fullName, String position) {
        this.fullName = fullName;
        this.position = position;
    }
    
    public Administration(ResultSet rs) throws SQLException{
        this(rs.getInt("admin_id"),
            rs.getString("full_name"),
            rs.getString("position"),
            new Image(rs));
    }

    
    
    public int getAdminId() {
        return adminId;
    }

    public void setAdminId(int adminId) {
        this.adminId = adminId;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public Image getImage() {
        return image;
    }

    public void setImgId(Image image) {
        this.image=image;
    }
    public JsonObject getJSON() {
        JsonObject json = new JsonObject();
        json.addData("adminID", adminId);
        json.addData("fullName", fullName);
        json.addData("position",position);
        json.addData("imageID",image.getImageId());
        json.addData("imageName",image.getDescription());
        return json;
    }
}
