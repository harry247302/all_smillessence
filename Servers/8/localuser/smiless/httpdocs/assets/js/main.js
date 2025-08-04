var path = location.origin;
$(window).scroll(function(){
    if($(this).scrollTop()>($(window).height()) / 100) {$('header').addClass("header-fixed")}
    else{$('header').removeClass("header-fixed")}
    var fots = ($('footer').offset().top - $(window).height());

    if($(this).scrollTop()> fots) {
        $('.smil_goorevei').addClass("fixed")
    }
    else{
        $('.smil_goorevei').removeClass("fixed")
    }

})

$('[data-video]').on('click', function(){
    var video = $(this).attr('data-video');
    $('.Model_Video iframe').attr('src', video)
})
$('.menu-trigger').on('click', function(){
    var video = $('video.menuVideo');
    video.attr('src', video.attr('data-video'))
})
$('.header-space').css('height', $('header').height())
// Open Model
$('.model-open').on('click', function(){
    var model = $(this).attr('data-model');
    $(model).toggleClass('model_active');
})
// Cloase Model
$('.close_model,.overlay').on('click', function(){$('.modelPop').removeClass('model_active');$('.Model_Video iframe').attr('src', "")})

// Header Menu Popup
$('.navigation .label').on('click', function(){
    $(this).siblings('.dropdwon_list').slideToggle(500);
    $(this).toggleClass('current').parents('.dropdown').siblings().children('.label').removeClass('current')
})
// Form Input 
$(".form-control").on("change keyup focusout",function(){$(this).val()?$(this).addClass("valid"):$(this).removeClass("valid")})

// Back to top
$('footer').after('<div id="back-to-top" style="bottom:25px;right:100px"><svg aria-hidden="true" focusable="false" data-prefix="far" data-icon="arrow-up" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" class="svg-inline--fa fa-arrow-up fa-w-14"><path fill="currentColor" d="M6.101 261.899L25.9 281.698c4.686 4.686 12.284 4.686 16.971 0L198 126.568V468c0 6.627 5.373 12 12 12h28c6.627 0 12-5.373 12-12V126.568l155.13 155.13c4.686 4.686 12.284 4.686 16.971 0l19.799-19.799c4.686-4.686 4.686-12.284 0-16.971L232.485 35.515c-4.686-4.686-12.284-4.686-16.971 0L6.101 244.929c-4.687 4.686-4.687 12.284 0 16.97z" class=""></path></svg></div>');
$(window).scroll(function () {
    var currentScroll = $(window).scrollTop();
    if (currentScroll > 200) {$('#back-to-top').addClass('show')} 
    else {$('#back-to-top').removeClass('show')}
});

$('#back-to-top').on('click', function(){
    $('body,html').animate({
        scrollTop: 0 ,
        }, 700
    );
})
// File Upload
$('input[type="file"]').on('change', function(e){$('.labelfile_upload').text(e.target.files[0].name)})

$('.tab li').on('click', function(){
    var popCat = $(this).attr('data-cat');
    $(this).addClass('current').siblings().removeClass('current')
    filterTab(popCat);
    $('.ExperianceCat .col .item').removeClass('active')
    $('.ExperianceCat .col').eq(0).children('.item').addClass('active')
    
})
function filterTab(a){
    $('.tab-content').each(function(){
        var current_tab = $(this).attr('data-target')
        if(current_tab == a){$(this).show().addClass('active slideInUp')}
        else{$(this).hide().removeClass('active slideInUp')}
    })
}

$('body').click(function(e) {
    var catFilterCont = $(".form_filter");
    if (!catFilterCont.is(e.target) && catFilterCont.has(e.target).length === 0) {
        $('.BlogFilter .selected').removeClass('active');
    }
});


