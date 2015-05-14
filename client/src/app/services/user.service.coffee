angular.module "acforWorkflow"
  .factory "User", ($rootScope) ->
    serviceUser = {}
    return {
      currentUser: () ->
        return serviceUser
    }

    $rootScope.$on 'devise:login', (event, user) ->
      serviceUser = user
      console.log(serviceUser)
    $rootScope.$on 'devise:new-session', (event, user) ->
      serviceUser = user
