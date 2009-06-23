<jsp:include page="inc/header.jsp">
	<jsp:param value="Intermediate Net Worth Calculator" name="title" />
	<jsp:param value="intermediatenetworth/intermediatenetworth.nocache.js" name="gwtScript"/>
</jsp:include>
<div class="main">
<div class="left">
<div class="content"><a href="networth.jsp">Basic Net Worth</a>&nbsp;&nbsp;&nbsp;Intermediate Net Worth
<table>
	<tr>
		<td colspan="2">
		<h1>Intermediate Net Worth Calculator</h1>
		</td>
	</tr>
	<tr>
		<td>Age:</td>
		<td id="age1FieldContainer"></td>
	</tr>
	<tr>
		<td>Initial Net Worth:</td>
		<td id="netWorth1FieldContainer"></td>
	</tr>
	<tr>
		<td>Monthly Income 1:</td>
		<td id="monthlyIncome1FieldContainer"></td>
	</tr>
	<tr>
		<td>Monthly Income 1 Starts at Age:</td>
		<td id="monthlyIncome1StartFieldContainer"></td>
	</tr>
	<tr>
		<td>Monthly Income 1 Ends at Age:</td>
		<td id="monthlyIncome1EndFieldContainer"></td>
	</tr>
	<tr>
		<td>Monthly Income Annual Raise %:</td>
		<td id="monthlyIncome1RaiseFieldContainer"></td>
	</tr>
	<tr>
		<td>Monthly Income 2:</td>
		<td id="monthlyIncome2FieldContainer"></td>
	</tr>
	<tr>
		<td>Monthly Income 2 Starts at Age:</td>
		<td id="monthlyIncome2StartFieldContainer"></td>
	</tr>
	<tr>
		<td>Monthly Income 2 Ends at Age:</td>
		<td id="monthlyIncome2EndFieldContainer"></td>
	</tr>
	<tr>
		<td>Monthly Income 2 Annual Raise %:</td>
		<td id="monthlyIncome2RaiseFieldContainer"></td>
	</tr>
	<tr>
		<td>Monthly Expense 1:</td>
		<td id="monthlyExpense1FieldContainer"></td>
	</tr>
	<tr>
		<td>Monthly Expense 1 Starts at Age:</td>
		<td id="monthlyExpense1StartFieldContainer"></td>
	</tr>
	<tr>
		<td>Monthly Expense 1 Ends at Age:</td>
		<td id="monthlyExpense1EndFieldContainer"></td>
	</tr>
	<tr>
		<td>Monthly Expense 1 Annual Increase %:</td>
		<td id="monthlyExpense1IncreaseFieldContainer"></td>
	</tr>
	<tr>
		<td>Monthly Expense 2:</td>
		<td id="monthlyExpense2FieldContainer"></td>
	</tr>
	<tr>
		<td>Monthly Expense 2 Starts at Age:</td>
		<td id="monthlyExpense2StartFieldContainer"></td>
	</tr>
	<tr>
		<td>Monthly Expense 2 Ends at Age:</td>
		<td id="monthlyExpense2EndFieldContainer"></td>
	</tr>
	<tr>
		<td>Monthly Expense 2 Annual Increase %:</td>
		<td id="monthlyExpense2IncreaseFieldContainer"></td>
	</tr>
	<tr>
		<td>Rate of Return 1:</td>
		<td id="rate1FieldContainer"></td>
	</tr>
	<tr>
		<td>Rate of Return 1 Starts at Age:</td>
		<td id="rate1StartFieldContainer"></td>
	</tr>
	<tr>
		<td>Rate of Return 1 Ends at Age:</td>
		<td id="rate1EndsFieldContainer"></td>
	</tr>
	<tr>
		<td>Rate of Return 2:</td>
		<td id="rate2FieldContainer"></td>
	</tr>
	<tr>
		<td>Rate of Return 2 Starts at Age:</td>
		<td id="rate2StartFieldContainer"></td>
	</tr>
	<tr>
		<td>Rate of Return 2 Ends at Age:</td>
		<td id="rate2EndsFieldContainer"></td>
	</tr>
	<tr>
		<td>Tax Rate on Reinvested Earnings Before 60:</td>
		<td id="earningsTaxRateBefore60FieldContainer"></td>
	</tr>
	<tr>
		<td>Tax Rate on Reinvested Earnings After 60:</td>
		<td id="earningsTaxRateAfter60FieldContainer"></td>
	</tr>
	<tr>
		<td>Tax Rate on Withdrawls Before 60:</td>
		<td id="withdrawlTaxRateBefore60FieldContainer"></td>
	</tr>
	<tr>
		<td>Tax Rate on Withdrawls After 60:</td>
		<td id="withdrawlTaxRateAfter60FieldContainer"></td>
	</tr>
	<tr>
		<td colspan="2" id="sendButtonContainer"></td>
	</tr>
	<tr>
		<td colspan="2" id="saveButtonContainer"></td>
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