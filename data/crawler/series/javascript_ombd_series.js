// ref: https://www.w3schools.com/xml/xpath_axes.asp
/* eslint-disable */

module.exports = {
	test: function(){return "Hellow";},
	getFromOmdb: function(param){
		var $max = 20, $i, $stringBuilder = "", $imdb_id, $title, $release_date = "", $runtime, $classification = "", $genres, $writers = "", $description = "";
		var $languages = "", $countries = "", $poster, $seasons;

		// $jo = $jsonObject
		$jo = JSON.parse(param);/*JSON.parse(document.evaluate("//html/body/div/div/div/div[2]/div/div/div[2]/pre//text()",
			document, null, 9, null).singleNodeValue.textContent.trim());*/
			
		$title = $jo.Title;
		$release_date = $jo.Released;
		$runtime = $jo.Runtime;
		$genres = "    <genre>" + $jo.Genre.replace(/, /g, "</genre>\n    <genre>") + "</genre>\n";
		$writers = "    <writer>" + $jo.Writer.replace(/, /g, "</writer>\n    <writer>") + "</writer>\n";
		$description = $jo.Plot;
		$languages = "    <language>" + $jo.Language.replace(/, /g, "</language>\n    <language>") + "</language>\n";
		$countries = "    <country>" + $jo.Country.replace(/, /g, "</country>\n    <country>") + "</country>\n";
		$poster = $jo.Poster;
		$imdb_id = $jo.imdbID;
		$seasons = $jo.totalSeasons;

		$release_date = $release_date.split(" ");
		if($release_date.length == 3){
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
		} else{
			$release_date = "N/A";
		}

		$stringBuilder +=
		"  <series>\n"
			+ "    <imdbid>" + $imdb_id + "</imdbid>\n"
			+ "    <title>" + $title + "</title>\n"
			+ "    <release_date>" + $release_date + "</release_date>\n"
			+ "    <runtime>" + $runtime + "</runtime>\n"
			+ "    <classification>" + $classification + "</classification>\n"
			+ "    <genres>\n" + $genres + "  </genres>\n"
			+ "    <writers>\n" + $writers + "  </writers>\n"
			+ "    <actors>\n@ACTORS  </actors>\n"
			+ "    <description>" + $description + "</description>\n"
			+ "    <languages>\n" + $languages + "  </languages>\n"
			+ "    <countries>\n" + $countries + "  </countries>\n"
			+ "    <poster>" + $poster + "</poster>\n"
			+ "    <seasons>" + ($seasons != null ? $seasons : 1) + "</seasons>\n"
		+
		"  </series>";
		return $stringBuilder;		
	}
}