class Flickbar2.Models.Session extends Backbone.Model
  paramRoot: 'session'

  defaults: {}

class Flickbar2.Collections.SessionsCollection extends Backbone.Collection
  model: Flickbar2.Models.Session
  url: '/sessions'
