/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package helper;

import bean.News;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Justine Clemente
 */
public class NewsCRUD {
    public static News readNews(Connection con,int newsId) throws SQLException{
        try (PreparedStatement stmt = con.prepareStatement("SELECT * FROM NEWS n JOIN IMAGE i WHERE i.img_id=n.img_id AND news_id = ?")) {
            stmt.setInt(1, newsId);
            try (ResultSet rs = stmt.executeQuery()) {
                rs.next();
                return new News(rs);
            }
        }
   }
    
      public static ArrayList<News> listNews(Connection con) throws SQLException {
        ArrayList<News> newses = new ArrayList<>();
        try (PreparedStatement stmt = con.prepareStatement("SELECT * FROM NEWS n JOIN IMAGE i WHERE i.img_id=n.img_id ORDER BY published_date DESC")) {
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    newses.add(new News(rs));
                }
            }
        }
        return newses;
    }
    
     public static ArrayList<News> listLatestNews(Connection con) throws SQLException {
        ArrayList<News> newses = new ArrayList<>();
        try (PreparedStatement stmt = con.prepareStatement("SELECT * FROM NEWS n JOIN IMAGE i WHERE i.img_id=n.img_id ORDER BY published_date DESC LIMIT 3")) {
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    newses.add(new News(rs));
                }
            }
        }
        return newses;
    }
     
    public static int createNews(Connection con,News news) throws SQLException{
        try (PreparedStatement stmt = con.prepareStatement("INSERT INTO	NEWS(published_date,news_title,news_author,news_description,img_id) VALUES(?,?,?,?,?);")) {
            stmt.setString(1, news.getPublishedDate());
            stmt.setString(2, news.getNewsTitle());
            stmt.setString(3, news.getNewsAuthor());
            stmt.setString(4, news.getNewsDescription());
            stmt.setInt(5, news.getImage().getImageId());
            stmt.executeUpdate();
            return readNews(con,news);  
        }
    }
    public static int readNews(Connection con, News news) throws SQLException {
        try (PreparedStatement stmt = con.prepareStatement("SELECT news_id FROM News WHERE news_title = ?")) {
            stmt.setString(1, news.getNewsTitle());
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return rs.getInt("news_id");
                } else {
                    return -1;
                }
            }
        }
    }
    
    public static int editNewsNoImage(Connection con, News news) throws SQLException{
        try (PreparedStatement stmt = con.prepareStatement("UPDATE News SET published_date=?,news_title=?,news_author=?,news_description=? WHERE news_id=?;")) {
            stmt.setString(1, news.getPublishedDate());
            stmt.setString(2, news.getNewsTitle());
            stmt.setString(3, news.getNewsAuthor());
            stmt.setString(4, news.getNewsDescription());
            stmt.setInt(5, news.getNewsID());
            
            stmt.executeUpdate();
            return 1;  
        }
    }
    
    public static int editNews(Connection con, News news) throws SQLException{
        try (PreparedStatement stmt = con.prepareStatement("UPDATE News SET published_date=?,news_title=?,news_author=?,news_description=?,img_id=? WHERE news_id=?;")) {
            stmt.setString(1, news.getPublishedDate());
            stmt.setString(2, news.getNewsTitle());
            stmt.setString(3, news.getNewsAuthor());
            stmt.setString(4, news.getNewsDescription());
            stmt.setInt(5, news.getImage().getImageId());
            stmt.setInt(6, news.getNewsID());
            stmt.executeUpdate();
            return 1;  
        }
    }
    
    public static int deleteNews(Connection con, int newsID) throws SQLException{
        try (PreparedStatement stmt = con.prepareStatement("DELETE FROM NEWS WHERE news_id=?;")) {
            stmt.setInt(1, newsID);
            stmt.executeUpdate();
            return 1;  
        }
    }
}
