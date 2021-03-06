TiAdmaker = require('co.saiten.ti.admaker')

win = Ti.UI.createWindow
  backgroundColor: 'white'

adView = TiAdmaker.createView
  backgroundColor: 'blue'
  top: 0
  width: 320
  height: 50
  adUrl: "<AD_URL>"
  siteId: "<SITE_ID>"
  zoneId: "<ZONE_ID>"

adView.addEventListener 'success', ->
  Ti.API.debug "request success"
adView.addEventListener 'fail', ->
  Ti.API.debug "request failed"

win.add adView
win.open()