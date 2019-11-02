// ref: https://www.w3schools.com/xml/xpath_axes.asp

const parse5 = require('parse5')
const xmlser = require('xmlserializer')
const xpath = require('xpath')
const DOM = require('xmldom').DOMParser
const XPATH_FIRST_ORDERED_TYPE = 9

module.exports = {
  async getActorsFromIMDB (html) {
    const max = 20
    let mult = 1
    let stringBuilder = ''

    const parsed = parse5.parse(html.toString())
    const xhtml = xmlser.serializeToString(parsed)
    const document = new DOM().parseFromString(xhtml)

    for (let i = 2; i <= max; i++) {
      let s1 = xpath.evaluate(`//html/body/div[2]/div/div[2]/descendant::*/tbody/tr[ ${i * mult}]/td[2]/a//text()`, document, null, XPATH_FIRST_ORDERED_TYPE, null).singleNodeValue
      if (s1 == null) break
      s1 = s1.textContent.trim()

      const multaux = xpath.evaluate(`//html/body/div[2]/div/div[2]/descendant::*/tbody/tr[ ${i * mult}]/td[4]/a[2]//text()`, document, null, XPATH_FIRST_ORDERED_TYPE, null).singleNodeValue
      if (multaux != null) {
        mult = 2
      }

      let s2 = xpath.evaluate(`//html/body/div[2]/div/div[2]/descendant::*/tbody/tr[ ${i * mult}]/td[4]//node()`, document, null, XPATH_FIRST_ORDERED_TYPE, null).singleNodeValue.textContent.trim()
      const s2Index = s2.indexOf('\n')

      if (s2Index > 0) {
        s2 = s2.replace(s2.substring(s2Index), '')
      }

      if (s2.length === 0) {
        s2 = xpath.evaluate(`//html/body/div[2]/div/div[2]/descendant::*/tbody/tr[ ${i * mult}]/td[4]/a[1]//text()`, document, null, XPATH_FIRST_ORDERED_TYPE, null).singleNodeValue.textContent.trim()
      }

      stringBuilder += `<actor character="${s2}">${s1}</actor>`
      if (i !== max) {
        stringBuilder += '\n'
      }
    }

    console.log(`String do actors: ${stringBuilder}`)

    return stringBuilder
  }
}
