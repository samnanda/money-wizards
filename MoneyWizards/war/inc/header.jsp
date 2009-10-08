<%@ page import="com.google.appengine.api.users.User"%>
<%@ page import="com.google.appengine.api.users.UserService"%>
<%@ page import="com.google.appengine.api.users.UserServiceFactory"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html>
<head>
<!-- The application source code for this website is not freeware. This includes but is not limited to all java, jsp, xml, and properties files.
It is licensed under the LGPL, which means that after you purchase it, it will be free for you to use in any way you see fit.
It is free as in freedom of speech but not as in free beer. -->
<meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
<meta name="description" content="This website is for all you money wizards out there and for those who would like to become ones." />
<meta name="keywords" content="money, finance, net worth, calulator, money wizard, money wizards, financial wizard, financial wizards" />
<meta name="author" content="money-wizards.com" />
<meta name="robots" content="index, follow, noarchive" />
<meta name="googlebot" content="noarchive" />
<meta name="verify-v1" content="tKMDGcCAfQpjyv4uZwlHLiMgTzuRx2RqFLWxK4z1Rjg=">
<title>Money Wizards - <%= request.getParameter("title") != null ? request.getParameter("title") : "Save Thousands!" %></title>
<%-- zero margin = wide layout --%>
<script charset="utf-8" id="injection_graph_func" src="inc/injection_graph_func.js"></script>
<%
	String gwtScript = request.getParameter("gwtScript");
	if (gwtScript != null) {
%>
<script type="text/javascript" language="javascript" src="<%= gwtScript %>"></script>
<%
	}
%>
<link rel="stylesheet" type="text/css" href="inc/style.css" media="screen">
</head>
<body style="margin: 0pt;">
<%-- OPTIONAL: include this if you want history support --%>
<iframe src="javascript:''" id="__gwt_historyFrame" tabIndex='-1' style="position: absolute; width: 0; height: 0; border: 0"></iframe>
<%-- Include the Google Friend Connect javascript library. --%>
<script type="text/javascript" src="http://www.google.com/friendconnect/script/friendconnect.js"></script>
<%-- Define the div tag where the gadget will be inserted. --%>
<div id="div-5038363162375661372" class="height40"></div>
<%-- Render the gadget into a div. --%>
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
<div class="header"><a href="welcome.jsp"><span>Money Wizards</span><span class="logoright"></span></a></div>
<div class="stripes"><span></span></div>
<div class="nav"><a href="networth.jsp">Calculators</a> <a href="wizard-advice.jsp">Wizardly Advice</a> <a href="http://money-wizards.blogspot.com">Blog</a>
<div class="right">
<%
	UserService userService = UserServiceFactory.getUserService();
	User user = userService.getCurrentUser();
	if (user != null) {
%> <a name="login">Welcome <%=user.getNickname()%>!</a><a href="<%=userService.createLogoutURL(request.getRequestURI())%>">Sign out</a> <%
 	} else {
 %> <a href="<%=userService.createLoginURL(request.getRequestURI())%>">Sign in</a> <%
 	}
 %>
</div>
<div class="clearer"><span></span></div>
</div>
<div class="stripes"><span></span></div>