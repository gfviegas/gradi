// ref: https://www.w3schools.com/xml/xpath_axes.asp

const getMes = (m) => {
  if (m === 'Jan') return '01'
  else if (m === 'Feb') return '02'
  else if (m === 'Mar') return '03'
  else if (m === 'Apr') return '04'
  else if (m === 'May') return '05'
  else if (m === 'Jun') return '06'
  else if (m === 'Jul') return '07'
  else if (m === 'Aug') return '08'
  else if (m === 'Sep') return '09'
  else if (m === 'Oct') return '10'
  else if (m === 'Nov') return '11'
  else if (m === 'Dec') return '12'
}

module.exports = {
  test () {
    return 'Hellow'
  },
  getFromOmdb (param) {
    const max = 20
    const jo = (typeof param === 'string') ? JSON.parse(param) : param

    // JSON.parse(document.evaluate('//html/body/div/div/div/div[2]/div/div/div[2]/pre//text()', document, null, 9, null).singleNodeValue.textContent.trim())
    let releaseDate = jo.Released.split(' ')
    const title = jo.Title
    const runtime = jo.Runtime
    const genres = `<genre> ${jo.Genre.replace(/, /g, '</genre>\n<genre>')} </genre>\n`
    const writers = `<writer> ${jo.Writer.replace(/, /g, '</writer>\n      <writer>')} </writer>\n`
    const languages = `<language> ${jo.Language.replace(/, /g, '</language>\n      <language>')} </language>\n`
    const countries = `<country> ${jo.Country.replace(/, /g, '</country>\n      <country>')} </country>\n`
    const description = jo.Plot
    const poster = jo.Poster
    const imdbId = jo.imdbID
    const seasons = jo.totalSeasons

    if (releaseDate.length === 3) {
      const dia = releaseDate[0].replace('"', '')
      const ano = releaseDate[2].replace('"', '')
      const mes = getMes(releaseDate[1])
      releaseDate = `${ano}-${mes}-${dia}`
    } else {
      releaseDate = 'N/A'
    }

    return ` <series>\n
       <imdbid> ${imdbId} </imdbid>\n
       <title> ${title} </title>\n
       <release_date> ${releaseDate} </release_date>\n
       <runtime> ${runtime} </runtime>\n
       <classification> NULO </classification>\n
       <genres>\n ${genres} </genres>\n
       <writers>\n ${writers} </writers>\n
       <actors>\n @ACTORS </actors>\n
       <description> ${description} </description>\n
       <languages>\n ${languages} </languages>\n
       <countries>\n ${countries} </countries>\n
       <poster> ${poster}</poster>\n
       <seasons> ${seasons || 1} </seasons>\n
       </series>`
  }
}
