'use strict'

angular.module 'angTestFullstackApp'
.factory "ergastAPIservice", ($http) ->
  ergastAPI = {}
  ergastAPI.getDrivers = ->
    $http
      method: "JSONP"
      url: "http://ergast.com/api/f1/2013/driverStandings.json?callback=JSON_CALLBACK"
  ergastAPI

.controller 'MessageCtrl', ($scope, ergastAPIservice) ->
#  $scope.awesomeThings = []
#  $http.get('/api/things').success (awesomeThings) ->
#    $scope.awesomeThings = awesomeThings
#    socket.syncUpdates 'thing', $scope.awesomeThings
  $scope.nameFilter = null
  $scope.driversList = []
  ergastAPIservice.getDrivers().success (response) ->
    $scope.driversList = response.MRData.StandingsTable.StandingsLists[0].DriverStandings
    return

  return
