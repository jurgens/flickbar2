Flickbar2.Views.Sessions ||= {}

class Flickbar2.Views.Sessions.New extends Backbone.View
  template : JST["backbone/templates/sessions/new"]

  events :
    "submit form" : "sign_in"

  constructor: (options) ->
    super(options)
    console.log('collection', @collection)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  sign_in : (e) ->
    e.preventDefault()
    e.stopPropagation()

    email = this.$(".email")
    password = this.$(".password")

    @model.set({email: email.val(), password: password.val()})

    @collection.create(@model.toJSON(),
      success: (session) =>
        @model = session
        console.log('success', @model)
#        window.location.hash = "/#{@model.id}"

      error: (session, jqXHR) =>
        console.log('error')
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render : ->
    $(@el).html(@template({}))

#    this.$("form").backboneLink(@model)

    return this