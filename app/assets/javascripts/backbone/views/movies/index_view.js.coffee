Flickbar2.Views.Movies ||= {}

class Flickbar2.Views.Movies.IndexView extends Backbone.View
  template: JST["backbone/templates/movies/index"]

  initialize: () ->
    @options.movies.bind('reset', @addAll)

  addAll: () =>
    @options.movies.each(@addOne)

  addOne: (movie) =>
    view = new Flickbar2.Views.Movies.MovieView({model : movie})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(movies: @options.movies.toJSON() ))
    @addAll()

    return this
