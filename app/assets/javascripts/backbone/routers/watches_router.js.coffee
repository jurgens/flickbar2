class Flickbar2.Routers.WatchesRouter extends Backbone.Router
  initialize: (options) ->
    console.log('watches router')
    @watches = new Flickbar2.Collections.WatchesCollection()
#    @watches.reset options.watches

  routes:
    "new"       : "newWatches"
    ""     : "index"
#    ":id/edit" : "edit"
#    ":id"      : "show"
#    ".*"        : "index"

  newWatches: ->
    @view = new Flickbar2.Views.Watches.NewView(collection: @watches)
    $("#app").html(@view.render().el)

  index: ->
    @view = new Flickbar2.Views.Watches.IndexView(watches: @watches)
    $("#app").html(@view.render().el)

  show: (id) ->
    watches = @watches.get(id)

    @view = new Flickbar2.Views.Watches.ShowView(model: watches)
    $("#app").html(@view.render().el)

  edit: (id) ->
    watches = @watches.get(id)

    @view = new Flickbar2.Views.Watches.EditView(model: watches)
    $("#app").html(@view.render().el)
