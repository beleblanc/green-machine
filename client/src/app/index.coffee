angular.module 'acforWorkflow', ['ngAnimate', 'ngCookies', 'ngTouch', 'ngSanitize', 'ngResource', 'ui.router',
                                 'ngMaterial','Devise' ,'rails', 'formly']
  .config ($stateProvider, $urlRouterProvider, $locationProvider) ->
    $stateProvider
      .state "home",
        url: "/",
        templateUrl: "app/main/main.html",
        controller: "MainCtrl",
        controllerAs: "main",
        resolve: {

        }
      .state "machines",
        url:"/machines",
        templateUrl: "app/components/machines/machines.html",
        controller: "MachinesController"

    $urlRouterProvider.otherwise '/'
    $locationProvider.html5Mode true

