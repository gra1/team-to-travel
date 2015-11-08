# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
  $('#show-special-trip').click ->
    $('#featured').toggle(150)

  $('#hide-special-trip').click ->
    #$('header').toggle(350)
    #$('#choose-special-trip.bg-primary2').toggle(550)
    $('#featured').toggle(550)
    #$('html, body').animate({
    #    scrollTop: $("#featured").offset().down
    #}, 300)

  $('#show-special-trips').click ->
    $('#choose-special-trip.bg-primary2').toggle(150)
    #$('header').toggle(400)
    #$('html, body').animate({
    #    scrollTop: $("#choose-special-trip").offset().top
    #}, 600)

  $ ->
    $('#datetimepicker4').datetimepicker()
    return

  # Google maps
  $ ->
    # Create the autocomplete object, restricting the search to geographical
    # location types.
    autocomplete = new (google.maps.places.Autocomplete)(document.getElementById('autocomplete'), types: [ 'geocode' ])
    # When the user selects an address from the dropdown, populate the address
    # fields in the form.
    return

  ((d, s, id) ->
    js = undefined
    fjs = d.getElementsByTagName(s)[0]
    if d.getElementById(id)
      return
    js = d.createElement(s)
    js.id = id
    js.src = '//connect.facebook.net/en_US/sdk.js#xfbml=1'
    fjs.parentNode.insertBefore js, fjs
    return
  ) document, 'script', 'facebook-jssdk'

$(document).ready ready
$(document).on 'page:load', ready
