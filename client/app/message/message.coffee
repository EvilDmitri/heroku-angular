'use strict'

angular.module 'angTestFullstackApp'
.config ($stateProvider) ->
  $stateProvider.state 'message',
    url: '/message'
    templateUrl: 'app/message/message.html'
    controller: 'MessageCtrl'
