angular.module 'acforWorkflow'
  .controller "MachinesController", ($scope, Machine) ->
    vm = @
    vm.machine= {name}
    vm.fields = [
      {
        type: "input",
        key: "name",
        templateOptions: {
          label: 'Name'
        }
      }
    ]
    Machine.query().then (machines) ->
      vm.machines = machines

    vm.saveNew = ()->

      new Machine ({
        name: vm.machine.name
      })
      .create().then(
        (data) ->
          console.log(data)
        ,
        (error) ->
          console.log(error)
      )

    return
