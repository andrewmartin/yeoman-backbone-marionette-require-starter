define [
  'backbone.marionette',
  "text!templates/header.html"
], (Marionette, HeaderTemplate) ->
  class HeaderLayout extends Backbone.Marionette.Layout

    template: _.template HeaderTemplate

    initialize: ->
      # console.log 'template', HeaderTemplate
      # console.log HomeTemplate
      # console.log "template", App

  return HeaderLayout