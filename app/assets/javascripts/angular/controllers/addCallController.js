(function(){

  Dashboard.controller('AddCallController', function($scope, $http) {
    
    $scope.callInfo = {};

    var addCall = function(info) {
        info.callInfo.push(this.callInfo);
        $scope.callInfo = {};
    };

    // $scope.data = addedData.data;

    var submitForm = function() {
      return $http.post('./call/new').success(function(data) {
        return clearFrom();
      });
    };


    var loadCalls = function() {
        return $http.post('./call.json').success(function(data) {
          $scope.data.calls = data;
          return console.log('Successfully loaded calls.');
        }).error(function() {
          return console.error('Failed to load calls.');
        });
      };

  });
      

  // From Code School
  // Dashboard.controller('ReviewController', function() {
  //     this.review = {};

  //     this.addReview = function(info) {
  //       info.reviews.push(this.review);
  //       this.review = {};
  //     };
  // });

})();