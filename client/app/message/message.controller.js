// Generated by CoffeeScript 1.8.0
(function() {
  'use strict';
  angular.module('angTestFullstackApp').factory("ergastAPIservice", function($http) {
    var ergastAPI;
    ergastAPI = {};
    ergastAPI.getDrivers = function() {
      return $http({
        method: "JSONP",
        url: "http://ergast.com/api/f1/2013/driverStandings.json?callback=JSON_CALLBACK"
      });
    };
    return ergastAPI;
  }).controller('MessageCtrl', function($scope, ergastAPIservice) {
    $scope.nameFilter = null;
    $scope.driversList = [];
    ergastAPIservice.getDrivers().success(function(response) {
      $scope.driversList = response.MRData.StandingsTable.StandingsLists[0].DriverStandings;
    });
  });

}).call(this);

//# sourceMappingURL=message.controller.js.map
