
define [
  "underscore",
  "backbone",
  "models/project"],
  (_, Backbone, ProjectModel)->

    class ProjectsCollection extends Backbone.Collection

      model: ProjectModel
