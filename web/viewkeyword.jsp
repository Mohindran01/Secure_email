<%@page import="java.sql.*" %>

<jsp:include page="adminheader.jsp"></jsp:include>
<head>
<script>

var request;
function viewAll(name)
{
var v=name;
var url="delete.jsp?val="+v;

if(window.XMLHttpRequest){
request=new XMLHttpRequest();
}
else if(window.ActiveXObject){
request=new ActiveXObject("Microsoft.XMLHTTP");
}

try
{
request.onreadystatechange=getAllInfo;
request.open("GET",url,true);
request.send();
}
catch(e){alert("Unable to connect to server");}
}

function getAllInfo(){
if(request.readyState==4){
var val=request.responseText;
document.getElementById('bottom').innerHTML=val;
}
}

</script>
</head>
<div id="main">
			<div class="5grid">
				<div class="main-row">
					<div class="4u-first">
						
						&gt;<section>
							<h2>Welcome to Mailservices!</h2>

							
						</section>
					
					</div>
					<div class="4u">
									
									<% 
									
								if(session.getAttribute("username")!=null){
								String username=(String)session.getAttribute("username");		
								out.print("<font style='color:navy'>Welcome "+username+"</font>");
								if(request.getAttribute("delete")!=null){
								String delete=(String)session.getAttribute("username");		
								out.print("<font style='color:navy'>"+delete+"</font>");
								}
								try {
		Class.forName("com.mysql.jdbc.Driver");
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/cat","root","");
			PreparedStatement ps=con.prepareStatement("Select * from keywords");
			
			ResultSet rs=ps.executeQuery();
			out.print("<div id='bottom'></div>");
			
			out.print("<table border=4 cellspacing='4' cellpadding='5'>");
			out.print("<tr><td>KEYWORDS</td></tr><br>");
			while(rs.next()){
				//int id=rs.getInt(1);
				//System.out.print(id);
				out.print("<tr>");
				out.print("<td>" + rs.getString(1) + "</td>");
				//out.print("<td>" + rs.getString(4) + "</td>");
				//out.print("<td>" DeleteServlet.Del`"</td>");
				//out.print("<td><a href='delete.jsp?val="+rs.getInt(1)+"'> Delete</a></td>");
			
				out.print("</tr>");
			
			}
			out.print("</table>");
			out.print("<table align='right'width='40%'>");
			//out.print("<tr><td><a href='DeleteServlet'>Delete</a></td></tr>");
			
			out.print("</table>");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		}
								
								
								
								else{
								request.setAttribute("Error1","Plz Do login First");
								%>
								<jsp:forward page="index.jsp"></jsp:forward>
									<%
									
									}
								%>
								
								
								</div>
									
						
		
							
					
					
					</div>
			
				</div>
				
			</div>
		</div>
