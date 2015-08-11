$(document).ready(function(){
      var scroll_start = 0;
        var startchange = $('.navbar');
        var offset = startchange.offset();
        $(document).scroll(function(){
            scroll_start = $(this).scrollTop();
            if(scroll_start > offset.top){
                $('.navbar').css('background-color', 'rgba(255,255,255,0.85)');
            }else{
                $('.navbar').css('background-color', 'transparent');
            }
        });

         if(($(window).height()) > 750){
           $('section').height($(window).height());
          $(window).resize(function(){
              $('section').height($(window).height());
          });
      }

  });

$(window).load(function () {
    $('#preloader').delay(300).fadeOut('slow');
});