// ref: https://www.w3schools.com/xml/xpath_axes.asp
/* eslint-disable */
module.exports = {	
	getActorsFromIMDB: function(document) {
		var $max = 20, $i, $stringBuilder = "", $s1, $s2, $mult = 1;
		for($i = 2; $i <= $max; $i++){
			
			$s1 = document.evaluate("//html/body/div[2]/div/div[2]/descendant::*/tbody/tr[" + ($i * $mult) + "]/td[2]/a//text()",
				document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue;
			if($s1 == null)
				break;
			$s1 = $s1.textContent.trim();
			
			$multaux = document.evaluate("//html/body/div[2]/div/div[2]/descendant::*/tbody/tr[" + ($i * $mult) + "]/td[4]/a[2]//text()",
				document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue;
				
			if($multaux != null)
				$mult = 2;

			$s2 = document.evaluate("//html/body/div[2]/div/div[2]/descendant::*/tbody/tr[" + ($i * $mult) + "]/td[4]//node()",
				document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.textContent.trim();
			$j = $s2.indexOf("\n");
			
			if($j > 0){
				$s2 = $s2.replace($s2.substring($j), "");
			}
			if($s2.length == 0){
				$s2 = document.evaluate("//html/body/div[2]/div/div[2]/descendant::*/tbody/tr[" + ($i * $mult) + "]/td[4]/a[1]//text()",
					document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.textContent.trim()
			}

			$stringBuilder +=
			"      <actor character=\""
				+ $s2
				+ "\">"
				+ $s1
			+ "</actor>";
			if($i != $max){
				$stringBuilder += "\n";
			}
			
		}
		return $stringBuilder;
	}
}