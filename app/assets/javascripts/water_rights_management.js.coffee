# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  mapOptions =
    center: new google.maps.LatLng(39.4997605, -111.547028)
    zoom: 7
    mapTypeId: google.maps.MapTypeId.ROADMAP
  map = new google.maps.Map($("#map_canvas")[0], mapOptions)

  myParser = new geoXML3.parser(
    map: map
    suppressInfoWindows: true
  )

  for point_of_diversion in gon.point_of_diversions
    myParser.parse point_of_diversion.kml.url