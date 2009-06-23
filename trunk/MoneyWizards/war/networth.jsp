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
<jsp:include page="inc/footer.jsp"></jsp:include>