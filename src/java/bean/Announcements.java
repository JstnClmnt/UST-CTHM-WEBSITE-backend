/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import helper.JsonObject;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

/**
 *
 * @author Justine Clemente
 */
public class Announcements {
    private int announcementID;
    private String announcement;
    private String publishedDate;
    private String description;

    public Announcements(int announcementID, String announcement, String publishedDate, String description) {
        this.announcementID = announcementID;
        this.announcement = announcement;
        this.publishedDate = publishedDate;
        this.description = description;
    }
    
    public JsonObject getJSON() {
        JsonObject json = new JsonObject();
        json.addData("announcementID", announcementID);
        json.addData("title", announcement);
        json.addData("publishedDate", stringToTimeStamp(publishedDate));
        json.addData("description", description);
        return json;
    }

    
    public Announcements(ResultSet rs) throws SQLException{
        this.announcementID=rs.getInt("announcement_id");
        this.announcement=rs.getString("title");
        this.publishedDate=timestamptoString(rs.getTimestamp("published_date"));
        this.description=rs.getString("description");
    }

    public Announcements(String announcement, String publishedDate, String description) {
        this.announcement = announcement;
        this.publishedDate = publishedDate;
        this.description = description;
    }
    
    public int getAnnouncementID() {
        return announcementID;
    }

    public void setAnnouncementID(int announcementID) {
        this.announcementID = announcementID;
    }

    public String getAnnouncement() {
        return announcement;
    }

    public void setAnnouncement(String announcement) {
        this.announcement = announcement;
    }

    public String getPublishedDate() {
        return publishedDate;
    }

    public void setPublishedDate(String publishedDate) {
        this.publishedDate = publishedDate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    private String timestamptoString(Timestamp ts){
        String datePublished="";
        String s[]=ts.toString().split(" ");
        String date[]=s[0].split("-");
        String time[]=s[1].split(":");
        int month=Integer.parseInt(date[1]);
        switch(month){
            case 1: datePublished+="January"; break;
            case 2: datePublished+="February"; break;
            case 3: datePublished+="March"; break;
            case 4: datePublished+="April"; break;
            case 5: datePublished+="May"; break;
            case 6: datePublished+="June"; break;
            case 7: datePublished+="July"; break;
            case 8: datePublished+="August"; break;
            case 9: datePublished+="September"; break;
            case 10: datePublished+="October"; break;
            case 11: datePublished+="November"; break;
            case 12: datePublished+="December"; break;
        }
        String datetime="am";
        int h=Integer.parseInt(time[0]);
        if(h-12>0){
           if(h-12==0){
               time[0]="12";
           }
           datetime="pm";
        }
        
        datePublished+=" "+date[2]+","+date[0];
        
        return datePublished;
        
    }
    private String stringToTimeStamp(String timestampstring){
        String datePublished="";
        String s[]=timestampstring.split(" ");
        String dayyear[]=s[1].split(",");
        String month=s[0];
        datePublished+=dayyear[1]+"-";
        switch(month){
            case "January":datePublished+="01"; break;
            case "February": datePublished+="02"; break;
            case "March": datePublished+="03"; break;
            case "April": datePublished+="04"; break;
            case "May": datePublished+="05"; break;
            case "June": datePublished+="06"; break;
            case "July": datePublished+="07"; break;
            case "August": datePublished+="08"; break;
            case "September": datePublished+="09"; break;
            case "October": datePublished+="10"; break;
            case "November": datePublished+="11"; break;
            case "December": datePublished+="12"; break;
        }
        
        datePublished+="-"+dayyear[0];
        
        return datePublished;
        
    }
    
    
}
