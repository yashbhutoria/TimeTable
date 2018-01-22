import java.sql.ResultSet;

/**
 * @author YashBhutoria
 */
class CellParser {

    /*
        0 and 1 is Subject Code
        2 - 6 is Venue
        7 and 8 is Faculty Code
    */

    public static Display parseCell(String cellVal) throws Exception {
        Display parsed = null;
        String subCode = cellVal.substring(0, 2);
        String venue = cellVal.substring(2, 7);
        String facCode = cellVal.substring(7, 9);

        ResultSet sub = SQLHandler.getResultOf("select subname from subjects where subcode = '" + subCode+"';");
        ResultSet fac = SQLHandler.getResultOf("select fullname from faculty where codefac = '" + facCode+"';");
        sub.next();
        fac.next();

        char last = venue.charAt(4);
        venue = venue.substring(0,2) + "-" +venue.substring(2,4) + ( last=='X'?" ":last);
        parsed = new Display(sub.getString(1), venue, fac.getString(1));
        return parsed;
    }
}