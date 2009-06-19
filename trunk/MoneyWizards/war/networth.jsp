<%@ page import="com.google.appengine.api.users.User" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
<meta name="description" content="This website is for all you money wizards out there and for those who would like to become ones." />
<meta name="keywords" content="money, finance, net, worth, calulator" />
<meta name="author" content="money-wizards.com" />
<meta name="robots" content="index, follow, noarchive" />
<meta name="googlebot" content="noarchive" />
<meta name="verify-v1" content="tKMDGcCAfQpjyv4uZwlHLiMgTzuRx2RqFLWxK4z1Rjg=" >
<title>Money Wizards - Basic Net Worth Calculator</title>
<!-- zero margin = wide layout -->
<script charset="utf-8" id="injection_graph_func" src="inc/injection_graph_func.js"></script>
<script type="text/javascript" language="javascript" src="moneywizards/moneywizards.nocache.js"></script>
<link rel="stylesheet" type="text/css" href="inc/style.css" media="screen">
</head>
<body style="margin: 0pt;">
<!-- OPTIONAL: include this if you want history support -->
<iframe src="javascript:''" id="__gwt_historyFrame" tabIndex='-1' style="position: absolute; width: 0; height: 0; border: 0"></iframe>
<div class="container">
<div class="header"><a href="networth.html"><span>Money Wizards</span><span class="logoright"></span></a></div>
<div class="stripes"><span></span></div>
<div class="nav"><a href="networth.html">Caluclators</a> <!--<a href="contact.html">Contact Us</a>-->
<!-- the login container -->
<div class="right">
<%
    UserService userService = UserServiceFactory.getUserService();
    User user = userService.getCurrentUser();
    if (user != null) {
%>
Welcome <%= user.getNickname() %>! (<a href="<%= userService.createLogoutURL(request.getRequestURI()) %>">sign out</a>)
<%
    } else {
%>
<a href="<%= userService.createLoginURL(request.getRequestURI()) %>">Sign in</a>
<%
    }
%>
</div>
<div class="clearer"><span></span></div>
</div>
<div class="stripes"><span></span></div>
<div class="main">
<div class="left">
<div class="content">Basic Net Worth&nbsp;&nbsp;&nbsp;<a href="networth2.html">Intermediate Net Worth</a><br />
<table>
	<tr>
		<td colspan="2">
		<h1>Basic Net Worth Calculator</h1>
		</td>
	</tr>
	<tr>
		<td>Age:</td>
		<td id="ageFieldContainer"></td>
	</tr>
	<tr>
		<td>Initial Net Worth:</td>
		<td id="netWorthFieldContainer"></td>
	</tr>
	<tr>
		<td>Annual Investment:</td>
		<td id="investFieldContainer"></td>
	</tr>
	<tr>
		<td>Rate of Return %:</td>
		<td id="rateFieldContainer"></td>
	</tr>
	<tr>
		<td colspan="2" id="sendButtonContainer"></td>
	</tr>
</table>
</div>
</div>
<div class="right">
<div class="subnav">
<h1>Results</h1>
<div id="resultsContainer"></div>
</div>
</div>
<div class="clearer"><span></span></div>
</div>
<div class="footer">
<div class="col3">
<h2>Sponsors</h2>
<ul>
	<li><script type="text/javascript"><!--
		google_ad_client = "pub-7771085580946782";
		google_ad_slot = "2398614880";
		google_ad_width = 728;
		google_ad_height = 90;
		//-->
		</script> <script type="text/javascript" src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
		</script></li>
</ul>
</div>
<div class="col3center"></div>
<div class="col3"></div>
<div class="bottom"><span class="left">&copy; 2009 money-wizards.com</span> <span class="right"><a href="legal.html">Legal</a></span>
<div class="clearer"><span></span></div>
</div>
</div>
</div>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
try {
var pageTracker = _gat._getTracker("UA-9387566-1");
pageTracker._trackPageview();
} catch(err) {}</script>
</body>
</html>