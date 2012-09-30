Flickbar2.Views.Watches ||= {}

class Flickbar2.Views.Watches.IndexView extends Backbone.View
  template: JST["backbone/templates/watches/index"]

  initialize: () ->
    @options.watches.bind('reset', @addAll)

  addAll: () =>
    @options.watches.each(@addOne)

  addOne: (watches) =>
    view = new Flickbar2.Views.Watches.WatchesView({model : watches})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(watches: @options.watches.toJSON() ))
    @addAll()

    return this
