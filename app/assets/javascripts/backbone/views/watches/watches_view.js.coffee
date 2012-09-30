Flickbar2.Views.Watches ||= {}

class Flickbar2.Views.Watches.WatchesView extends Backbone.View
  template: JST["backbone/templates/watches/watches"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
