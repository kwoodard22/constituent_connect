jQuery(document).ready(function(){
  showResponse("Unable to get results");
});

var query_params = { apikey: '4ba5b9170b15438e97ffd602144acad6',
                    history: { active: 'true'},
                    order: 'last_action_at'
                   };

var endpoint = 'https://congress.api.sunlightfoundation.com/bills';

var options = {
  data: query_params,
  type: 'GET',
  dataType: 'jsonp'    
};

var request = jQuery.ajax(endpoint, options)
                    .done(showResponse);

function showResponse (response) {
  RESPONSE = response;
    jQuery("#output").text(JSON.stringify(response, null, '  '));
  }
