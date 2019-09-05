// ref: https://www.w3schools.com/xml/xpath_axes.asp

var $max = 20, $i, $stringBuilder = "", $s1, $s2;
for($i = 1; $i <= $max; $i++){
	$s1 = document.evaluate("//html/body/div[2]/div/div[2]/descendant::*/tbody/tr[" + ($i*2) + "]/td[2]/a//text()", 
		document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.textContent.trim();

	$s2 = document.evaluate("//html/body/div[2]/div/div[2]/descendant::*/tbody/tr[" + ($i*2) + "]/td[4]//node()", 
		document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.textContent.trim();
	$j = $s2.indexOf("\n");
	if($j > 0){
		$s2 = $s2.replace($s2.substring($j), "");
	}
	if($s2.length == 0){
		$s2 = document.evaluate("//html/body/div[2]/div/div[2]/descendant::*/tbody/tr[" + ($i*2) + "]/td[4]/a[1]//text()", 
			document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.textContent.trim()
	}

	$stringBuilder += 
	"%{name: \""
	+ $s1
	+
	"\", character: \""
	+ $s2
	+
	"\"}";
	if($i != $max){
		$stringBuilder += ",\n";
	}
}
console.log($stringBuilder);
