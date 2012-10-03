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
    Backbone.history.start()
