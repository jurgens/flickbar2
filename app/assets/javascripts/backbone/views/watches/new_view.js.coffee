Flickbar2.Views.Watches ||= {}

class Flickbar2.Views.Watches.NewView extends Backbone.View
  template: JST["backbone/templates/watches/new"]

  events:
    "submit #new-watches": "save"

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    @collection.create(@model.toJSON(),
      success: (watches) =>
        @model = watches
        window.location.hash = "/#{@model.id}"

      error: (watches, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
