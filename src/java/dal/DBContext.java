package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBContext {
    private static final Logger LOGGER = Logger.getLogger(DBContext.class.getName());
    
    protected Connection connection;

    public DBContext() {
        try {
            connection = getConnection();
        } catch (Exception ex) {
            LOGGER.log(Level.SEVERE, "Error initializing DB connection: {0}", ex.getMessage());
        }
    }

    public Connection getConnection() throws Exception {
        String url = "jdbc:sqlserver://" + serverName + ":" + portNumber;
        if (instance != null && !instance.trim().isEmpty()) {
            url += "\\" + instance;
        }
        url += ";databaseName=" + dbName + ";encrypt=false;trustServerCertificate=false";
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        LOGGER.log(Level.INFO, "Attempting to connect to the database with URL: {0}", url);
        return DriverManager.getConnection(url, userID, password);
    }

    private final String serverName = "localhost";
    private final String dbName = "PRJ301_TourTravel";
    private final String portNumber = "1433";
    private final String instance = "";
    private final String userID = "sa";
    private final String password = "123";

    public void closeConnection() {
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                LOGGER.log(Level.SEVERE, "Error closing DB connection: {0}", e.getMessage());
            }
        }
    }
}
