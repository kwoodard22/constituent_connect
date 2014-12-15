(function(){
  Dashboard.controller('callLogController', ['$scope', '$resource', function($scope, $resource) {
      var Calls = $resource('/api/call');
      $scope.calls = Calls.query();
    }]);
})();

// (function(){
//   Dashboard.controller('callLogController', function() {
//       this.call = gem;
//     });
//     var gem = {
//       category: 'Love',
//       phoneNumber: '1234567890'
//     };

// })();