// Home Page
$('.heroslider').owlCarousel({
        items : 1,
        autoplay: true,
        loop: true,
        margin:0,
        responsiveClass:true,
        startPosition: 0,
        smartSpeed: 1200,
        dots: true,
        rewind: false,
        nav: false,
        navText: ['<img src="/assets/images/left.png" />','<img src="/assets/images/right.png" />'],
        responsive:{
            0:{
                mouseDrag: true,
                touchDrag: true,
            },
            1024:{
                mouseDrag: false,
                touchDrag: false,
            }
        }
    })

    $('.treat_slide').owlCarousel({
        items : 4,
        autoplay: false,
        loop: false,
        margin:15,
        responsiveClass:true,
        startPosition: 0,
        smartSpeed: 400,
        dots: false,
        nav: true,
        mouseDrag: false,
        touchDrag: false,
        navText: ['<img src="/assets/images/prev.png" />','<img src="/assets/images/next.png" />'],
        responsive:{
            0:{
                items:2
            },
            768:{
                items:3.2
            },
            992:{
                items:4
            }
        }
    })

    var infrSlider = $('.infrSlider');
    infrSlider.owlCarousel({
        items : 4,
        autoplay: false,
        loop: false,
        margin:5,
        responsiveClass:true,
        startPosition: 0,
        smartSpeed: 400,
        dots: false,
        nav: true,
        mouseDrag: false,
        touchDrag: false,
        navText: ['<img src="/assets/images/prev.png" />','<img src="/assets/images/next.png" />'],
        responsive:{
            0:{
                items:2
            },
            768:{
                items:3
            },
            992:{
                items:4
            },
            1000:{
                items:4
            }
        }
    })
    $('.infrSlider').find('.owl-nav .owl-prev').addClass('btndiable')
    infrSlider.find('.owl-item').eq(0).children('.item').addClass('current');
    var inItem = infrSlider.find('.owl-item').length - 1;
    
    var i = 0;
    infrSlider.find('.owl-nav .owl-prev').on('click', function(){
        if(i >0){
            i--;
            infrSlider.find('.owl-item').eq(i).children('.item').addClass('current');
            infrSlider.find('.owl-item').eq(i).siblings().children('.item').removeClass('current');
            arrst(i,inItem)
            var bg = infrSlider.find('.owl-item').eq(i).children('.item').attr('data-bg');
            $('.SmilWorldClaInfra').css({
                'background': 'url('+bg+')',
            })
        }
    })
    infrSlider.find('.owl-nav .owl-next').on('click', function(){
        if(i < inItem){
            i++;
            infrSlider.find('.owl-item').eq(i).children('.item').addClass('current');
            infrSlider.find('.owl-item').eq(i).siblings().children('.item').removeClass('current');
            arrst(i,inItem)
            var bg = infrSlider.find('.owl-item').eq(i).children('.item').attr('data-bg');
            $('.SmilWorldClaInfra').css({
                'background': 'url('+bg+')',
            })                        
        }
    })
    // Slider Nav Disable or active
    function arrst(i,j){
        if(i == 0){
            $('.infrSlider').find('.owl-nav .owl-prev').addClass('btndiable')
        }
        else{
            $('.infrSlider').find('.owl-nav .owl-prev').removeClass('btndiable')
        }
        if(i == j){
            $('.infrSlider').find('.owl-nav .owl-next').addClass('btndiable')
        }
        else{
            $('.infrSlider').find('.owl-nav .owl-next').removeClass('btndiable')
        }
    }
// Check Item active
    infrSlider.find('.owl-item').each(function(){
        $inThis = $(this);
        $inThis.on('click', function(){
            $(this).children('.item').addClass('current');
            $(this).siblings('.owl-item').children('.item').removeClass('current');
            i = $(this).index()
            var bg = $(this).children('.item').attr('data-bg');
            indrBg(bg)
            arrst(i,inItem)
        })
    })
    // Auto play slider
    setInterval(function(){
        var s = infrSlider.find('.owl-item').length - 1
       if(i != s){
            infrSlider.find('.owl-nav .owl-next').trigger('click')
       }
       else{
        infrSlider.trigger('to.owl.carousel',[0, 300, true]);
        infrSlider.find('.owl-item').eq(0).children('.item').addClass('current');
        infrSlider.find('.owl-item').eq(i).children('.item').removeClass('current')
        var bg = infrSlider.find('.owl-item').eq(0).children('.item').attr('data-bg');
        indrBg(bg)
        i=0;
       }
    },5000)
    
    // Set Background
    function indrBg(bg){
        $('.SmilWorldClaInfra').css({
            'background': 'url('+bg+')',
        })  
    }

    $('.smilSlider').owlCarousel({
        items : 1,
        autoplay: true,
        loop: true,
        margin:0,
        responsiveClass:true,
        startPosition: 0,
        smartSpeed: 400,
        dots: true,
        nav: false,
        mouseDrag: false,
        touchDrag: false,
        navText: ['<img src="/assets/images/prev.png" />','<img src="/assets/images/next.png" />'],
        responsive:{
            0:{
                mouseDrag: true,
                touchDrag: true,
            },
            1024:{
                mouseDrag: false,
                touchDrag: false,
            }
        }
    })

    $('.ourDentSlider').owlCarousel({
        items : 3,
        autoplay: false,
        loop: false,
        margin:15,
        responsiveClass:true,
        startPosition: 0,
        smartSpeed: 400,
        dots: false,
        nav: false,
        mouseDrag: false,
        touchDrag: false,
        navText: ['<img src="/assets/images/prev.png" />','<img src="/assets/images/next.png" />'],
        responsive:{
            0:{
                items:1.1,
                margin: 5,
                loop: true,
                mouseDrag: true,
                touchDrag: true,
            },
            676:{
                items:2
            },
            1000:{
                items:3,
                mouseDrag: false,
                touchDrag: false,
            }
        }
    })
    $('.smiloralbyslide').owlCarousel({
        items : 3,
        autoplay: false,
        loop: false,
        margin:0,
        responsiveClass:true,
        startPosition: 0,
        smartSpeed: 400,
        dots: true,
        nav: false,
        mouseDrag: false,
        touchDrag: false,
        navText: ['<img src="/assets/images/prev.png" />','<img src="/assets/images/next.png" />'],
        responsive:{
            0:{
                items:1,
                mouseDrag: true,
                touchDrag: true,
            },
            676:{
                items:2
            },
            1000:{
                items:3,
                mouseDrag: false,
                touchDrag: false,
            }
        }
    })


    // ABout Page
    
    $('.SliderDentest').owlCarousel({
        items : 1,
        autoplay: false,
        loop: true,
        margin:0,
        responsiveClass:true,
        startPosition: 0,
        smartSpeed: 400,
        dots: false,
        nav: true,
        mouseDrag: false,
        touchDrag: false,
        navContainer: '.densnav',
        navText: ['<img src="/assets/images/gnavleft.png" />','<img src="/assets/images/gnavright.png" />'],
        responsive:{
            0:{
                mouseDrag: true,
                touchDrag: true,
            },
            1024:{
                mouseDrag: false,
                touchDrag: false,
            }
        }
        
    })
   
