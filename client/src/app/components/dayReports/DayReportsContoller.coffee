angular.module 'acforWorkflow'
.controller "DayReportsController", ($scope, DayReport, Machine, User) ->
  vm = @
  Machine.query().then (machines) ->
    vm.machines = machines
    console.log(machines)
    vm.dayReport = {
      user_id: User.currentUser()
    }
    vm.fields = [

      {
        key: 'date',
        type: 'input',
        templateOptions: {
          type: 'date'
          label: 'Select Date of report'
        }
      },
      {
        key: 'machine_id'
        type: 'select',
        templateOptions: {
          label: 'Select Machine for report:',
          options: vm.machines,
          valueProp: 'id'
        }
      }
    ]



  DayReport.query().then (reports) ->
    vm.reports = reports

  vm.saveNew = ->

  return

