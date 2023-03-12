$( document ).ready(function() {

    $(window).scroll(function (event) {
        var scroll = $(window).scrollTop();
        if(scroll >= 50){
            $(".navigation").addClass("fixed");
            $('.mobilemenucontent').removeClass('active');
        }

        if(scroll <= 50){
            $(".navigation").removeClass("fixed");
        }
    });

    $(".owl-one").owlCarousel({
        loop:false,
        items:3,
        margin:25,
        nav:true,
        navText:['<i class="fas fa-arrow-left"></i>','<i class="fas fa-arrow-right"></i>'],
        responsiveClass:true,
        responsive:{
            0:{
                items:1,
            },
            1100:{
                items:2,
            },
            1400:{
                items:3,
            }
        }

    });

    $(".owl-two").owlCarousel({
        loop:false,
        items:3,
        margin:25,
        nav:true,
        autoHeight:true,
        navText:['<i class="fas fa-arrow-left"></i>','<i class="fas fa-arrow-right"></i>'],
        responsiveClass:true,
        responsive:{
            0:{
                items:1,
            },
            950:{
                items:2,
            },
            1400:{
                items:3,
            }
        }
    });

    $('.linknav').on('click', function(e){
        e.preventDefault();
        
        var button = $(this);
        var url = button.attr('data-url');
        var nav = button.attr('data-nav');
        var blank = button.attr('data-blank');

        if(url != undefined){
            if(blank == undefined) window.open(url, '_blank');
            else location.href = url;
        }

        if(nav != undefined){
            $('html, body').stop().animate({
                scrollTop: $(nav).offset().top
            }, 1500); 
        }
    });

    $('.navigationRightMobileMenu p').on('click', function(e){
        e.preventDefault();
        $('.mobilemenucontent').toggleClass('active');
    });

    $('.disabledlink').on('click',function(e){
        e.preventDefault();

        Swal.fire({
            confirmButtonColor: '#019CDA',
            confirmButtonText: 'J\'ai compris',
            title: 'Article bientôt disponible',
            width: 600,
            padding: '3em',
            color: '#fff',
            background: '#252943',
          })
    });

});

