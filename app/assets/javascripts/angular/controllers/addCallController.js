(function(){
  Dashboard.controller('AddCallController', function($scope) {
    $scope.phoneNum = "";
    $scope.category = "";

  });

  // From Code School
  Dashboard.controller('ReviewController', function() {
      this.review = {};

      this.addReview = function(call) {
        call.reviews.push(this.review);
        this.review = {};
      };
  });

})();