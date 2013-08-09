define [
  'backbone.marionette',
  "text!templates/footer.html"
], (Marionette, FooterTemplate) ->
  class FooterLayout extends Backbone.Marionette.Layout

    template: _.template FooterTemplate

    initialize: ->

  return FooterLayout