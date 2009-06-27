<div class="footer">
<div class="col3">
<h2>Sponsors</h2>
<script type="text/javascript"><!--
		google_ad_client = "pub-7771085580946782";
		google_ad_slot = "2398614880";
		google_ad_width = 728;
		google_ad_height = 90;
		//-->
		</script> <script type="text/javascript" src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
		</script>
</div>
<div class="col3right">
<h2>Gift Shop</h2>
<a href="http://www.cafepress.com/moneywizards"><img alt="Buy Money Wizard Gifts" name="shopImg" src="/inc/img/bib.jpg" width="90" height="90"></a>
</div>
<div class="bottom"><span class="left">&copy; 2009 money-wizards.com. All Rights Reserved.</span> <span class="right"><a href="legal.jsp">Legal</a></span>
<div class="clearer"><span></span></div>
</div>
</div>
</div>
<%-- google friend connect --%>
<script type="text/javascript" src="http://www.google.com/friendconnect/script/friendconnect.js"></script>
<%-- rotate images --%>
<script type="text/javascript">
var interval = 2000;

var image_index = 0;
image_list = new Array();
image_list[image_index++] = new imageItem("/inc/img/tshirt.jpg");
image_list[image_index++] = new imageItem("/inc/img/jersey.jpg");
image_list[image_index++] = new imageItem("/inc/img/bottle.jpg");
image_list[image_index++] = new imageItem("/inc/img/bib.jpg");
var number_of_image = image_list.length;

function imageItem(image_location) {
	this.image_item = new Image();
	this.image_item.src = image_location;
}
function get_ImageItemLocation(imageObj) {
	return(imageObj.image_item.src)
}
function generate(x, y) {
	var range = y - x + 1;
	return Math.floor(Math.random() * range) + x;
}
function getNextImage() {
	image_index = generate(0, number_of_image-1);
	var new_image = get_ImageItemLocation(image_list[image_index]);
	return(new_image);
}
function rotateImage(place) {
	var new_image = getNextImage();
	document[place].src = new_image;
	var recur_call = "rotateImage('"+place+"')";
	setTimeout(recur_call, interval);
}
rotateImage('shopImg');
</script>
<%-- analytics --%>
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