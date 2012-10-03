class Flickbar2.Routers.SessionsRouter extends Backbone.Router
  initialize: (options) ->
    @session = new Flickbar2.Models.Session()

  routes:
    "sign_in"     : "new"
    "sign_out"    : "destroy"

  new: ->
    @view = new Flickbar2.Views.Sessions.New(model: @session)
    $("#app").html(@view.render().el)

  destroy: ->
    @session.unset('id')
    @session.destroy(
      success: () ->
        console.log('destroy session')
        $("body").trigger("session:change")

    )