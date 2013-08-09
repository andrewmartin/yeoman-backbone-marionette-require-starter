require.config
  shim:
    underscore:
      exports: "_"

    backbone:
      deps: ["underscore", "jquery"]
      exports: "Backbone"

    bootstrap:
      deps: ["jquery"]
      exports: "jquery"

    "backbone.marionette":
      deps: ["backbone"]

  paths:
    jquery: "../bower_components/jquery/jquery"
    backbone: "../bower_components/backbone/backbone"
    # "backbone.marionette":
    underscore: "../bower_components/underscore/underscore"
    bootstrap: "vendor/bootstrap",
    text: "../bower_components/requirejs-text/text",
    templates: "../templates"
    "backbone.marionette": "../bower_components/backbone.marionette/lib/backbone.marionette.min"

require ["app"], (App) ->
  window.app = new App()
  window.app.start()