Flickbar2.Views.Sessions ||= {}

class Flickbar2.Views.Sessions.New extends Backbone.View
  template : JST["backbone/templates/sessions/new"]

  events :
    "submit form" : "sign_in"

  constructor: (options) ->
    super(options)

    @model.bind("change:errors", () =>
      this.render()
    )

  sign_in : (e) ->
    e.preventDefault()
    e.stopPropagation()

    email = this.$(".email")
    password = this.$(".password")

    @model.set({email: email.val(), password: password.val()})

    @model.save(null,
      success: (session) =>
        console.log("logged in")
        this.$(".flash").html('Success')
        @model = session
        $("body").trigger("session:change")
        console.log('trigger')
        window.location.hash = "#/"

      error: (session, jqXHR) =>
        console.log('error')
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render : ->
    $(@el).html(@template({}))

#    this.$("form").backboneLink(@model)

    return this