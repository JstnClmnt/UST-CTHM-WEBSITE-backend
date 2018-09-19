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
public class Major {
    private int majorID;
    private String majorName;

    public Major(int majorID, String majorName) {
        this.majorID = majorID;
        this.majorName = majorName;
    }

    public Major(String majorName) {
        this.majorName = majorName;
    }
    
    public Major(ResultSet rs) throws SQLException{
        this(rs.getInt("major_id"),rs.getString("major_name"));
    }
    
    public int getMajorID() {
        return majorID;
    }

    public void setMajorID(int majorID) {
        this.majorID = majorID;
    }

    public String getMajorName() {
        return majorName;
    }

    public void setMajorName(String majorName) {
        this.majorName = majorName;
    }
    
    
    
    
}
