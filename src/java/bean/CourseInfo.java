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
public class CourseInfo {
    private int courseInfoID;
    private String title;
    private String description;

    public CourseInfo(int courseInfoID, String title, String description) {
        this.courseInfoID = courseInfoID;
        this.title = title;
        this.description = description;
    }
    
    public CourseInfo(String title, String description) {
        this.title = title;
        this.description = description;
    }

    public CourseInfo(ResultSet rs) throws SQLException{
        this(rs.getInt("program_info_id"),rs.getString("pic_title"),rs.getString("description"));
    }
    public int getCourseInfoID() {
        return courseInfoID;
    }

    public void setCourseInfoID(int courseInfoID) {
        this.courseInfoID = courseInfoID;
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
