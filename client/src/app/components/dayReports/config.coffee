angular.module "acforWorkflow"
.config ($stateProvider) ->
  $stateProvider
  .state "dayReports", {
    url: "/day-reports",
    templateUrl: "app/components/dayReports/dayReports.html",
    controller: "DayReportsController as vm"
  }
  .state "newDayReport", {
    url: "/day-reports/new",
    templateUrl: "app/components/dayReports/new.jade",
    controller: "DayReportsController as vm"
  }
