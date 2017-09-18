<%@ page language="java" import="java.util.*" %> 
<%@ page import = "java.util.ResourceBundle" %>
<!DOCTYPE HTML>

<html>
	<head>
		<title>Region 6 Portal</title>
		<meta charset="utf-8" />
        <meta name="google" content="notranslate">
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
		
		
		
	</head>
	<body>
	 <% ResourceBundle resource = ResourceBundle.getBundle("system");
  		String name=resource.getString("teaurl");
  		name = "gateway.jsp?relayState=" + name;
  		%>
  
        <div style="display: none">      
        </div>

		<!-- Header -->
			<header id="header" class="alt">
                
				<div class="inner">                    
                    <h1><img src="images/USDA_logo.png" alt="USDA Forest Service LOGO" style="width: 42px"> Region 6 Portal</h1>
					<p>USDA Forest Service</p>
				</div>
			</header>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Items -->
					<section class="main items">
						<article class="item">
							<header>
								<h3>TEA</h3> 
							</header>							
							<ul class="actions">
							   <li>
							  
 
			 			<a href=<%=name %> class="button">Access App</a></li> 			
                          <!--    <a href="tea.jsp?relayState=app.jsp" class="button">Access App</a></li>  
						   <li>   <a href="tea.jsp?relayState=http://fsxrnsx0128.wrk.fs.usda.gov/tea" class="button">Access App</a></li>    --> 
						
							</ul>
						</article>
						
						
					</section>

				


			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>

