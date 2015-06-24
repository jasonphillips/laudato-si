//= require_tree .

window.emphasisCallback = ()->
  thisURL = window.location.href
  thisEnc = encodeURIComponent(thisURL)
  $('#social input')
  .attr
    'value': thisURL
  $('#social .twitterLink').attr
    'href': "https://twitter.com/share?url=#{thisEnc}&text=%20&hashtags=LaudatoSi"
  $('#social').show()
  $('#social .linkLink').bind 'click', ()->
    $('#social input')
    .attr
      'value': window.location.href
    .show()
    .focus()
    .select()
