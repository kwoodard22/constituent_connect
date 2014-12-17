$(document).ready(function() {
  var query_params = { apikey: '4ba5b9170b15438e97ffd602144acad6',
                      history: { active: 'true'},
                      order: 'last_action_at',
                      per_page: 20
                     };

  var endpoint = 'https://congress.api.sunlightfoundation.com/bills';

  var options = {
    data: query_params,
    type: 'GET',
    dataType: 'jsonp'
  };

  var request = jQuery.ajax(endpoint, options)
                      .done(buildHtmlTable);

  function buildHtmlTable (response) {
    var results = response['results'];
    for (var i = 0; i < results.length; i++) {
      $('#bills').append('<tr><td>' + results[i].bill_id + '</td><td>' + results[i].short_title + '</td><td>' + results[i].official_title + '</td></tr>');
    }
  }

  // short_title | official_title (description)


  function showResponse (response) {
    var results = response['results'];
      jQuery("#output").text(JSON.stringify(results, null, '  '));
    }
});