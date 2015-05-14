angular.module "acforWorkflow"
  .config ($stateProvider) ->
    $stateProvider
      .state "machines", {
      url: "/machines",
      templateUrl: "app/components/machines/machines.html",
      controller: "MachinesController as vm"
    }
      .state "newMachine", {
      url: "/machines/new",
      templateUrl: "app/components/machines/new.jade",
      controller: "MachinesController as vm"
    }
