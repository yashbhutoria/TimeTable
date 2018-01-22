
/**
 * @author YashBhutoria
 */
import java.sql.*;
import java.time.LocalTime;
import java.util.Calendar;
import java.util.Scanner;

class TimeHandler {

    public static Time table[][];
    public static int slotArr[];
    public static Time now = Time.valueOf(LocalTime.now());
    public static ResultSet rs;


    public static void loadSlots() throws Exception {
        rs = SQLHandler.getResultOf("Select * from timeslot;");
        table = new Time[9][2];
        slotArr = new int[9];
        int j = 0;
        while (rs.next()) {
            table[j][0] = rs.getTime("from");
            table[j][1] = rs.getTime("till");
            slotArr[j] = rs.getInt("slotid");
            j++;
        }
    }

    static {
        try {
            loadSlots();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public static String getCurrentDay() {
        String days[] = {"sun","mon","tue","wed","thu","fri","sat"};
        Calendar calendar = Calendar.getInstance();
        int daynum = (calendar.get(Calendar.DAY_OF_WEEK)) - 1;
        return days[daynum];
    }

    public static int getCurrentSlot() throws Exception {
        int slot = 8;
        for (int i = 0; i < table.length; i++) {
            if ((table[i][0].compareTo(now) <= 0) && (table[i][1].compareTo(now) >= 0)) {
                slot = slotArr[i];
                break;
            }
        }
        return slot;
    }

}
