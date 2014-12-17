(function() {

  Dashboard.controller('AddCallController', ['$scope', '$resource', 'Calls', 'Call', '$location',
    function($scope, $resource, Calls, Call, $location) {
    
    $scope.calls = [];

    $scope.loadCall = function() {
      $scope.calls.push(Calls.query());
      console.log($scope.calls);
    };

    $scope.loadCall();
    $scope.calls.push(Calls.query()); // Getting Call collection
   
    $scope.deleteCall = function(id, call) {
      Call.destroy({
        id: id
      });
      for (var i = 0; i < $scope.calls.length; i++) {
        if($scope.calls[i]["call"] === call) {
          $scope.calls.splice(i, 1);
        }
      }
    };

    $scope.save = function() {
      Calls.create({
        phone_number: $scope.call.phone_number,
        category: $scope.call.category,
        position: $scope.call.position,
        sub_category: $scope.call.sub_category
      });
      $scope.calls.push({
        phone_number: $scope.phone_number,
        category: $scope.category,
        position: $scope.position,
        sub_category: $scope.sub_category
      });
      $scope.call = {};
    };

  }
  ]);
      
  // From Code School
  // Dashboard.controller('ReviewController', function() {
  //     this.review = {};

  //     this.addReview = function(info) {
  //       info.reviews.push(this.review);
  //       this.review = {};
  //     };
  // });

})();