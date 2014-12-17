//= require_self
//= require_tree ./angular/templates
//= require_tree ./angular/services
//= require_tree ./angular/controllers


var Dashboard = angular.module('Dashboard', ['ngResource']);

Dashboard.factory('Call', ['$resource',
  function($resource) {
    return $resource('/call.json', {}, {
      query: {
        method:'GET',
        isArray: true
      },
      create: {
        method: 'POST'
      }
    });
  }
]);


// ROUTE SHOULD BE USED FOR VIEWS - http://asanderson.org/posts/2013/06/23/bootstrapping-angular-rails-part-2.html
// Dashboard.config(['$routeProvider', function($routeProvider) {
//   $routeProvider.when('/call/new', {
//     templateUrl: '../assets/mainCreateCall.html',
//     controller: 'CreateCallController'
//   }).when('/call/:callId', {
//     templateUrl: '../assets/mainCall.html',
//     controller: 'MainCallController'
//   });
//   // DEFAULT
//   $routeProvider.otherwise({
//     templateUrl: '../assets/callLog.html',
//     controller: 'CallLogController'
//   });
// }]);