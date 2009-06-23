<%@ page import="com.google.appengine.api.users.User" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<!--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">-->
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
<!-- Include the Google Friend Connect javascript library. -->
<script type="text/javascript" src="http://www.google.com/friendconnect/script/friendconnect.js"></script>
<!-- Define the div tag where the gadget will be inserted. -->
<div id="div-5038363162375661372" class="height40"></div>
<!-- Render the gadget into a div. -->
<script type="text/javascript">
var skin = {};
skin['BORDER_COLOR'] = '#cccccc';
skin['ENDCAP_BG_COLOR'] = '#e0ecff';
skin['ENDCAP_TEXT_COLOR'] = '#333333';
skin['ENDCAP_LINK_COLOR'] = '#0000cc';
skin['ALTERNATE_BG_COLOR'] = '#ffffff';
skin['CONTENT_BG_COLOR'] = '#ffffff';
skin['CONTENT_LINK_COLOR'] = '#0000cc';
skin['CONTENT_TEXT_COLOR'] = '#333333';
skin['CONTENT_SECONDARY_LINK_COLOR'] = '#7777cc';
skin['CONTENT_SECONDARY_TEXT_COLOR'] = '#666666';
skin['CONTENT_HEADLINE_COLOR'] = '#333333';
skin['POSITION'] = 'top';
skin['DEFAULT_COMMENT_TEXT'] = '- add your comment here -';
skin['HEADER_TEXT'] = 'Comments';
google.friendconnect.container.setParentUrl('/' /* location of rpc_relay.html and canvas.html */);
google.friendconnect.container.renderSocialBar(
 { id: 'div-5038363162375661372',
   site: '05323156325546055726',
   'view-params':{"scope":"PAGE","features":"video,comment","showWall":"true"}
 },
  skin);
</script>
<div class="container">
<div class="header"><a href="networth.html"><span>Money Wizards</span><span class="logoright"></span></a></div>
<div class="stripes"><span></span></div>
<div class="nav"><a href="networth.html">Caluclators</a> <!--<a href="contact.html">Contact Us</a>-->
<div class="right">
<%
    UserService userService = UserServiceFactory.getUserService();
    User user = userService.getCurrentUser();
    if (user != null) {
%>
<a name="login">Welcome <%= user.getNickname() %>!</a><a href="<%= userService.createLogoutURL(request.getRequestURI()) %>">Sign out</a>
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
<h1>Basic Net Worth Calculator</h1>
<table>
<!--	<tr>-->
<!--		<td colspan="2">-->
<!--		</td>-->
<!--	</tr>-->
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
<!--<h1>Results</h1>-->
<!--<div id="resultsContainer"></div>-->
</div>
</div>
<div class="right">
<div class="subnav">
<!-- Include the Google Friend Connect javascript library. -->
<!--<script type="text/javascript" src="http://www.google.com/friendconnect/script/friendconnect.js"></script>-->
<!-- Define the div tag where the gadget will be inserted. -->
<!--<div id="div-4222097818110887652" style="width:100%;border:1px solid #000000;"></div>-->
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
<!-- Include the Google Friend Connect javascript library. -->
<script type="text/javascript" src="http://www.google.com/friendconnect/script/friendconnect.js"></script>
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
<!-- Render the gadget into a div. -->
<!--<script type="text/javascript">-->
<!--var skin = {};-->
<!--skin['BORDER_COLOR'] = '#000000';-->
<!--skin['ENDCAP_BG_COLOR'] = '#333333';-->
<!--skin['ENDCAP_TEXT_COLOR'] = '#ffffff';-->
<!--skin['ENDCAP_LINK_COLOR'] = '#c0c0c0';-->
<!--skin['ALTERNATE_BG_COLOR'] = '#ffffff';-->
<!--skin['CONTENT_BG_COLOR'] = '#cccccc';-->
<!--skin['CONTENT_LINK_COLOR'] = '#999999';-->
<!--skin['CONTENT_TEXT_COLOR'] = '#333333';-->
<!--skin['CONTENT_SECONDARY_LINK_COLOR'] = '#999999';-->
<!--skin['CONTENT_SECONDARY_TEXT_COLOR'] = '#666666';-->
<!--skin['CONTENT_HEADLINE_COLOR'] = '#333333';-->
<!--skin['NUMBER_ROWS'] = '4';-->
<!--google.friendconnect.container.setParentUrl('/' /* location of rpc_relay.html and canvas.html */);-->
<!--google.friendconnect.container.renderMembersGadget(-->
<!-- { id: 'div-4222097818110887652',-->
<!--   site: '05323156325546055726' },-->
<!--  skin);-->
<!--</script>-->
</body>
</html>