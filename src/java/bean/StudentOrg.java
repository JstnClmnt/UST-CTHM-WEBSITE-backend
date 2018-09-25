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
public class StudentOrg {
    private int orgID;
    private String orgName;
    private String orgAbout;
    private String orgObjectives;
    private String orgOffices;
    private String orgPhone;
    private String orgActivities;
    private Image image;

    public StudentOrg(int orgID, String orgName, String orgAbout, String orgObjectives, String orgOffices, String orgPhone, String orgActivities, Image image) {
        this.orgID = orgID;
        this.orgName = orgName;
        this.orgAbout = orgAbout;
        this.orgObjectives = orgObjectives;
        this.orgOffices = orgOffices;
        this.orgPhone = orgPhone;
        this.orgActivities = orgActivities;
        this.image = image;
    }    
    public JsonObject getJSON() {
        JsonObject json = new JsonObject();
        json.addData("orgID", orgID);
        json.addData("orgName", orgName);
        json.addData("orgAbout", orgAbout);
        json.addData("orgObjectives",orgObjectives);
        json.addData("orgOffices", orgOffices);
        json.addData("orgPhone", orgPhone);
        json.addData("orgActivities",orgActivities);
        json.addData("imageID",image.getImageId());
        json.addData("imageName",image.getDescription());
        return json;
    }
    
    public StudentOrg(ResultSet rs) throws SQLException{
        this(rs.getInt("org_id"),rs.getString("org_name"),rs.getString("org_about"),rs.getString("org_objectives"),rs.getString("org_offices"),rs.getString("org_phone"),rs.getString("org_activities"),new Image(rs));
    }
    public StudentOrg(String orgName, String orgAbout, String orgObjectives, String orgOffices, String orgPhone, String orgActivities, Image image) {
        this.orgName = orgName;
        this.orgAbout = orgAbout;
        this.orgObjectives = orgObjectives;
        this.orgOffices = orgOffices;
        this.orgPhone = orgPhone;
        this.orgActivities = orgActivities;
        this.image = image;
    }
    public int getOrgID() {
        return orgID;
    }

    public void setOrgID(int orgID) {
        this.orgID = orgID;
    }

    public String getOrgName() {
        return orgName;
    }

    public void setOrgName(String orgName) {
        this.orgName = orgName;
    }

    public String getOrgAbout() {
        return orgAbout;
    }

    public void setOrgAbout(String orgAbout) {
        this.orgAbout = orgAbout;
    }

    public String getOrgObjectives() {
        return orgObjectives;
    }

    public void setOrgObjectives(String orgObjectives) {
        this.orgObjectives = orgObjectives;
    }

    public String getOrgOffices() {
        return orgOffices;
    }

    public void setOrgOffices(String orgOffices) {
        this.orgOffices = orgOffices;
    }

    public String getOrgPhone() {
        return orgPhone;
    }

    public void setOrgPhone(String orgPhone) {
        this.orgPhone = orgPhone;
    }

    public String getOrgActivities() {
        return orgActivities;
    }

    public void setOrgActivities(String orgActivities) {
        this.orgActivities = orgActivities;
    }

    public Image getImage() {
        return image;
    }

    public void setImage(Image image) {
        this.image = image;
    }
    
    
    
}
