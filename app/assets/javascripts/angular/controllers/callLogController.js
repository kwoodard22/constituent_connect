(function(){

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
//   Dashboard.controller('CallLogControllerTest', function($scope, $http) {
//     $http.get('/call.json').success(function(data){
//       $scope.calls = data.call;
//     });
  
//   });
})();
