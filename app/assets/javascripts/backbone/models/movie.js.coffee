class Flickbar2.Models.Movie extends Backbone.Model
  paramRoot: 'movie'

  defaults: ''

class Flickbar2.Collections.MoviesCollection extends Backbone.Collection
  model: Flickbar2.Models.Movie
  url: '/movies'
