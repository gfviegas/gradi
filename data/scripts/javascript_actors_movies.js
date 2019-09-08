// ref: https://www.w3schools.com/xml/xpath_axes.asp

var $max = 15, $i, $stringBuilder = "", $s1, $s2;
var $actor_id = 217, $movie_id = 20, $actors = new Array(), $chars = new Array();
for($i = 1; $i <= $max; $i++){
	$s1 = document.evaluate("//html/body/div[2]/div/div[2]/descendant::*/tbody/tr[" + ($i+1) + "]/td[2]/a//text()", 
		document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.textContent.trim();

	$s2 = document.evaluate("//html/body/div[2]/div/div[2]/descendant::*/tbody/tr[" + ($i+1) + "]/td[4]//node()", 
		document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.textContent.trim();
	$j = $s2.indexOf("\n");
	if($j > 0){
		$s2 = $s2.replace($s2.substring($j), "");
	}
	if($s2.length == 0){
		$s2 = document.evaluate("//html/body/div[2]/div/div[2]/descendant::*/tbody/tr[" + ($i+1) + "]/td[4]/a[1]//text()", 
			document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.textContent.trim()
	}
// %Actor{id: 41, name: "April Grace"} |> Repo.insert!
// %Character{protagonist: false, character: "Boba Fett", movie_id: 6, actor_id: 33} |> Repo.insert!
	$actors[$i-1] = $s1;
	$chars[$i-1] = $s2;	
	$stringBuilder += "%Actor{id: " + ($actor_id + $i - 1) + ", name: \"" + $s1 + "\"} |> Repo.insert!\n"
}
$stringBuilder += "\n";
for($i = 1; $i <= $max; $i++){
	$stringBuilder += "%Character{protagonist: false, character: \"" 
	+ $chars[$i-1] + "\", movie_id: " + $movie_id + ", actor_id: " + ($actor_id + $i - 1) + "} |> Repo.insert!\n";
}
console.log($stringBuilder);
