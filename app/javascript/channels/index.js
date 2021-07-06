// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)


// ここに記述？
// $(document).ready(function() {
//    $("p").text("jQuery稼働テスト(稼働中)");
//  });
$(function() {
    $('.icon').click(function() {
        $(this).toggleClass('active');
    
        if ($(this).hasClass('active')) {
    　　    $('.menu').addClass('active');
    　  } else {
    　　    $('.menu').removeClass('active');
    　  }
    });
});
