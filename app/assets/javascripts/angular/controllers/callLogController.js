(function(){

// Wrote from http://asanderson.org/posts/2013/08/19/bootstrapping-angular-rails-part-3.html
  Dashboard.controller('CallLogController', function($scope, $location, $http, callData) {
      $scope.data = callData.data;
      
      var loadCalls = function() {
        return $http.get('./call.json').success(function(data) {
          $scope.data.calls = data;
          return console.log('Successfully loaded calls.');
        }).error(function() {
          return console.error('Failed to load calls.');
        });
      };

      return $scope.viewCall = function(callId) {
        return $location.url('/call/' + callId);
      };

  });

// Controller to load data into panel depending on tab clicked
  Dashboard.controller('PanelController', function(){
    this.tab = 1;

    this.selectTab = function(setTab) {
      this.tab = setTab;
    };

    this.isSelected = function(checkTab) {
      return this.tab === checkTab;
    };
  });

// TEST/DUMMY controller loading fake call data to test app
  Dashboard.controller('CallLogControllerTest', function($scope, $http) {
    $http.get('/call.json').success(function(data){
      $scope.calls = data.call;
    });
  
  });
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