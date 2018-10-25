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
public class Industry {
    private int companyID;
    private String companyName;
    private String category;
    private String websiteLink;

    public Industry(int companyID, String companyName, String category, String websiteLink) {
        this.companyID = companyID;
        this.companyName = companyName;
        this.category = category;
        this.websiteLink = websiteLink;
    }

    public Industry(String companyName, String category, String websiteLink) {
        this.companyName = companyName;
        this.category = category;
        this.websiteLink = websiteLink;
    }

    public Industry(ResultSet rs) throws SQLException{
        this(rs.getInt("company_id"),rs.getString("company_name"),rs.getString("category"),rs.getString("website_link"));
    }
    
    public int getCompanyID() {
        return companyID;
    }

    public void setCompanyID(int companyID) {
        this.companyID = companyID;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getWebsiteLink() {
        return websiteLink;
    }

    public void setWebsiteLink(String websiteLink) {
        this.websiteLink = websiteLink;
    }
    
    
}
