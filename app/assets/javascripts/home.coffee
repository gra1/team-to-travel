# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
  $('#show-special-trip').click ->
    $('#find-special-trip.bg-primary').toggle(150)
    $('html, body').animate({
        scrollTop: $("#find-special-trip").offset().top
    }, 300)

  $('#hide-special-trip').click ->
    $('header').toggle(350)
    $('#choose-special-trip.bg-primary2').toggle(550)
    $('#find-special-trip.bg-primary').toggle(550)
    $('html, body').animate({
        scrollTop: $("#find-special-trip").offset().down
    }, 300)

  $('#show-special-trips').click ->
    $('#choose-special-trip.bg-primary2').toggle(150)
    $('header').toggle(400)
    $('html, body').animate({
        scrollTop: $("#choose-special-trip").offset().top
    }, 600)

  $ ->
    $('#datetimepicker4').datetimepicker()
    return

$(document).ready ready
$(document).on 'page:load', ready
