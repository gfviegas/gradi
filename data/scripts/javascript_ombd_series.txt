// ref: https://www.w3schools.com/xml/xpath_axes.asp

var $max = 20, $i, $stringBuilder = "", $imdb_id, $title, $release_date = "", $runtime, $classification = "", $genres, $writers = "", $description = "";
var $languages = "", $countries = "", $poster, $seasons;

$i = 1;
	
$title = document.evaluate("//html/body/div/div/div/div[1]/div/div/div[2]/table/tbody/tr[" + $i + "]/td[2]/span/span//text()", 
	document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.textContent.trim();

$i = 4;
$release_date = document.evaluate("//html/body/div/div/div/div[1]/div/div/div[2]/table/tbody/tr[" + $i + "]/td[2]/span/span/text()", 
	document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.textContent.trim();

$i = 5;
$runtime = document.evaluate("//html/body/div/div/div/div[1]/div/div/div[2]/table/tbody/tr[" + $i + "]/td[2]/span/span//text()", 
	document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.textContent.trim();
	
$i = 6;
$genres = document.evaluate("//html/body/div/div/div/div[1]/div/div/div[2]/table/tbody/tr[" + $i + "]/td[2]/span/span//text()", 
	document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.textContent.trim().replace(/, /g, "\", \"");
	
$i = 8;
$writers = document.evaluate("//html/body/div/div/div/div[1]/div/div/div[2]/table/tbody/tr[" + $i + "]/td[2]/span/span//text()", 
	document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.textContent.trim().replace(/, /g, "\", \"");

$i = 10;
$description = document.evaluate("//html/body/div/div/div/div[1]/div/div/div[2]/table/tbody/tr[" + $i + "]/td[2]/span/span//text()", 
	document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.textContent.trim();

$i = 11;
$languages = document.evaluate("//html/body/div/div/div/div[1]/div/div/div[2]/table/tbody/tr[" + $i + "]/td[2]/span/span//text()", 
	document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.textContent.trim().replace(/, /g, "\", \"");

$i = 12;
$countries = document.evaluate("//html/body/div/div/div/div[1]/div/div/div[2]/table/tbody/tr[" + $i + "]/td[2]/span/span//text()", 
	document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.textContent.trim().replace(/, /g, "\", \"");

$i = 14;
$poster = document.evaluate("//html/body/div/div/div/div[1]/div/div/div[2]/table/tbody/tr[" + $i + "]/td[2]/span/span/a//text()", 
	document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.textContent.trim().replace(/, /g, "\", \"");

$i = 22;
$imdb_id = document.evaluate("//html/body/div/div/div/div[1]/div/div/div[2]/table/tbody/tr[" + $i + "]/td[2]/span/span//text()", 
	document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.textContent.trim();

$i = 24;	
$seasons = document.evaluate("//html/body/div/div/div/div[1]/div/div/div[2]/table/tbody/tr[" + $i + "]/td[2]/span/span//text()", 
	document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.textContent.trim();
	

$release_date = $release_date.split(" ");
var $d, $m, $a;
$d = $release_date[0].replace("\"", "");
$m = $release_date[1];
if($m == "Jan") $m = "01";
else if($m == "Feb") $m = "02";
else if($m == "Mar") $m = "03";
else if($m == "Apr") $m = "04";
else if($m == "May") $m = "05";
else if($m == "Jun") $m = "06";
else if($m == "Jul") $m = "07";
else if($m == "Aug") $m = "08";
else if($m == "Sep") $m = "09";
else if($m == "Oct") $m = "10";
else if($m == "Nov") $m = "11";
else if($m == "Dec") $m = "12";
$a = $release_date[2].replace("\"", "");
$release_date = $a + "-" + $m + "-" + $d;
	
$stringBuilder += 
"%{\n"
	+ "imdb_id: " + $imdb_id + ",\n"
	+ "title: " + $title + ",\n"
	+ "release_date: \"" + $release_date + "\",\n"
	+ "runtime: " + $runtime + ",\n"
	+ "classification: \"" + $classification + "\",\n"
	+ "genres: [" + $genres + "],\n"
	+ "writers: [" + $writers + "],\n"
	+ "actors: [\n\n],\n"
	+ "description: " + $description + ",\n"
	+ "languages: [" + $languages + "],\n"
	+ "countries: [" + $countries + "],\n"
	+ "poster: \"" + $poster + "\",\n"
	+ "seasons: " + $seasons + "\n"
+
"}";

console.log($stringBuilder);
