class Flickbar2.Routers.WatchesRouter extends Backbone.Router
  initialize: (options) ->
    @watches = new Flickbar2.Collections.WatchesCollection()
    @watches.reset options.watches

  routes:
    "new"      : "newWatches"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newWatches: ->
    @view = new Flickbar2.Views.Watches.NewView(collection: @watches)
    $("#watches").html(@view.render().el)

  index: ->
    @view = new Flickbar2.Views.Watches.IndexView(watches: @watches)
    $("#watches").html(@view.render().el)

  show: (id) ->
    watches = @watches.get(id)

    @view = new Flickbar2.Views.Watches.ShowView(model: watches)
    $("#watches").html(@view.render().el)

  edit: (id) ->
    watches = @watches.get(id)

    @view = new Flickbar2.Views.Watches.EditView(model: watches)
    $("#watches").html(@view.render().el)
