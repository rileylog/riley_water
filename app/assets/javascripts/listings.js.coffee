# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  polygons = []
  selected = 0

  setHighlighted = ->
    this.setOptions(
      fillOpacity: 0.7
      strokeWeight: 2
    )

  removeHighlighted = ->
    if selected != this.title
      this.setOptions(
        fillOpacity: 0.25
        strokeWeight: 0.5
      )

  setListings = ->
    wanteds = []
    for_sales = []

    $("#transferable_to_area_name").val("")
    $("#transferable_to_area_name").change()

    for polygon in polygons
      polygon.setOptions(
        fillOpacity: 0.25
        strokeWeight: 0.5
      )

    this.setOptions(
      fillOpacity: 0.7
      strokeWeight: 2
    )

    selected = this.title

    for wanted in gon.wanteds
      if wanted.area_id == this.title
        wanteds.push wanted

    for for_sale in gon.for_sales
       if for_sale.area_id == this.title
        for_sales.push for_sale

    for area in gon.areas
      if area.id == this.title
        $('#listing_title').html "#{area.name} Listings"
        $('#area_policy').html "#{area.policy}"

    if wanteds.length > 0
      $('#wanted').pagination
        items: wanteds.length
        itemsOnPage: 5
        cssStyle: "light-theme"
      $('#wanted').html(
        for wanted in wanteds
          "<div class='panel radius'><h5>#{wanted.volume} ac-ft</h5><p>#{wanted.source} | #{wanted.description}</p></div>"
      )
    else
      $('#wanted').html(
          "<div class='panel radius'><p>No wanted listings for this area.</p></div>"
      )

    if for_sales.length > 0
      $('#for_sale').pagination
        items: for_sales.length
        itemsOnPage: 5
        cssStyle: "light-theme"
      $('#for_sale').html(
        for for_sale in for_sales
          "<div class='panel radius'><h5>#{for_sale.volume} ac-ft | $#{for_sale.price}/ac-ft</h5><p>#{for_sale.source} | #{for_sale.description} | Transferable to: #{for_sale.transferable_to}</p></div>"
      )
    else
      $('#for_sale').html(
          "<div class='panel radius'><p>No for sale listings for this area.</p></div>"
      )

  setListingsByTransferable = (selected, area_name) ->
    for_sales = []

    if area_name == "All"
      for for_sale in gon.for_sales
        if for_sale.area_id == selected
            for_sales.push for_sale
    else
      for for_sale in gon.for_sales
        if for_sale.area_id == selected
          if $.inArray(area_name, for_sale.transferable_to) != -1
            for_sales.push for_sale

    if for_sales.length > 0
      $('#for_sale').html(
        for for_sale in for_sales
          "<div class='panel radius'><h5>#{for_sale.volume} ac-ft | $#{for_sale.price}/ac-ft</h5><p>#{for_sale.source} | #{for_sale.description} | Transferable to: #{for_sale.transferable_to}</p></div>"
      )
    else
      $('#for_sale').html(
          "<div class='panel radius'><p>No for sale listings are transferable to that area.</p></div>"
      )

  displayArea = (doc) ->
    for area in gon.areas
      if doc[0].url == area.kml.url
        doc[0].placemarks[0].polygon.title = area.id
        # console.log doc[0].placemarks[0].polygon.title
        doc[0].placemarks[0].polygon.setOptions(
          fillColor: area.color
          fillOpacity: 0.25
          strokeWeight: 0.5
        )
        doc[0].placemarks[0].polygon.setMap(map)
        google.maps.event.addListener doc[0].placemarks[0].polygon, 'mouseover', setHighlighted
        google.maps.event.addListener doc[0].placemarks[0].polygon, 'mouseout', removeHighlighted
        google.maps.event.addListener doc[0].placemarks[0].polygon, 'click', setListings
        polygons.push doc[0].placemarks[0].polygon

  mapOptions =
    center: new google.maps.LatLng(39.4997605, -111.547028)
    zoom: 7
    mapTypeId: google.maps.MapTypeId.ROADMAP
  map = new google.maps.Map($("#map_canvas")[0], mapOptions)

  # layer = new google.maps.FusionTablesLayer(
  #   query:
  #     select: "geometry"
  #     from: "1zPKs09ATpEj_LP7Vp9Z58E-pV1j6kGVxbcgv4Sw"
  # )
  # layer.setMap map

  myParser = new geoXML3.parser(
    afterParse: displayArea
    suppressInfoWindows: true
  )
  # myParser.parse "http://water-rights-listing.dev/central.kml"
  # myParser.parse "http://water-rights-listing.dev/north.kml"
  # myParser.parse "http://water-rights-listing.dev/east.kml"
  # myParser.parse "http://water-rights-listing.dev/west.kml"
  # console.log doc.overlays

  for area in gon.areas
    myParser.parse area.kml.url
    # printShit "OMG"

  $('#transferable_to_area_name').change ->
    # alert $("#transferable_to_area_name :selected").text()
    setListingsByTransferable selected, $("#transferable_to_area_name :selected").text()

