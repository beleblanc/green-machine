angular.module 'acforWorkflow', ['ngAnimate', 'ngCookies', 'ngTouch', 'ngSanitize', 'ngResource', 'ui.router',
                                 'ngMaterial','Devise' ,'rails', 'formly', 'formlyBootstrap']
  .config ($stateProvider, $urlRouterProvider, $locationProvider) ->
    $stateProvider
      .state "home",
        url: "/",
        templateUrl: "app/main/main.html",
        controller: "MainCtrl",
        controllerAs: "main",


    $urlRouterProvider.otherwise '/'
    $locationProvider.html5Mode true

