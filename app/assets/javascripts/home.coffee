# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
  $('#show-special-trip, #hide-special-trip').click ->
    $('#special-trip.bg-primary').toggle(150)
    $('html, body').animate({
        scrollTop: $("#special-trip").offset().top
    }, 300)

  $ ->
    $('#datetimepicker4').datetimepicker()
    return

$(document).ready ready
$(document).on 'page:load', ready
