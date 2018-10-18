/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package helper;

import bean.Header;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Christian Justine
 */
public class HeaderCRUD {
    public static int editHeader(Connection con,int headerID,int img_id) throws SQLException {
        try (PreparedStatement stmt = con.prepareStatement("UPDATE HEADER SET img_id=? WHERE header_id=?")) {
            stmt.setInt(1, img_id);
            stmt.setInt(2, headerID);
            stmt.executeUpdate();
            return 1;
        }
    }
    public static Header readHeader(Connection con,int headerID) throws SQLException{
        try (PreparedStatement stmt = con.prepareStatement("SELECT * FROM Header h JOIN IMAGE i on i.img_id=h.img_id WHERE header_id=?;")) {
            stmt.setInt(1, headerID);
            try (ResultSet rs = stmt.executeQuery()) {
                rs.next();
                return new Header(rs);
            }
        }
   }
    
}
