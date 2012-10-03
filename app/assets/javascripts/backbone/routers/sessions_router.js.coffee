class Flickbar2.Routers.SessionsRouter extends Backbone.Router
  initialize: (options) ->
    console.log('init sessions router')
    @sessions = new Flickbar2.Collections.SessionsCollection()

  routes:
    "sign_in"      : "new"

  new: ->
    @view = new Flickbar2.Views.Sessions.New(collection: @sessions)
    $("#app").html(@view.render().el)
