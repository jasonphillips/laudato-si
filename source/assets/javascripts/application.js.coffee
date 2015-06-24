//= require_tree .

window.emphasisCallback = ()->
  thisURL = window.location.href
  thisEnc = encodeURIComponent(thisURL+',x')
  $('#social .twitterLink').attr
    'href': "https://twitter.com/share?url=#{thisEnc}&text=%20&hashtags=LaudatoSi"
  $('#social .fbLink').attr
    'href': "http://www.facebook.com/sharer.php?u=#{thisEnc}"
  $('#social .linkLink').bind 'click', ()->
    prompt('Share this link:',window.location.href)
  $('#social').show()
