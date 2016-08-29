
<!DOCTYPE html>
<html>
<head>
<title>DoorStep</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Konstructs Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
</head>
<body>
	<!-- header-section-starts -->
	<div class="header">
		<div class="container">
			<div class="logo">
				<a href="indexHtml.html"><h1>DOORSTEP</h1></a>
			</div>
			<div class="pages">
				<ul>
					<li><a class="active" href="indexHtml.html">Home</a></li>
					<li><a href="3dprinting.html">How it works</a></li>
					<li><a href="404.html">Professionals</a></li>
				</ul>
			</div>
			<div class="navigation">
				<ul>
					
					<li><a href="LoginUser.html">Login</a></li>
					<li><a class="active" href="Registration.html">Register</a></li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="container">
		<div class="header-bottom">
            <div class="type">
				<h5>Professionals</h5>
			</div>
			<span class="menu"></span>
			<div class="list-nav">
				<ul>                                                                 
					<li><a href="3dprinting.html">Electricians</a></li>
					<li><a href="materials.html">Plumber</a></li>
					<li><a href="printing.html">Tutors</a></li>
					<li><a href="filestoprint.html">Photographers</a></li>
					<li><a href="404.html">Interior Designers</a></li>
					<li><a href="about.html">More..</a></li>
				</ul>
			</div>
			<!-- script for menu -->
				<script>
				$( "span.menu" ).click(function() {
				  $( ".list-nav" ).slideToggle( "slow", function() {
				    // Animation complete.
				  });
				});
			</script>
			<!-- script for menu -->

			<div class="clearfix"></div>
        </div>
	</div>
        
        
        
        <%@page import="java.sql.*" %>
    <%@page import="javax.sql.*" %>
    <%! Connection conn=null;
    PreparedStatement st;
    ResultSet rs;
    %>
    <%
         Class.forName("oracle.jdbc.driver.OracleDriver");
         conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","hr");
        
        
        String firstname=request.getParameter("firstname");
        String lastname=request.getParameter("lastname");        
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        String email=request.getParameter("email");
        String tow=request.getParameter("tow");
        String spec=request.getParameter("spec");
        String exp=request.getParameter("exp");
        String aow=request.getParameter("aow");
        String address=request.getParameter("address");
        String state=request.getParameter("state");
        String postcode=request.getParameter("postcode");
        
        String phone=request.getParameter("phone");



        
        
        
       
       // String sql="insert into electrician values('"+firstname+"','"+lastname+"','"+username+"','"+password+"','"+email+"','"+tow+"','"+spec+"','"+exp+"','"+aow+"','"+address+"','"+state+"','"+postcode+"','"+phone+"'"+")";
         
 st=conn.prepareStatement("insert into electricians(fname,lname,username,password,email,tow,spec,exp,aow,address,state,postcode,contno) values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
      
        
        //Statement st=conn.createStatement();
         
        // int i=st.executeUpdate(sql);

                        st.setString(1,firstname);
			st.setString(2,lastname);
			st.setString(3,username);
			st.setString(4,password);
			st.setString(5,email);
			st.setString(6,tow);
			st.setString(7,spec);
			st.setString(8,exp);
			st.setString(9,aow);
			st.setString(10,address);
			st.setString(11,state);
			st.setString(12,postcode);
			st.setString(13,phone);
                        
                        st.executeUpdate(); %>
	
        
        
        
        
        
        
        
        
        
        
        
        
        
        
	<div class="container">
		<div class="content">
			<div class="col-md-7 content-left">
				<div class="article">
                                    <h5 class="head">Welcome</h5><br><br>
					<h6><%	out.println("Thank You "+firstname+" for registering.");
                                                %> </h6>
					<a class="title" href="#"></a>
                                        <p></p>
                                        
					
				</div>
				<!--<div class="article">
					<h6></h6>
					<a class="title" href="#"></a>
					
					<p></p>
				</div>-->
				
			</div>
			<div class="col-md-5 content-right">
			<div class="content-right-top">
				<h5 class="head">Delhi</h5>	
				<a href="single.html">
					<div class="editor text-center">
						<h3>Rohini</h3>
						
						<!--<label>2 Days Ago</label>-->
						<span></span>
					</div>
				</a>
				<a class="active" href="single.html">
					<div class="editor text-center">
						<h3>Geeta Colony</h3>
						<!--<p>3D Printing, 3D Software</p>
						<label>3 Days Ago</label>-->
						<span></span>
					</div>
				</a>
				<a href="single.html">
					<div class="editor text-center">
						<h3>Shalimar Bagh</h3>
						<!--<p>A new cheap ass 3D Printer worth checking out</p>
						<label>2 Days Ago</label>-->
						<span></span>
					</div>
				</a>
				<a href="single.html">
					<div class="editor text-center">
						<h3>Rani Bagh</h3>
						<!--<p>3D Printing, 3D Software</p>
						<label>3 Days Ago</label>-->
						<span></span>
					</div>
				</a>
				</div>
				<!--<div class="editors-pic-grids">
					<h5>Editors </h5>
					<div class="editors-pic">
						<div class="e-pic">
							<a href="single.html"><img src="images/ayush.jpg" alt="" /></a>
						</div>
						<div class="e-pic-info">
							<a href="single.html">Ayush Ojha</a>
							<span></span>
							<label>Co-Founder</label>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="editors-pic">
						<div class="e-pic">
							<a href="single.html"><img src="images/shubham.jpg" alt="" /></a>
						</div>
						<div class="e-pic-info">
							<a href="single.html">Shubham Jain</a>
							<span></span>
							<label>Co-Founder</label>
						</div>
						<div class="clearfix"></div>
					</div>


				</div>-->
			</div>
			<div class="clearfix"></div>

	
			<div class="clearfix"></div>			
		</div>
	</div>
	<div class="footer">
		<div class="footer-top">
			<div class="container">
				<div class="col-md-3 footer-links">
					<h4></h4>

					<a href="#"></a>
					
					
				</div>
				<div class="col-md-3 footer-links span_66">
					<a href="#"> </a>
					<a href="#"></a>
					<a href="#"> </a>
				</div>
				<div class="col-md-3 footer-links">
					<h4></h4>
					<a href="#"></a>
				
				</div>
				<div class="col-md-3 footer-links">
					<h4></h4>
					<a href="#"></a>
					
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="footer-bottom">
			<div class="container">
				<div class="copyrights">
					<p>GEEKCRISIS © 2015 All rights reserved</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>