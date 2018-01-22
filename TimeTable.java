/**
 * @author YashBhutoria
 */
import java.sql.*;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.Scanner;

class TimeTable {

    public static void main(String args[]) throws Exception {
        ResultSet rs = SQLHandler.getResultOf("select " + TimeHandler.getCurrentDay() + " from 3csb3 where slot = "+ TimeHandler.getCurrentSlot());
        rs.next();
        System.out.println(CellParser.parseCell(rs.getString(1)));
    }
}
