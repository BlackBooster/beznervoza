$(document).ready(function(){
  $("#jquery_jplayer_1").jPlayer({
    ready: function () {
      $(this).jPlayer("setMedia", {
        title: "65daysofstatic - Crash Tactics",
        mp3: "../public/audios/65daysofstatic - Crash Tactics.mp3"
      });
    },
    cssSelectorAncestor: "#jp_container_1",
    swfPath: "/js",
    supplied: "m4a, oga",
    useStateClassSkin: true,
    autoBlur: false,
    smoothPlayBar: true,
    keyEnabled: true,
    remainingDuration: true,
    toggleDuration: true
  });
});