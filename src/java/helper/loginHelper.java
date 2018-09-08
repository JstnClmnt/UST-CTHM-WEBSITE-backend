/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package helper;

import bean.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import helper.jdbc.*;

/**
 *
 * @author Justine Clemente
 */
public class loginHelper {
        public static User loginAuth(String username, String password) throws WrongPasswordException,WrongUsernameException, ClassNotFoundException {
        try (Connection con = JDBC.getCon()) {
            try (PreparedStatement stmt = con.prepareStatement("SELECT * FROM User WHERE username = ?")) {
                stmt.setString(1, username);
                try (ResultSet rs = stmt.executeQuery()) {
                    if (rs.next()) {
                        if (password.equals(rs.getString("password"))) {
                            return new User(rs);
                        } else {
                            throw new WrongPasswordException();
                        }
                    } else {
                        throw new WrongUsernameException();
                    }
                }
            }
        } catch (SQLException ex) {
            System.out.println("SQLException caught from helper.login.LoginHelper.loginAuth(String username, String password):");
            System.out.println(ex.getMessage());
        }
        
        return null;
    }
}
