angular.module "acforWorkflow"
  .config (AuthProvider, $httpProvider, AuthInterceptProvider) ->
    AuthProvider.loginPath 'api/users/sign_in.json'
    AuthProvider.logoutPath 'api/users/sign_out.json'
    AuthProvider.registerPath 'api/users/sign_up.json'
    $httpProvider.defaults.withCredentials = true
    AuthInterceptProvider.interceptAuth(true)
