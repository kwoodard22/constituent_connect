(function() {
  
  Dashboard.controller('CallController', function($scope, $routeParams, callData) {
      $scope.data = {
        call: callData.data.calls[0]
      };
      $scope.data.callId = $routeParams.callId;
      return console.log($routeParams);
  });

})();