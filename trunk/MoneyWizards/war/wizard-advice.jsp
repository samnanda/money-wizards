<jsp:include page="inc/header.jsp">
	<jsp:param value="Money Advice" name="title"/>
</jsp:include>
<div class="main">
<div class="left">
<div class="content">Wizardly Advice<%-- &nbsp;&nbsp;&nbsp;<a href="wizard-polls.jsp">Wizardly Polls</a> --%><br />
<h1>Ask Fellow Money Wizards for Advice</h1>
<!-- Include the Google Friend Connect javascript library. -->
<script type="text/javascript" src="http://www.google.com/friendconnect/script/friendconnect.js"></script>
<!-- Define the div tag where the gadget will be inserted. -->
<div id="div-4850295036538836958" style="width:100%;border:1px solid #cccccc;"></div>
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
google.friendconnect.container.setParentUrl('/' /* location of rpc_relay.html and canvas.html */);
google.friendconnect.container.renderOpenSocialGadget(
 { id: 'div-4850295036538836958',
   url:'http://answersense.appspot.com/spec/latest.xml',
   site: '05323156325546055726' },
  skin);
</script>
</div>
</div>
<div class="right">
<div class="subnav">
<h1>Money Poll</h1>
<!-- Include the Google Friend Connect javascript library. -->
<script type="text/javascript" src="http://www.google.com/friendconnect/script/friendconnect.js"></script>
<!-- Define the div tag where the gadget will be inserted. -->
<div id="div-7435974360566677559" style="width:100%;border:1px solid #cccccc;"></div>
<!-- Render the gadget into a div. -->
<script type="text/javascript">
google.friendconnect.container.setParentUrl('/' /* location of rpc_relay.html and canvas.html */);
google.friendconnect.container.renderOpenSocialGadget(
 { id: 'div-7435974360566677559',
   url:'http://pollsgadget.appspot.com/polls/gadget.xml',
   site: '05323156325546055726' });
</script>
</div>
</div>
<div class="clearer"><span></span></div>
</div>
<jsp:include page="inc/footer.jsp"></jsp:include>