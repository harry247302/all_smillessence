<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>Dr. Vineet Vinayak | Best Dentist in Palam Vihar Gurgaon</title>


    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet" />
    <link href="assetsUC/imagesUC/favicon.png" rel="icon" type="image/png" />
    <link href="assetsUC/cssUC/animate.css" rel="stylesheet" />
    <link href="assetsUC/cssUC/fontawesome-all.css" rel="stylesheet" />
    <link href="assetsUC/cssUC/fontawesome-all.min.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet" />
    <link href="assetsUC/cssUC/owl.carousel.min.css" rel="stylesheet" />
    <link href="assetsUC/cssUC/owl.theme.default.min.css" rel="stylesheet" />
    <link href="assetsUC/cssUC/style.css" rel="stylesheet" />
    <link href="assetsUC/cssUC/responsive.css" rel="stylesheet" />
</head>
<body>
    <header>
        <div class="Tp_hdr_bx">
            <div class="tp_lg_bx">
                <img src="assetsUC/imagesUC/logo.png" alt="reachveda" />
            </div>
            <div class="brg_menu_bx">
                <p><a href="javascript:void(0);">Services</a></p>
                <div class="brg_icn_bx">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
            </div>
        </div>
        <nav>
            <div class="wapper_menu">
                <span class="cros_btn"></span>
                <ul>
					<li><a href="javascript:void(0);">Dental Implants</a></li>
                    <li><a href="javascript:void(0);">Child Dentistry</a></li>
					<li><a href="javascript:void(0);">Gum Treatment</a></li>
					<li><a href="javascript:void(0);">Porcelain Crown & Bridges</a></li>
					<li><a href="javascript:void(0);">Digital X-Rays</a></li>
                    <li><a href="javascript:void(0);">Braces</a></li>
                    <li><a href="javascript:void(0);">Root Canal</a></li>
                </ul>
            </div>
            <div class="demo-parent">
                <p>We are launching soon</p>
                <h2 id="demo"></h2>
            </div>
            <div class="menu_btm">
                <a href="tel:+919811303933">+91 9811 303 933</a>
                <em><a href="mailto:reach@smilessence.co.in">reach@smilessence.co.in</a> </em>
                <p>@ 2021 Smilessence</p>
                <p>Made with Passion <a href="https://www.ibrandox.com" target="_blank" title="iBrandox Online Pvt. Ltd." style="padding-left:0px;"><img src="assetsUC/imagesUC/ibrandox.png" alt="iBrandox Online Pvt. Ltd." style="padding:0px;width:72px; margin-bottom: -3px;"/></a></p>
            </div>
        </nav>
    </header>

    <!-- Uc page html -->
    <section>
        <div class="top_bnnr_cnt">
            <div class="bnnr_vdo_bx">
                <video autoplay loop muted style="width:100%">
                <source src="assetsUC/videoUC/3.mp4" type="video/mp4" >
            </video>
                <div class="Uc_hdng">
                    <h1>Launching Soon</h1>
                     <!--<div class="main_cont_no">
                        <span><a href="tel: +919811303933"><i class="fas fa-mobile-alt"></i> +91 9811 303 933</a></span>
                        <span><a href="mailto:reach@smilessence.co.in"><i class="far fa-envelope"></i> reach@smilessence.co.in </a></span>
                    </div> -->
					<div class="bnrHed">
                     <h2><span></span><span class="rgh-sty">"</span></h2>
                </div>
                </div>
            </div>
        </div>
    </section>

    <script src="assetsUC/jsUC/jquery-3.3.1.min.js"></script>
    <script src="assetsUC/jsUC/fontawesome-all.js"></script>
    <script src="assetsUC/jsUC/fontawesome-all.min.js"></script>
    <script src="assetsUC/jsUC/owl.carousel.js"></script>
		<script src="assetsUC/jsUC/typing.js"></script>
    <script>
        $(document).ready(function() {
            $('.top_bnnr_cnt').innerHeight($(window).innerHeight());
        });

        // Set the date we're counting down to
        var countDownDate = new Date("Oct 30, 2021 15:37:25").getTime();

        // Update the count down every 1 second
        var x = setInterval(function() {

            // Get todays date and time
            var now = new Date().getTime();

            // Find the distance between now an the count down date
            var distance = countDownDate - now;

            // Time calculations for days, hours, minutes and seconds
            var days = Math.floor(distance / (1000 * 60 * 60 * 24));
            var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
            var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
            var seconds = Math.floor((distance % (1000 * 60)) / 1000);

            // Output the result in an element with id="demo"
            document.getElementById("demo").innerHTML = days + "d " + hours + "h " +
                minutes + "m " + seconds + "s ";

            // If the count down is over, write some text 
            if (distance < 0) {
                clearInterval(x);
                document.getElementById("demo").innerHTML = "EXPIRED";
            }
        }, 1000);


        $('.brg_icn_bx').click(function() {
            $('nav').addClass('opn_menu')
        });
        $('.cros_btn').click(function() {
            $('nav').removeClass('opn_menu')
        });
		document.addEventListener('DOMContentLoaded', function()
         {
             Typed.new('.rgh-sty', {
             strings: ['Every Smile Tells a Story'],
            	    typeSpeed: 200,
             loop:true,
             });
         });
    </script>

</body>

</html>