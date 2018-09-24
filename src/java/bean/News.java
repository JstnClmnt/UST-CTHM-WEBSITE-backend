/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

/**
 *
 * @author Justine Clemente
 */
public class News {
    private int newsID;
    private String publishedDate;
    private String newsTitle;
    private String newsAuthor;
    private String newsDescription;
    private Image image;

    public News(int newsID, String publishedDate, String newsTitle, String newsAuthor, String newsDescription, Image image) {
        this.newsID = newsID;
        this.publishedDate = publishedDate;
        this.newsTitle = newsTitle;
        this.newsAuthor = newsAuthor;
        this.newsDescription = newsDescription;
        this.image = image;
    }
    
    public News(String publishedDate, String newsTitle, String newsAuthor, String newsDescription, Image image) {
        this.publishedDate = publishedDate;
        this.newsTitle = newsTitle;
        this.newsAuthor = newsAuthor;
        this.newsDescription = newsDescription;
        this.image = image;
    }

    public News(ResultSet rs) throws SQLException{
        this.newsID=rs.getInt("news_id");
        this.publishedDate=timestamptoString(rs.getTimestamp("published_date"));
        this.newsTitle=rs.getString("news_title");
        this.newsAuthor=rs.getString("news_author");
        this.newsDescription=rs.getString("news_description");
        this.image=new Image(rs);
    }

    public News() {
    }
    
    public int getNewsID() {
        return newsID;
    }

    public void setNewsID(int newsID) {
        this.newsID = newsID;
    }

    public String getPublishedDate() {
        return publishedDate;
    }

    public void setPublishedDate(String publishedDate) {
        this.publishedDate = publishedDate;
    }

    public String getNewsTitle() {
        return newsTitle;
    }

    public void setNewsTitle(String newsTitle) {
        this.newsTitle = newsTitle;
    }

    public String getNewsAuthor() {
        return newsAuthor;
    }

    public void setNewsAuthor(String newsAuthor) {
        this.newsAuthor = newsAuthor;
    }

    public String getNewsDescription() {
        return newsDescription;
    }

    public void setNewsDescription(String newsDescription) {
        this.newsDescription = newsDescription;
    }

    public Image getImage() {
        return image;
    }

    public void setImage(Image image) {
        this.image = image;
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
    
}
