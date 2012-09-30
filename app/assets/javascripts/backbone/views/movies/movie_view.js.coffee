Flickbar2.Views.Movies ||= {}

class Flickbar2.Views.Movies.MovieView extends Backbone.View
  template: JST["backbone/templates/movies/movie"]

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
