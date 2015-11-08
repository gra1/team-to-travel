class @UserProfile
  constructor: (el) ->
    @el = $(el)
    @_bindEvents()

  _bindEvents: ->
    @el.on 'click', '.show-trip-form', @_showTripForm

    @el.on 'click', '#cancel', @_hideTripForm

    @el.on 'ajax:success', '.trip-form', @_hideTripForm

  _showTripForm: (e)=>
    @el.find('.add-trip-form').removeClass('hidden')
    return false

  _hideTripForm: (e)=>
    @el.find('.add-trip-form').addClass('hidden')
    @el.find('.trip-form').trigger('reset')
    return false

$ ->
  new UserProfile('#user-profile')
