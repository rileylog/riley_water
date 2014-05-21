# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  mapOptions =
    center: new google.maps.LatLng(39.4997605, -111.547028)
    zoom: 7
    mapTypeId: google.maps.MapTypeId.ROADMAP
  map = new google.maps.Map($("#map_canvas")[0], mapOptions)

  setHighlighted = ->
    alert "#{this.title} clicked!"


  displayPoints = (doc) ->
    for item in doc
      console.log item
      for point in gon.point_of_diversions
        if item.url == point.kml.url
          item.placemarks[0].marker.title = point.name
          google.maps.event.addListener item.placemarks[0].marker, 'click', setHighlighted
    #     doc[0].placemarks[0].polygon.title = area.id
    #     # console.log doc[0].placemarks[0].polygon.title
    #     doc[0].placemarks[0].polygon.setOptions(
    #       fillColor: area.color
    #       fillOpacity: 0.25
    #       strokeWeight: 0.5
    #     )
    #     doc[0].placemarks[0].polygon.setMap(map)
    #     google.maps.event.addListener doc[0].placemarks[0].polygon, 'mouseover', setHighlighted
    #     google.maps.event.addListener doc[0].placemarks[0].polygon, 'mouseout', removeHighlighted
    #     google.maps.event.addListener doc[0].placemarks[0].polygon, 'click', setListings
    #     polygons.push doc[0].placemarks[0].polygon

  myParser = new geoXML3.parser
    map: map
    zoom: true
    suppressInfoWindows: true
    afterParse: displayPoints
    # markerOptions:
    #   title: 'Testing'
  

  pod_urls = []

  for point_of_diversion in gon.point_of_diversions
      pod_urls.push point_of_diversion.kml.url

  myParser.parse pod_urls