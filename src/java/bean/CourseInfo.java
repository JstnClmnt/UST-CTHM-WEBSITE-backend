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
    private int categoryID;
    private String title;
    private String description;
    private String icon;

    public CourseInfo(int courseInfoID, int categoryID,String title, String description,String icon) {
        this.courseInfoID = courseInfoID;
        this.title = title;
        this.description = description;
        this.categoryID=categoryID;
        this.icon=icon;
    }
    
    public CourseInfo(String title, String description,String icon) {
        this.title = title;
        this.description = description;
        this.icon=icon;
    }

    public CourseInfo(ResultSet rs) throws SQLException{
        this(rs.getInt("program_info_id"),rs.getInt("pic_id"),rs.getString("pic_title"),rs.getString("description"),rs.getString("icon"));
    }
    public int getCourseInfoID() {
        return courseInfoID;
    }

    public void setCourseInfoID(int courseInfoID) {
        this.courseInfoID = courseInfoID;
    }

    public int getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(int categoryID) {
        this.categoryID = categoryID;
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
