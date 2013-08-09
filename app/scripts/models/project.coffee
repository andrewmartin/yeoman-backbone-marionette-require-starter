define [
  "underscore",
  "backbone"],
  (_, Backbone)->

    class ProjectModel extends Backbone.Model

      defaults:
        name: "Harry Potter"
