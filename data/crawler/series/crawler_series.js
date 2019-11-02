var req = require('request');
var che = require('cheerio');
var fs = require('fs');
eval(fs.readFileSync('javascript_ombd_series.js'));
eval(fs.readFileSync('javascript_actors_series.js'));
var jos = require('./javascript_ombd_series');
var jas = require('./javascript_actors_series');

function craw(callback){
	console.log('--- INICIANDO ---');	

	req('https://www.imdb.com/search/keyword/?keywords=series&ref_=fn_al_kw_1', function(err, res, body){
		if(err){
			console.log('Erro: ' + err);
			return;
		}
		
		var $body = che.load(body);
			
		$imdbids = [];
		$body('.lister-item-header').each(function() {
			var linkimdb = $body(this).find('a').attr('href');	
			// /title/tt0087800/?ref_=kw_li_tt
			var imdbid = linkimdb.substring(7);
			imdbid = imdbid.substring(0, imdbid.indexOf('/'));
			$imdbids.push(imdbid);			
		});
		
		callback($imdbids);
	});
}

function getActorsFromIMDB(imdbid, callback){
	req('https://www.imdb.com/title/' + imdbid + '/fullcredits/?ref_=tt_ov_st_sm', function(err, res, body){
		if(err){
			console.log('Erro 3: ' + err);
		}
		var $actors = jas.getActorsFromIMDB(body);
		callback(err, res, $actors);
	});
}

function getFromOmdb(imdbid, callback){
	req('http://www.omdbapi.com/?i=' + imdbid + '&apikey=6f5f8dc6', async function(err, res, body){
		if(err){
			console.log('Erro 2: ' + err);
		}
		var $series = jos.getFromOmdb(body);
		var $actors = await new Promise((resolve, reject) => {
			getActorsFromIMDB(imdbid, function(errr, ress, actors){
				if(errr) 
					reject(errr);
				resolve(actors);
			});
		});
		$series = $series.replace('@ACTORS', $actors);
		
		callback(err, res, $series);	
	});
}

craw(async function($imdbids) {
	$i = 1;
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

//testeGetFromOmbd();