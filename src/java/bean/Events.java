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
public class Events {
    private int eventID;
    private String eventTitle;
    private String eventDescription;
    private String eventDate;

    public Events(int eventID, String eventTitle, String eventDescription, String eventDate) {
        this.eventID = eventID;
        this.eventTitle = eventTitle;
        this.eventDescription = eventDescription;
        this.eventDate = eventDate;
    }

    public Events(String eventTitle, String eventDescription, String eventDate) {
        this.eventTitle = eventTitle;
        this.eventDescription = eventDescription;
        this.eventDate = eventDate;
    }
    
    public Events(ResultSet rs) throws SQLException{
        this.eventID=rs.getInt("event_id");
        this.eventTitle=rs.getString("event_title");
        this.eventDescription=rs.getString("event_description");
        this.eventDate=timestamptoString(rs.getTimestamp("event_date"));
    }
    public JsonObject getJSON() {
        JsonObject json = new JsonObject();
        json.addData("eventsID", eventID);
        json.addData("title", eventTitle);
        json.addData("date", stringToTimeStamp(eventDate));
        json.addData("description", eventDescription);
        return json;
    }
    public int getEventID() {
        return eventID;
    }

    public void setEventID(int eventID) {
        this.eventID = eventID;
    }

    public String getEventTitle() {
        return eventTitle;
    }

    public void setEventTitle(String eventTitle) {
        this.eventTitle = eventTitle;
    }

    public String getEventDescription() {
        return eventDescription;
    }

    public void setEventDescription(String eventDescription) {
        this.eventDescription = eventDescription;
    }

    public String getEventDate() {
        return eventDate;
    }

    public void setEventDate(String eventDate) {
        this.eventDate = eventDate;
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
