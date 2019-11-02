var req = require('request');
var che = require('cheerio');
var fs = require('fs');

console.log('--- INICIANDO ---');

req('http://www.imdb.com/chart/moviemeter', function(err, res, body){
	if(err)
		console.log('Erro: ' + err);
	
	var $body = che.load(body);
	var $seriesset = '<seriesset>' + '\n';
	var e = '  ';
	$body('.lister-list tr').each(function() {
		var title = $body(this).find('.titleColumn a').text().trim();
		var rating = $body(this).find('.imdbRating strong').text().trim();
		$seriesset += e + '<series>\n';
		$seriesset += e + e + '<imdbid>' + rating + '</imdbid>\n';		
		$seriesset += e + e + '<title>' + title + '</title>\n';
		$seriesset += e + '</series>\n';
	});
	$seriesset += '</seriesset>';
	fs.writeFile('series_instance_generated.xml', $seriesset, (err) => {
		if(err)
			console.log('Erro em fs.appendFile: ' + err);
		else
			console.log('--- FIM ---');
	});
});