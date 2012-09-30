Flickbar2.Views.Watches ||= {}

class Flickbar2.Views.Watches.ShowView extends Backbone.View
  template: JST["backbone/templates/watches/show"]

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
