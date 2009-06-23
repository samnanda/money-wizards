<jsp:include page="inc/header.jsp">
	<jsp:param value="Basic Net Worth Calculator" name="title"/>
	<jsp:param value="moneywizards/moneywizards.nocache.js" name="gwtScript"/>
</jsp:include>
<div class="main">
<div class="left">
<div class="content">Basic Net Worth&nbsp;&nbsp;&nbsp;<a href="networth-intermediate.jsp">Intermediate Net Worth</a><br />
<h1>Basic Net Worth Calculator</h1>
<table>
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
<div class="bottom"><span class="left">&copy; 2009 money-wizards.com</span> <span class="right"><a href="legal.jsp">Legal</a></span>
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
</body>
</html>