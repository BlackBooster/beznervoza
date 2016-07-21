$(document).ready(function() {
  $('video').mediaelementplayer({
    alwaysShowControls: true,
    videoVolume: 'horizontal',
    features: ['playpause','progress','volume','fullscreen']
  });
  $('#video-player').bind('contextmenu', function() { return false; });
  $(document).mousedown(function(e){
    if( e.button == 2 ) {
      $('#video-player').removeAttr('src');
      return false;
    }
    return true;
  });
});