import java.sql.Connection;
import java.sql.DriverManager;
import java.io.*;
import javax.sql.*;
public class JDBC_Connection {
    public static String connectionAddress = "jdbc:mysql://remotemysql.com:3306/XIqlNMyym7";
    public static String userName = "XIqlNMyym7";
    public static String password = "DCFdSrlJgp";
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
