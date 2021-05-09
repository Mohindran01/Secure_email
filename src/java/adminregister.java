
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class adminregister {
    public static int save(String email,String password,String name,String gender,String mname, String country){
	//public static int register(String email,String password,String gender,String country,String name){
int status=0;
	
	PreparedStatement ps;
	try {
                Connection con=GetCon.getConnection();
		ps = con.prepareStatement("insert into ADMINUSER values(?,?,?,?,?,?)");
		ps.setString(1,email);
		ps.setString(2,password);
		ps.setString(3,name);
		ps.setString(4,gender);
		ps.setString(5,mname);
		ps.setString(6,country);
		
		status=ps.executeUpdate();
		
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
	return status;
	
}
}
