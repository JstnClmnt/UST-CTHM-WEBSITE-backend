/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import helper.CourseInfoCRUD;
import helper.jdbc.JDBC;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Justine Clemente
 */
public class Course {
    private int courseID;
    private int majorID;
    private String course_title;
    private Major major;
    private ArrayList<CourseInfo> courseinfo;

    public Course(int courseID, String course_title, Major major,ArrayList<CourseInfo> courseinfo) {
        this.courseID = courseID;
        this.course_title = course_title;
        this.major = major;
        this.courseinfo=courseinfo;
    }
    
    public Course(String course_title, Major major,ArrayList<CourseInfo> courseinfo) {
        this.course_title = course_title;
        this.major = major;
        this.courseinfo=courseinfo;
    }

    public Course(ResultSet rs) throws SQLException{
        this(rs.getInt("course_id"),rs.getString("course_title"),new Major(rs),CourseInfoCRUD.readCourseInfo(JDBC.getCon(), rs.getInt("major_id")));
    }

    public int getCourseID() {
        return courseID;
    }

    public void setCourseID(int courseID) {
        this.courseID = courseID;
    }

    public String getCourse_title() {
        return course_title;
    }

    public void setCourse_title(String course_title) {
        this.course_title = course_title;
    }

    public Major getMajor() {
        return major;
    }

    public void setMajor(Major major) {
        this.major = major;
    }

    public ArrayList<CourseInfo> getCourseinfo() {
        return courseinfo;
    }

    public void setCourseinfo(ArrayList<CourseInfo> courseinfo) {
        this.courseinfo = courseinfo;
    }

    public int getMajorID() {
        return majorID;
    }

    public void setMajorID(int majorID) {
        this.majorID = majorID;
    }
    
    
    
    
    
    
}
