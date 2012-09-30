class Flickbar2.Routers.MoviesRouter extends Backbone.Router
  initialize: (options) ->
    @movies = new Flickbar2.Collections.MoviesCollection()
    @movies.reset options.movies

  routes:
    "new"      : "newMovie"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newMovie: ->
    @view = new Flickbar2.Views.Movies.NewView(collection: @movies)
    $("#movies").html(@view.render().el)

  index: ->
    @view = new Flickbar2.Views.Movies.IndexView(movies: @movies)
    $("#movies").html(@view.render().el)

  show: (id) ->
    movie = @movies.get(id)

    @view = new Flickbar2.Views.Movies.ShowView(model: movie)
    $("#movies").html(@view.render().el)

  edit: (id) ->
    movie = @movies.get(id)

    @view = new Flickbar2.Views.Movies.EditView(model: movie)
    $("#movies").html(@view.render().el)
