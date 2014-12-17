(function() {
  Dashboard.factory('callData', ['$http', function($http) {
    var callData = {
      data: {
        calls: [
          {
            user_id: 1,
            phone_number: '1234567890',
            category: 'Taxation',
            position: 'Opposed',
            sub_category: 'H.R. 5325 - Limiting Tax on Small Businesses'
          }, {
            user_id: 2,
            phone_number: '1234567890',
            category: 'Taxation',
            position: 'Opposed',
            sub_category: 'H.R. 5325 - Limiting Tax on Small Businesses'
          }
        ]
      }
      };
      console.log("Initialized callData.");
      return callData;
    }
  ]);

})();