$('.DentestProfile a.btn,.ourDentSlider .item').on('click', function(e){
    e.preventDefault();
    var doc = $(this).attr('data-profile')
    filterTab(doc)
})
    // Service Page
    $('.OralSlider').owlCarousel({
        items : 1,
        autoplay: true,
        loop: true,
        margin:0,
        responsiveClass:true,
        startPosition: 0,
        smartSpeed: 400,
        dots: true,
        nav: false,
        mouseDrag: false,
        touchDrag: false,
        responsive:{
            0:{
                mouseDrag: true,
                touchDrag: true,
            },
            1024:{
                mouseDrag: false,
                touchDrag: false,
            }
        }
        
    })
    // Service Detail Page
    $('.VidSlid').owlCarousel({
        items : 1,
        autoplay: true,
        loop: true,
        margin:0,
        responsiveClass:true,
        startPosition: 0,
        smartSpeed: 400,
        dots: true,
        nav: false,
        mouseDrag: false,
        touchDrag: false,
        responsive:{
            0:{
                mouseDrag: true,
                touchDrag: true,
            },
            1024:{
                mouseDrag: false,
                touchDrag: false,
            }
        }
        
    })
    $('.DocAsidSlider').owlCarousel({
        items : 1,
        autoplay: true,
        loop: true,
        margin:0,
        responsiveClass:true,
        startPosition: 0,
        smartSpeed: 400,
        dots: false,
        nav: true,
        mouseDrag: false,
        touchDrag: false,
        navText: ['<img src="/assets/images/sleft_arrow.png" />','<img src="/assets/images/sright_arrow.png" />'],
        responsive:{
            0:{
                mouseDrag: true,
                touchDrag: true,
            },
            1024:{
                mouseDrag: false,
                touchDrag: false,
            }
        }
        
    })

    $('.SerTabList .tab-Item').on('click', function(){
        $(this).addClass('current').siblings().removeClass('current')
    })


    $('.moreserviceSlider').owlCarousel({
        items : 3,
        autoplay: false,
        loop: false,
        margin:25,
        responsiveClass:true,
        startPosition: 0,
        smartSpeed: 400,
        dots: false,
        nav: true,
        mouseDrag: false,
        touchDrag: false,
        navText: ['<img src="/assets/images/prev.png" />','<img src="/assets/images/next.png" />'],
        responsive:{
            0:{
                items:2,
                mouseDrag: true,
                touchDrag: true,
                margin: 8
            },
            676:{
                items: 2,
            },
            1000:{
                items:3,
                mouseDrag: false,
                touchDrag: false,
                margin:25,
            }
        }
    })

    $('.certifslid').owlCarousel({
        items : 3,
        autoplay: false,
        loop: true,
        margin:0,
        responsiveClass:true,
        startPosition: 1,
        center: true,
        smartSpeed: 1500,
        dots: false,
        nav: true,
        navText: ['<img src="/assets/images/prev.png" />','<img src="/assets/images/next.png" />'],
        mouseDrag: false,
        touchDrag: false,
        responsive:{
            0:{
                mouseDrag: true,
                touchDrag: true,
            },
            1024:{
                mouseDrag: false,
                touchDrag: false,
            }
        }
        
    })