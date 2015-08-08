(function() {
  window.bitly = function(long_url,callback){
    var url = 'https://api-ssl.bitly.com/v3/shorten';
    var params = {
        "login":"o_7v5rsdsp7f",
        "apiKey":"R_b5e0101b56484f27959e0a3f4013f854",
        "longUrl":long_url
    }
    $.get(url,params,function(response) {
      callback(response.data.url);
    })
  };
})()
