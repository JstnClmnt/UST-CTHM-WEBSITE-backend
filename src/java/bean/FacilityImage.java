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
public class FacilityImage {
    private int facilityimageID;
    private int majorID;
    private Image image;

    public FacilityImage(int facilityimageID, int majorID, Image image) {
        this.facilityimageID = facilityimageID;
        this.majorID = majorID;
        this.image = image;
    }
    public FacilityImage(ResultSet rs) throws SQLException{
        this(rs.getInt("facility_image_id"),rs.getInt("major_id"),new Image(rs));
    }
    
    public FacilityImage(int majorID, Image image) {
        this.majorID = majorID;
        this.image = image;
    }

    public int getFacilityimageID() {
        return facilityimageID;
    }

    public void setFacilityimageID(int facilityimageID) {
        this.facilityimageID = facilityimageID;
    }

    public int getMajorID() {
        return majorID;
    }

    public void setMajorID(int majorID) {
        this.majorID = majorID;
    }

    public Image getImage() {
        return image;
    }

    public void setImage(Image image) {
        this.image = image;
    }

    
    
    
}
