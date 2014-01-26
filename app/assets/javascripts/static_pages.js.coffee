# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  google.maps.visualRefresh = true
  ourLoc = new google.maps.LatLng(40.765344, -111.890736)
  mapOptions =
    center: ourLoc
    zoom: 15
    mapTypeId: google.maps.MapTypeId.ROADMAP
  map = new google.maps.Map($("#map_canvas")[0], mapOptions)
  marker = new google.maps.Marker(
    position: ourLoc
    map: map
    title: "We are here!"
  )
