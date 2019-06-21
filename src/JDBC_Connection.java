import java.sql.Connection;
import java.sql.DriverManager;
import java.io.*;
import javax.sql.*;
public class JDBC_Connection {
    public static String connectionAddress = "";
    public static String userName = "";
    public static String password = "";
    public static String connect(){
        return connectionAddress;
    }
    public String getUsername(){
        return userName;
    }
    public String getPassword(){
        return password;
    }
}
