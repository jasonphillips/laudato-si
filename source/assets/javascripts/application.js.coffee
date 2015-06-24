//= require_tree .

window.emphasisCallback = ()->
  thisURL = window.location.href
  $('.postLink').hide()
  $('#social').show()
  $('.shareLink').show().bind 'click', ()->
    $('.postLink').show()
    $('.shareLink').hide()
    window.bitly thisURL, (short)->
      thisEnc = encodeURIComponent(short)
      $('#social .twitterLink').attr
        'href': "https://twitter.com/share?url=#{thisEnc}&text=Pope%20Francis%20says...%20&hashtags=LaudatoSi"
      $('#social .fbLink').attr
        'href': "http://www.facebook.com/sharer.php?u=#{thisEnc}"
      $('#social .linkLink').bind 'click', ()->
        prompt('Share this link:',short)
