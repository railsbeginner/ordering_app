angular.module('OrderingApp', ['ui.router', 'templates', 'satellizer'])
  .config ($authProvider, $httpProvider) ->
    $authProvider.facebook clientId: '792920127488625'
    $authProvider.github clientId: '01c5fc0173c5b13fb1f2'
    $httpProvider.defaults.headers.common['X-CSRF-Token'] =
      angular.element(document.querySelector('meta[name=csrf-token]')).attr('content')
