Flickbar2.Views.Movies ||= {}

class Flickbar2.Views.Movies.EditView extends Backbone.View
  template : JST["backbone/templates/movies/edit"]

  events :
    "submit #edit-movie" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (movie) =>
        @model = movie
        window.location.hash = "/#{@model.id}"
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
