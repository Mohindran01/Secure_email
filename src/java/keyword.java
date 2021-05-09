
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Calendar;


public class keyword {
    static int status=0;
static int d=1;
public static int addkeyword(String msg ){
	Connection con=GetCon.getConnection();
	try {
		PreparedStatement ps=con.prepareStatement("Insert into keywords values(?)");
		ps.setString(1,msg);
		
		
		status=ps.executeUpdate();
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return status;
}
}
