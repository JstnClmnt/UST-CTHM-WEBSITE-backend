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
}
