define [
  "jquery",
  "underscore",
  "backbone",
  "collections/projects"
  "text!templates/list.html"],
  ($, _, Backbone, ProjectsCollection, projectListTemplate)->

    class ProjectListView extends Backbone.View
      el: $(".container")
      render: ->

        @collection = new ProjectsCollection()

        data =
          projects: @collection.models
          _: _

        console.log projectListTemplate
        compileTemplate = _.template(projectListTemplate, data)
        @$el.append compileTemplate
