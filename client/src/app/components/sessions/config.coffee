angular.module "acforWorkflow"
  .config ($stateProvider) ->
    $stateProvider
      .state "newSession",
        url: "/user/sign_in",
        templateUrl: "app/components/sessions/newSession.html",
        controller: "newSessionController"
        contollerAs: "session"

