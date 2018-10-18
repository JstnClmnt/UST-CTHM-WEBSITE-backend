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
 * @author Christian Justine
 */
public class Header {
    private int headerID;
    private Image image;

    public Header(int headerID, Image image) {
        this.headerID = headerID;
        this.image = image;
    }

    public Header(Image image) {
        this.image = image;
    }
    public Header(ResultSet rs) throws SQLException{
        this(rs.getInt("header_id"),new Image(rs));
    }
    public int getHeaderID() {
        return headerID;
    }

    public void setHeaderID(int headerID) {
        this.headerID = headerID;
    }

    public Image getImage() {
        return image;
    }

    public void setImage(Image image) {
        this.image = image;
    }
    
    
    
}
