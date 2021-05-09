import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class GetCon {


	public static Connection getConnection(){
	Connection con=null;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cat","root","");
	}catch(Exception e){System.out.println(e);}
	return con;
    }
}
