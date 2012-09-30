class Flickbar2.Models.Watches extends Backbone.Model
  paramRoot: 'watch'

  defaults: {}

class Flickbar2.Collections.WatchesCollection extends Backbone.Collection
  model: Flickbar2.Models.Watches
  url: '/watches'
