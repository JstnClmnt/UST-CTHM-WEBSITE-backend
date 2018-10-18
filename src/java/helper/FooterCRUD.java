/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package helper;

import bean.Footer;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Christian Justine
 */
public class FooterCRUD {
    public static int editFooter(Connection con,int footerID,String description) throws SQLException {
        try (PreparedStatement stmt = con.prepareStatement("UPDATE FOOTER SET description=? WHERE footer_id=?")) {
            stmt.setString(1, description);
            stmt.setInt(2, footerID);
            stmt.executeUpdate();
            return 1;
        }
    }
    public static ArrayList<Footer> listFooter(Connection con) throws SQLException {
        ArrayList<Footer> footers = new ArrayList<>();
        try (PreparedStatement stmt = con.prepareStatement("SELECT * FROM FOOTER;")) {
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    footers.add(new Footer(rs));
                }
            }
        }
        return footers;
    }
    public static Footer readFooter(Connection con,int footerID) throws SQLException{
        try (PreparedStatement stmt = con.prepareStatement("SELECT * FROM FOOTER WHERE footer_id=?;")) {
            stmt.setInt(1, footerID);
            try (ResultSet rs = stmt.executeQuery()) {
                rs.next();
                return new Footer(rs);
            }
        }
   }
}
