Flickbar2.Views.Movies ||= {}

class Flickbar2.Views.Movies.ShowView extends Backbone.View
  template: JST["backbone/templates/movies/show"]

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
