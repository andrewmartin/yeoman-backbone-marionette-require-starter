define [
  'backbone.marionette',
  "text!templates/home.html"
], (Marionette, HomeTemplate) ->
  class HomeLayout extends Backbone.Marionette.Layout

    template: _.template HomeTemplate

    initialize: ->
      console.log 'template', HomeTemplate
      # console.log HomeTemplate
      # console.log "template", App

  return HomeLayout