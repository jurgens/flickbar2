#= require_self
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers

window.Flickbar2 =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}

  init: ->
    new Flickbar2.Routers.SessionsRouter()
    window.router = new Flickbar2.Routers.WatchesRouter()

    $("body").bind("session:change", () ->
      console.log('session change')
      $.ajax(
        url: '/home/header?' + Math.random(),
        success: (data)->
          $("header").replaceWith( data )
      )
    )


    Backbone.history.start()
