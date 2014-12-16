//= require_self
//= require_tree ./angular/controllers


Dashboard = angular.module('Dashboard', []);

// ROUTE SHOULD BE USED FOR VIEWS - http://asanderson.org/posts/2013/06/23/bootstrapping-angular-rails-part-2.html
// Dashboard.config(['$routeProvider', function($routeProvider) {
//   $routeProvider.when('/call', {
//     templateUrl: '../assets/callLog.html',
//     controller: 'CallController'
//   });
//   // DEFAULT
//   $routeProvider.otherwise({
//     templateUrl: '../assets/callIndex.html', // NEED TO CHANGE!
//     controller: 'CallLogController'
//   });
// }])