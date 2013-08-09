define [
  "backbone.marionette"
], (BBM) ->

  class AppRouter extends Backbone.Marionette.AppRouter
    appRoutes:
      "":                   "homeRoute"
      "sub": "subRoute"
      "*actions": "defaultAction"
