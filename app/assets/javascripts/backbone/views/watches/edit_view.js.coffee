Flickbar2.Views.Watches ||= {}

class Flickbar2.Views.Watches.EditView extends Backbone.View
  template : JST["backbone/templates/watches/edit"]

  events :
    "submit #edit-watches" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (watches) =>
        @model = watches
        window.location.hash = "/#{@model.id}"
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
