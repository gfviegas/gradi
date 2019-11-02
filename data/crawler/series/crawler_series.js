var req = require('request');
var che = require('cheerio');
var fs = require('fs');
eval(fs.readFileSync('javascript_ombd_series.js'));
var jos = require('./javascript_ombd_series');

function craw(callback){
	console.log('--- INICIANDO ---');	

	req('https://www.imdb.com/search/keyword/?keywords=series&ref_=fn_al_kw_1', function(err, res, body){
		if(err){
			console.log('Erro: ' + err);
			return;
		}
		
		var $body = che.load(body);
		//var $seriesset = '<seriesset>' + '\n';
		//var e = '  ';
		//$body('.lister-list tr').each(function() {
			//var title = $body(this).find('.titleColumn a').text().trim();
			//var rating = $body(this).find('.imdbRating strong').text().trim();
			//$seriesset += e + '<series>\n';
			//$seriesset += e + e + '<imdbid>' + rating + '</imdbid>\n';		
			//$seriesset += e + e + '<title>' + title + '</title>\n';
			//$seriesset += e + '</series>\n';
		//});
			
		$imdbids = [];
		$body('.lister-item-header').each(function() {
			var linkimdb = $body(this).find('a').attr('href');	
			// /title/tt0087800/?ref_=kw_li_tt
			var imdbid = linkimdb.substring(7);
			imdbid = imdbid.substring(0, imdbid.indexOf('/'));
			$imdbids.push(imdbid);			
		});
		
		callback($imdbids);
		/*
		$seriesset += '</seriesset>';
		fs.writeFile('series_instance_generated.xml', $seriesset, (err) => {
			if(err)
				console.log('Erro em fs.appendFile: ' + err);
			else
				console.log('--- FIM ---');
		});*/
	});
}
/*
headers: {
    'User-Agent': 'MY IPHINE 7s'
  }
*/
function getFromOmdb(imdbid, callback){
	req('http://www.omdbapi.com/?i=' + imdbid + '&apikey=6f5f8dc6', function(err, res, body){
		if(err){
			console.log('Erro 2: ' + err);
		}
		callback(err, res, jos.getFromOmdb(body));		
	});
}

function testeGetFromOmbd(){
	var s = getFromOmdb('tt0903747', function(errr, ress, series){
		if(!errr)
			fs.writeFile('test.txt', series, (err) => {
				if(err)
					console.log('Erro em fs.appendFile: ' + err);
				else
					console.log('--- FIM ---');
			});
	});
}

craw(async function($imdbids) {
	$i = 2;
	$seriesset = [];
	$seriessetstring = '<seriesset>' + '\n';
	$imdbids.forEach((imdbid) => {
		if($i > 0){
			$seriesset.push(new Promise((resolve, reject) => {
				getFromOmdb(imdbid, function(errr, ress, series){
					if(errr) 
						reject(errr);
					resolve(series);
				});
			}));		
		}			
			
		$i--;		
	});	
	$seriesset = await Promise.all($seriesset);
	$seriesset.forEach(($series) => {
		$seriessetstring += $series + '\n';
	});
	$seriessetstring += '</seriesset>';
	fs.writeFile('series_instance_generated.xml', $seriessetstring, (err) => {
		if(err)
			console.log('Erro em fs.appendFile: ' + err);
		else
			console.log('--- FIM ---');
	});
});
//testeGetFromOmbd();

// Put the User Agent string in lowercase
//var ua = req.headers;
// Better to test on mobi than mobile (Firefox, Opera, IE)
//console.log('-->' + ua);