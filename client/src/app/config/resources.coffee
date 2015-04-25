angular.module "acforWorkflow"
  .factory "Machine", (RailsResource) ->
    class Machine extends RailsResource
      @configure url: "/api/machines", name: "machine"
