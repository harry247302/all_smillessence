////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// jQuery
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
$(document).ready(function($) {
    "use strict";

    var $body = $("body");

    if ($body.hasClass("has-loading-screen")) {
        $body.append('<div class="loader"></div>');
        //$.getScript( "assets/js/pace.min.js", function( data, textStatus, jqxhr ) {
        Pace.on("done", function() {
            $body.addClass("loading-done");
            setTimeout(function() {
                $body.addClass("hide-loading-screen");
            }, 500);
            $.each($(".animate"), function(i) {
                var $this = $(this);
                setTimeout(function() {
                    $this.addClass("show-it");
                }, i * 100);
            });
        });
    }

    //  "img" into "background-image" transfer
    $("[data-background-image]").each(function() {
        $(this).css("background-image", "url(" + $(this).attr("data-background-image") + ")");
    });
    $(".bg-transfer").each(function() {
        $(this).css("background-image", "url(" + $(this).find("img").attr("src") + ")");
    });
    //  Side panel opening
    $(".open-side-panel").on("click", function(e) {
        e.preventDefault();
        if (!$body.hasClass("show-panel")) {
            $("body").addClass("show-panel");
            setTimeout(function() {
                $("body").addClass("in");
            }, 200);
        }
    });
    //  Side panel closing
    $("#page, .close-panel, .open-side-panel").on("click", function(e) {
        if ($body.hasClass("show-panel in")) {
            $body.removeClass("show-panel");
            $body.removeClass("in");
        }
    });
    //  Form Validation
    $(".form .btn[type='submit']").on("click", function(e) {
        var button = $(this);
        var form = $(this).closest("form");
        button.prepend("<div class='status'></div>");
        form.validate({
            submitHandler: function() {
                $.post("assets/php/email.php", form.serialize(), function(response) {
                    button.find(".status").append(response);
                    form.addClass("submitted");
                });
                return false;
            }
        });
    });

});


// Tinku 

function makeTimer() {
        var endTime = new Date("12 Nov 2021 9:56:00 GMT+01:00");          
            endTime = (Date.parse(endTime) / 1000);
            var now = new Date();
            now = (Date.parse(now) / 1000);
            var timeLeft = endTime - now;
            var days = Math.floor(timeLeft / 86400); 
            var hours = Math.floor((timeLeft - (days * 86400)) / 3600);
            var minutes = Math.floor((timeLeft - (days * 86400) - (hours * 3600 )) / 60);
            var seconds = Math.floor((timeLeft - (days * 86400) - (hours * 3600) - (minutes * 60)));
            if (hours < "10") { hours = "0" + hours; }
            if (minutes < "10") { minutes = "0" + minutes; }
            if (seconds < "10") { seconds = "0" + seconds; }
            $("#days").html(days + "<span>Days</span>");
            $("#hours").html(hours + "<span>Hours</span>");
            $("#minutes").html(minutes + "<span>Minutes</span>");
            $("#seconds").html(seconds + "<span>Seconds</span>");       
    }
    setInterval(function() { makeTimer(); }, 1000);


// Text SlideShow  

   $('.ServiceSlide').owlCarousel({ 
        items: 1,
        loop: true,
        margin: 30,
        dots: true,
        autoPlay: 5000,
        slideSpeed: 5000,
        autoplay: true,
        nav: false,
        responsive: {
        0: {
            items: 1
        },
        600: {
            items: 1
        },
        1000: {
            items: 1
        }
       }
    });
	


