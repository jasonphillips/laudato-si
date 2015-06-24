(function() {
  window.bitly = function(long_url,callback){
    bi = new URL("https://api-ssl.bitly.com/v3/shorten?");
    var params = [
        "login=o_7v5rsdsp7f",
        "apiKey=R_b5e0101b56484f27959e0a3f4013f854",
        "longUrl="+ encodeURIComponent(long_url)
    ]
    bi.search = "?"+params.join('&')
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange=function () {
       if (xhr.readyState === 4) {
        if (xhr.status === 200) {
         var res = JSON.parse(xhr.responseText);
         callback(res["data"]["url"])
        } else {
          alert('There was a problem with the request.');
        }
      }
    }
    xhr.open("GET",bi.toString());
    xhr.send(null)
  };
})()
