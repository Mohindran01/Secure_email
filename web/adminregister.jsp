

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<title>Mail Services</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<!--5grid--><script src="css/5grid/viewport.js"></script><!--[if lt IE 9]><script src="css/5grid/ie.js"></script><![endif]--><link rel="stylesheet" href="css/5grid/core.css" />
		<link rel="stylesheet" href="css/style.css" />
		<!--[if IE 9]><link rel="stylesheet" href="css/style-ie9.css" /><![endif]-->
	</head>
	<body>
	<!-- ********************************************************* -->
		<div id="header-wrapper">
			<div class="5grid">
				<div class="12u-first">
					
					<header id="header">
						<h1><a href="#">Mail services</a></h1>
						</header>
			</div>
			</div>
		</div>

		<div id="main">
			<div class="5grid">
				<div class="main-row">
					<div class="4u-first">
						
						<section>
							<h2>Welcome to Mailservices!</h2>
                                                </section>
					
					</div>
					<div class="4u">
						
						<section>
							
							<ul class="small-image-list">
								<li>
                                                                    <a href="#"><img src="css/images/pic2.jpg" alt="" class="left" /></a>
										 <span>
							
									<h3 style="color:#007897;">Registration Form</h3><br>
									<div>
									<% 
									if(request.getAttribute("registererror")!=null){
									String msg=(String)request.getAttribute("registererror");
									out.print("<font style='color:red'>"+msg);
									out.print("</font><br/>");
									}
									%>
									
									<form action="adminregisterservlet" >
									<table style="table-layout: fixed;">
					<tr><td>EmailId:</td><td> <input type="text" name="email"/><br/><br/></td></tr>
					<tr><td>Password: </td><td><input type="password" name="password"/><br/><br/></td></tr>
					<tr><td>Name: </td><td><input type="text" name="name"/><br/><br/></td></tr>
					<tr><td>Gender:</td><td>
					Male<input type="radio" name="gender" value="male">Female<input type="radio" name="gender" value="female"/><br/><br/></td></tr>
					<tr><td>Contact Number:</td><td> <input type="text" name="mname"/><br/><br/></td></tr>
					<tr><td>Country: </td><td><input type="text" name="country"/><br/><br/></td></tr>
					<tr><td></td><td><input type="submit" value="Submit"/></td></tr>
				</table>
                                         </form>
                                                                                 </span>
			 </li>
		
							
								
							</ul>
						</section>
					
					</div>

				</div>
				
			</div>
		</div>
			</body>
		

	


</html>
