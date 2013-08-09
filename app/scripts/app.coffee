# global define
define [
  "backbone.marionette"
  "router/router"
  "layouts/home"
  "layouts/header"
  "layouts/footer"
], (BBM, Router, HomeLayout, HeaderLayout, FooterLayout) ->

  "use strict"
  # "'Allo 'Allo!!!"
  class Application extends Backbone.Marionette.Application

    onInitializeBefore: =>

    onInitializeAfter: =>
      # Marionette.Region.prototype.open = (view) ->
      #   this.$el.hide()
      #   this.$el.html(view.el)
      #   this.$el.slideDown(250, "easeOutExpo")

      # Main Region
      @addRegions
        mainRegion: '#app'
        header: '#header'
        footer: '#footer'

      @showBaseRegions()

      # AppRouter
      @router = new Router controller: @

      # Request Response / Vent
      # @reqRes()
      # @appVent()

      Backbone.history.start
        pushState:  true
        root:       "/"

    showBaseRegions: =>
      @headerLayout = new HeaderLayout()
      @footerLayout = new FooterLayout()
      @header.show @headerLayout
      @footer.show @footerLayout

    subRoute: =>
      console.log 'test'

    homeRoute: =>
      layout = new HomeLayout()
      @mainRegion.show layout

    defaultAction: (action) =>
      console.log 'no route', action
