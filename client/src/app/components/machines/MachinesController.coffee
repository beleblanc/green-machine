angular.module 'acforWorkflow'
  .controller "MachinesController", ($scope, Machine) ->
    Machine.query().then (machines) ->
      $scope.machines = machines
