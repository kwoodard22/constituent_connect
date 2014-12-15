(function(){
  Dashboard.controller('callLogControllerTest', ['$scope', '$resource', function($scope, $resource) {
      var Calls = $resource('/api/call');
      $scope.calls = Calls.query();
    }]);
  

  Dashboard.controller('CallLogControllerTest', function() {
      this.calls = allCalls;
    });

    var allCalls = [{
      category: 'Love',
      phoneNumber: '1234567890'
    },
    {
      category: 'Peace',
      phoneNumber: '0101010101'
    }];

})();


// TO NOTE:
// filter for date --> {{'1388123412323' | date:'MM/dd/yyyy @ h:mma'}} 
// produces --> 12/27/2013 @ 12:50am

// (function(){
//   Dashboard.controller('callLogController', function() {
//       this.call = gem;
//     });
//     var gem = {
//       category: 'Love',
//       phoneNumber: '1234567890'
//     };

// })();