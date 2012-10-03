class Flickbar2.Models.Session extends Backbone.Model
  urlRoot: 'sessions'

  defaults: {}

  destroy: (options) ->
    $.ajax
      url: 'sign_out'
      type: 'POST'
      success: ->
        options.success()


#
#class Flickbar2.Collections.SessionsCollection extends Backbone.Collection
#  model: Flickbar2.Models.Session
#  url: '/sessions'
