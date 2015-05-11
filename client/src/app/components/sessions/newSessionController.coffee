angular.module "acforWorkflow"
  .controller "newSessionController", (Auth, $mdToast, $state,$scope) ->
    @user = {}

    this.createSession = ->
      console.log @user
      Auth.login @user
        .then (user) ->
          console.log user
          $mdToast.showSimple("Successfully logged in!")
          $state.go('home')
        , (error) ->
          console.log(error)
          $mdToast.showSimple(error.statusText)
      $scope.$on 'devise:login', (event, currentUser) ->
        console.log currentUser
      $scope.$on 'devise:login', (event, currentUser) ->
        console.log currentUser
