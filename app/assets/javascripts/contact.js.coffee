# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  ourLocation = new google.maps.LatLng(40.765234, -111.890795)
  contactMapOptions =
    center: ourLocation
    zoom: 15
    mapTypeId: google.maps.MapTypeId.ROADMAP
  contactMap = new google.maps.Map($("#contact_map")[0], contactMapOptions)
  marker = new google.maps.Marker(
    position: ourLocation
    map: contactMap
    title: "We are here!"
  )
