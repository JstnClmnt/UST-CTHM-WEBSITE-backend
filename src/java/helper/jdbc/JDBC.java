/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package helper.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

/**
 *
 * @author Justine Clemente
 */
public class JDBC {
    private static String url;
    private static Properties credentials;
    
    //for development purposes only. will delete on deployment.
    static {
        try {
            initConfig("com.mysql.jdbc.Driver","jdbc:mysql://127.0.0.1/USTCTHM","ustcthm","cthmwebsite");
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println("EXCEPTION: " + ex.getMessage());
        }
    }
    
    /**
     * Sets up the JDBC helper with the necessary data.
     * @param driver the driver class provided by the db vendor
     * @param url the JDBC URL that points to the db to be used
     * @param user
     * @param pass
     * @throws ClassNotFoundException
     */
    public static void initConfig(String driver, String url, String user, String pass) throws ClassNotFoundException, SQLException {
        Class.forName(driver);
        JDBC.url = url;
        credentials = new Properties(); //properties class is used to store user credentials
        credentials.put("user", user);
        credentials.put("password", pass);
        getCon().close(); //this will cause an SQLException if the url/credentials are wrong.
        System.out.println("Database connection established.");
    }
    
    /**
     * Creates a Connection class without having to type the URL, username, and password.
     * The initConfig function must be invoked once before using this function for the first time.
     * @return Connection class that is ready for JDBC functions.
     * @throws SQLException Occurs if the credentials and/or URL is incorrect.
     */
    public static Connection getCon() throws SQLException {
        return DriverManager.getConnection(url, credentials); 
    }
    
    public static String parenParams(int count) {
        StringBuilder str = new StringBuilder("(");
        
        for (int i = 0; i < count; i++) {
            str.append("?");
            if (i < count - 1) {
                str.append(", ");
            }
        }
        
        return str.toString();
    }
    
}
