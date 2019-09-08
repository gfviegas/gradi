// ref: https://www.w3schools.com/xml/xpath_axes.asp
/* eslint-disable */
var $max = 20, $i, $j, $stringBuilder = "", $imdb_id, $title, $release_date = "", $runtime, $classification = "", $genres, $writers = "", $directors = "", $description = "";
var $languages = "", $poster;
var $movie_id = 21, $genre_id = 16, $director_id = 23, $writer_id = 53, $language_id = 14;
var $sb_genres = "", $sb_directors = "", $sb_writers = "", $sb_languages = "";

$i = 1;
$title = document.evaluate("//html/body/div/div/div/div[1]/div/div/div[2]/table/tbody/tr[" + $i + "]/td[2]/span/span//text()",
	document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.textContent.trim();

$i = 4;
$release_date = document.evaluate("//html/body/div/div/div/div[1]/div/div/div[2]/table/tbody/tr[" + $i + "]/td[2]/span/span/text()",
	document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.textContent.trim();

$i = 6;
$genres = document.evaluate("//html/body/div/div/div/div[1]/div/div/div[2]/table/tbody/tr[" + $i + "]/td[2]/span/span//text()",
	document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.textContent.trim().replace(/, /g, "\", \"");
// %Genre{id: 7, name: "Thriller"} |> Repo.insert!

$genres = $genres.split("\", \"");
$j = $genres.length;
for(k = 0; k < $j; k++){
	$sb_genres += "%Genre{id: " + $genre_id++ + ", name: \"" + ($genres[k]).replace("\"", "").replace("\"", "") + "\"} |> Repo.insert!\n";
}

$i = 7;
$directors = document.evaluate("//html/body/div/div/div/div[1]/div/div/div[2]/table/tbody/tr[" + $i + "]/td[2]/span/span//text()",
	document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.textContent.trim().replace(/, /g, "\", \"");
// %Director{id: 7, name: "Francis Lawrence"} |> Repo.insert!

$directors = $directors.split("\", \"");
$j = $directors.length;
for(k = 0; k < $j; k++){
	$sb_directors += "%Director{id: " + $director_id++ + ", name: \"" + ($directors[k]).replace("\"", "").replace("\"", "") + "\"} |> Repo.insert!\n";
}

$i = 8;
$writers = document.evaluate("//html/body/div/div/div/div[1]/div/div/div[2]/table/tbody/tr[" + $i + "]/td[2]/span/span//text()",
	document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.textContent.trim().replace(/, /g, "\", \"");
// %Writer{id: 9, name: "Richard Matheson"} |> Repo.insert!

$writers = $writers.split("\", \"");
$j = $writers.length;
for(k = 0; k < $j; k++){
	$sb_writers += "%Writer{id: " + $writer_id++ + ", name: \"" + ($writers[k]).replace("\"", "").replace("\"", "") + "\"} |> Repo.insert!\n";
}

$i = 10;
$description = document.evaluate("//html/body/div/div/div/div[1]/div/div/div[2]/table/tbody/tr[" + $i + "]/td[2]/span/span//text()",
	document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.textContent.trim();

$i = 11;
$languages = document.evaluate("//html/body/div/div/div/div[1]/div/div/div[2]/table/tbody/tr[" + $i + "]/td[2]/span/span//text()",
	document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.textContent.trim().replace(/, /g, "\", \"");
// %Language{id: 6, name: "Italian"} |> Repo.insert!

$languages = $languages.split("\", \"");
$j = $languages.length;
for(k = 0; k < $j; k++){
	$sb_languages += "%Language{id: " + $language_id++ + ", name: \"" + ($languages[k]).replace("\"", "").replace("\"", "") + "\"} |> Repo.insert!\n";
}

$i = 14;
$poster = document.evaluate("//html/body/div/div/div/div[1]/div/div/div[2]/table/tbody/tr[" + $i + "]/td[2]/span/span/a//text()",
	document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.textContent.trim().replace(/, /g, "\", \"");

$i = 28;
$imdb_id = document.evaluate("//html/body/div/div/div/div[1]/div/div/div[2]/table/tbody/tr[" + $i + "]/td[2]/span/span//text()",
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

$stringBuilder += $sb_genres + "\n" + $sb_directors + "\n" + $sb_writers + "\n" + $sb_languages + "\n" +
"%Movie{\n"
	+ "  id: " + $movie_id + ",\n"
	+ "  imdb_id: " + $imdb_id + ",\n"
	+ "  title: " + $title + ",\n"
	+ "  classification: " + $classification + ",\n"
	+ "  description: " + $description + ",\n"
	+ "  release_date: ~D[" + $release_date + "],\n"
	+ "  revenue: ,\n"
	+ "  poster: \"" + $poster + "\",\n"
+
"} |> Repo.insert!";

console.log($stringBuilder);
