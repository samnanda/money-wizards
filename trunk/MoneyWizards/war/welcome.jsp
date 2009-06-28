<jsp:include page="inc/header.jsp">
	<jsp:param value="Welcome to Money Wizards!" name="title" />
</jsp:include>
<div class="main">
<div class="left">
<div class="content">
<h1>Welcome to Money Wizards!</h1>
<p>Thank you for visiting money-wizards.com where you can meet financial experts and help novices.</p>
<p>Making new financial friends is easy by logging in at the top of the page. There, you will also be able to leave page comments, post to Facebook, Digg, Delicious, twitter and more.</p>
<p>If you have special money wizards in your life, you can get them shirts, bibs and more at our <a href="http://www.cafepress.com/moneywizards">gift shop</a>.</p>
<h3>Please explore the pages below</h3>
<ul>
<li>Calculators</li>
<ul>
<li><a href="networth.jsp">Basic Net Worth Calculator</a></li>
<li><a href="networth-intermediate.jsp">Intermediate Net Worth Calculator</a></li>
</ul>
<li>Wizardly Advice</li>
<ul>
<li><a href="wizard-advice.jsp">Advice From Fellow Wizards</a></li>
</ul>
</ul>
</div>
</div>
<div class="right">
<div class="subnav"><!--
  // The Following div element will end up holding the actual feed control.
  // You can place this anywhere on your page.
  -->
<div id="feed-control"><span style="color: #cccccc; font-size: 11px; margin: 10px; padding: 4px;">Loading...</span></div>

<!-- Google Ajax Api
  --> <script src="http://www.google.com/jsapi?key=notsupplied-wizard" type="text/javascript"></script> <!-- Dynamic Feed Control and Stylesheet --> <script
	src="http://www.google.com/uds/solutions/dynamicfeed/gfdynamicfeedcontrol.js" type="text/javascript"></script>
<style type="text/css">
@import
	url("inc/feed.css")
	;
</style>
<script type="text/javascript">
    function LoadDynamicFeedControl() {
      var feeds = [
	{title: 'Money headlines',
	 url: 'http://rssfeeds.usatoday.com/UsatodaycomMoney-TopStories'
	},
	{title: 'Finance',
	 url: 'http://rss.cnn.com/rss/money_pf.rss'
	},
	{title: 'Investments',
	 url: 'http://feeds.investopedia.com/stockinvesting'
	},
	{title: 'Saving',
	 url: 'http://www.bankrate.com/syndication/bankrate_todaysstories.xml'
	},
	{title: 'Financial terms',
	 url: 'http://feeds.feedburner.com/InvestorwordsTOD'
	}];
      var options = {
        stacked : true,
        horizontal : false,
        title : "Money News"
      }

      new GFdynamicFeedControl(feeds, 'feed-control', options);
    }
    // Load the feeds API and set the onload callback.
    google.load('feeds', '1');
    google.setOnLoadCallback(LoadDynamicFeedControl);
  </script> <!-- ++End Dynamic Feed Control Wizard Generated Code++ --></div>
</div>
<div class="clearer"><span></span></div>
</div>
<jsp:include page="inc/footer.jsp"></jsp:include>