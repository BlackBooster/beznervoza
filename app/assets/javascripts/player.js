$(document).ready(function(){
  $("#jquery_jplayer_1").jPlayer({
    ready: function () {
      $(this).jPlayer("setMedia", {
        title: "Mos def",
        mp3: link
      });
    },
    cssSelectorAncestor: "#jp_container_1",
    swfPath: "/js",
    supplied: "mp3",
    useStateClassSkin: true,
    autoBlur: false,
    smoothPlayBar: true,
    keyEnabled: true,
    remainingDuration: false,
    toggleDuration: true
  });
 var link =  "https://s3.eu-central-1.amazonaws.com/blackbooster/audios/Massive+Attack+feat.+Mos+Def+-+I+Against+I.mp3"
  $('#jp_audio_0[src=""]').hide()
  $('#jp_audio_0:not[src=""]').show()
});