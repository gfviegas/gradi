const axios = require('axios')
const che = require('cheerio')
const fs = require('fs')
const OMDBService = require('./omdb')
const ActorsService = require('./actors')

const IMDB_IDS_ENDPOINT = 'https://www.imdb.com/search/keyword/?keywords=series&ref_=fn_al_kw_1'
const quantidade = 2
let imdb_ids_page = 1

const crawl = async () => {
  console.log('--- INICIANDO ---')
  try {
	  console.log(`${IMDB_IDS_ENDPOINT}&page=${imdb_ids_page}`);
    const response = await axios.get(`${IMDB_IDS_ENDPOINT}&page=${imdb_ids_page}`)

    const $ = che.load(response.data)
    const imdbids = await $('.lister-item-header').map((i, element) => {
      const linkimdb = $(element).find('a').attr('href')

      // /title/tt0087800/?ref_=kw_li_tt
      let imdbid = linkimdb.substring(7)
      imdbid = imdbid.substring(0, imdbid.indexOf('/'))
      return imdbid
    }).get()

    return imdbids
  } catch (e) {
    console.error(e)
    return null
  }
}

const getActorsFromIMDB = async (imdbid, callback) => {
  const url = `https://www.imdb.com/title/${imdbid}/fullcredits/?ref_=tt_ov_st_sm`

  try {
    const response = await axios.get(url)
    const $ = che.load(response.data)
    $('script').remove()

    return ActorsService.getActorsFromIMDB($.html())
  } catch (e) {
    console.error(e)
    return null
  }
}

const getClassificationFromIMDB = async (imdbid, callback) => {
  const url = `https://www.imdb.com/title/${imdbid}`

  try {
    const response = await axios.get(url)
    const $ = che.load(response.data)
    $('script').remove()

    return ActorsService.getClassificationFromIMDB($.html())
  } catch (e) {
    console.error(e)
    return null
  }
}

const getFromOmdb = async (imdbid) => {
  const url = `http://www.omdbapi.com/?i=${imdbid}&apikey=6f5f8dc6`
  try {
    console.log(`\t Pegando do OMDB: ${url}`)
    const response = await axios.get(url)

    let series = OMDBService.getFromOmdb(response.data)
    const actors = await getActorsFromIMDB(imdbid)
    console.log(actors)
	const classification = await getClassificationFromIMDB(imdbid);
	console.log(`Classification: ${classification}`)

    series = series.replace('@ACTORS', actors)
	series = series.replace('@CLASSIFICATION', classification)
    return series
  } catch (e) {
    console.error(e)
    return null
  }
}

(async () => {
  try {
    const imdbids = await crawl()
    if (!imdbids) throw new Error('no_ids_found')
    
    let seriessetstring = '<seriesset>\n'

    const seriesset = await Promise.all(imdbids.slice(0, quantidade).map(async (imdbid) => {
      return getFromOmdb(imdbid)
    }))

    seriesset.forEach((series) => {
      seriessetstring += `${series}\n`
    })

    seriessetstring += '</seriesset>'
    fs.writeFileSync('series_instance_generated.xml', seriessetstring)
    console.log('--- FIM ---')
  } catch (e) {
    console.error(`Erro Inesperado: ${e}`)
  }
})()
