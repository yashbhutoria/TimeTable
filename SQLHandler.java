/**
 * @author YashBhutoria
 */
import java.sql.*;
import java.util.Scanner;
class SQLHandler{
    public static ResultSet getResultOf(String query){
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tt", "root", "aspartame");
            Scanner in = new Scanner(System.in);
            PreparedStatement ps = con.prepareStatement(query);
            rs = ps.executeQuery();
        } catch (Exception e) {
            System.out.println(e);
        }
        return rs;
    }
}
