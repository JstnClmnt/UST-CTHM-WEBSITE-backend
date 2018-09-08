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
public class User {
    private int userId;
    private String full_name;
    private String username;
    private String password;

    public User(int userId, String full_name, String username, String password) {
        this.userId = userId;
        this.full_name = full_name;
        this.username = username;
        this.password = password;
    }

    public User(String full_name, String username, String password) {
        this.full_name = full_name;
        this.username = username;
        this.password = password;
    }
    
    public User(ResultSet rs) throws SQLException{
        this(rs.getInt("user_id"),
             rs.getString("full_name"),
             rs.getString("username"),
             rs.getString("password"));
    }

    public User() {
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getFull_name() {
        return full_name;
    }

    public void setFull_name(String full_name) {
        this.full_name = full_name;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    
}
