var angular = require('angular');
require('angular-resource');
require('angular-ui-bootstrap');

var app = angular.module('StravaDistanceDisplay', ['ngResource']);

app.factory('Status', function($resource) {
  var Status = $resource('/status');
  return Status;
});

app.controller('StatusController', function(Status, $scope, $interval) {
  $scope.status = Status.get();
  
  $interval(function() {
    $scope.status.$get();
  }, 2000);
});
