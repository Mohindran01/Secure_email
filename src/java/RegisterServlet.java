import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class RegisterServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String name=request.getParameter("name");
		String gender=request.getParameter("gender");
		
		String mname=request.getParameter("mname");
	
		String country=request.getParameter("country");
		
		int status=RegisterUser.save(email, password, name, gender, mname,country);
		if(status>0){
			out.print( "You are Successfully registered");
			request.getRequestDispatcher("index.jsp").include(request, response);
		
		}
		else{
			out.print("Sorry,Registration failed. please try later");
			
			RequestDispatcher rd=request.getRequestDispatcher("Register.jsp");
			rd.include(request, response);
		}
	out.close();	
	}

}
