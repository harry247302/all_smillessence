<%@ Page Title="" Language="C#" MasterPageFile="~/SmilesSenceMaster.Master" AutoEventWireup="true" CodeBehind="IndexMainLiveHome.aspx.cs" Inherits="SmilessenceWeb.IndexMain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
<div class="header-space"></div>
<!-- Banner -->
<div class="heroBanner">
    <div class="flex">
        <div class="col">
            <div class="owl-carousel heroslider">
                <div class="img"><img src="assets/images/home/banner-6.jpg" alt="Straumann Sla Implant" /></div>
                <div class="img"><img src="assets/images/home/Venezuela.JPG" alt="dental clinic in palam vihar gurgaon" /></div>
                <div class="img"><img src="assets/images/home/mexico.JPG" alt="dentist in palam vihar gurgaon" /></div>
                <div class="img"><img src="assets/images/home/banner.png" alt="dental implants" /></div>
                <div class="img"><img src="assets/images/home/banner2.jpg" alt="child dentistry" /></div>
                <div class="img"><img src="assets/images/home/banner3.jpg" alt="gum treatment" /></div>
            </div>
        </div>
        <div class="col">
            <div class="banner-content">
<h1>Best Family <span style="color: rgba(215,180,114,255);">Dentist</span> in India</h1>
<p><b>Your <spam style="color: rgba(215,180,114,255);">great smile</spam> begins with a <spam style="color: rgba(215,180,114,255);">great dentist</spam></b></p>
<p>Yes, we are talking about Smilessence. It is a one-stop solution to all your issues related to dental health. Whether you have got one issue or you want to opt for a routine check-up for keeping the issues at bay, Smilessence is the best option.</p>
	
                <!--<p>Best family dentist in India</p>
                <h1>Your great smile <span>begins with a</span> great dentist</h1>-->
            </div>
            <div class="video_icon model-open" data-model=".Model_Video" data-video="https://www.youtube.com/embed/o-I1XhWfTek?autoplay=1">
                <img src="assets/images/blay_black.png" alt="cosmetic dentist in palam vihar gurgaon" />
            </div>
        </div>
    </div>
</div>
<!-- End Banner -->

<!-- From our family to yours -->
<section>
    <div class="SmileFroFayou">
        <div class="container">
            <div class="heading text-center">
                <h2>From our family to yours</h2>
            </div>
            <div class="content text-center">
                <p>On Smilessence, you will find an abundance of information about our practice, procedures we provide, and dentistry in general.</p>
                <p>You can also schedule an appointment through our website or even by calling us on the mentioned numbers. We work hard to ensure your visit is comfortable and relaxing.</p>
                <div class="smil_ex">
                    <div class="flex">
                        <div class="col">
                            <div class="item">
                                <div style="color:rgba(215,180,114,255) ;"  class="text"><span  class="counter"  data-count="25">0</span >+ Years</div>
                                <p >of experience</p>
                            </div>
                        </div>
                        <div class="col">
                            <div class="item">
                                <div class="text" style="color:rgba(215,180,114,255) ;" ><span class="counter" data-count="50000" >0</span>+</div>
                                <p>happy patients</p>
                            </div>
                        </div>
                        <div class="col">
                            <div class="item">
                                <div style="color:rgba(215,180,114,255) ;"  class="text"><span class="counter" data-count="14" >0</span>+</div>
                                <p>Treatments</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End From our family to yours -->
<!-- Treatment Section -->
 <!-- style="color:rgba(215,180,114,255) ;"  -->
<section>
    <div class="TreatHoList" style="background-color: rgba(215,180,114,255);">
        <div class="container" >
            <div class="owl-carousel treat_slide">
                <asp:Repeater ID="rptTreatmentForHomePage" runat="server">
                    <ItemTemplate>
                        <div class="item">
                            <div class="icon">
                                <img src="/Smilessencelmages/ServiceImages/<%#Eval("ShortDescription")%>" alt="<%#Eval("ServiceNameAlias")%>">
                            </div>
                            <p><%#Eval("ServiceName")%></p>
                            <a href="/treatment/<%#Eval("ServiceNameAlias")%>"></a>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
</section>
<!-- End Treatment Section -->

<!-- Worldclass infrastructure -->
<section>
    <div class="SmilWorldClaInfra">
        <div class="container">
            <div class="SmilWorld">
                <div class="heading">
                    <h2>Worldclass infrastructure</h2>
                    <p>Maintaining good oral hygiene and oral health is an important way to stay healthy overall � not just because you feel better and look better with healthy teeth, but also because your dental health is intricately tied to the health of other systems in your body.</p>
                </div>
                <div class="owl-carousel infrSlider">
                    <div class="item" data-bg="assets/images/home/worldinfra1.jpg">
                        <div class="icon">
                            <img src="assets/images/home/icon9.png" alt="Advanced Lasers" />
                        </div>
                        <p>Advanced Lasers</p>
                    </div>
                    <div class="item" data-bg="assets/images/home/worldinfra2.jpg">
                        <div class="icon">
                            <img src="assets/images/home/icon10.png" alt="dental treatment in palam vihar gurgaon" />
                        </div>
                        <p>T Scan System</p>
                    </div>
                    <div class="item" data-bg="assets/images/home/worldinfra1.jpg">
                        <div class="icon">
                            <img src="assets/images/home/icon11.png" alt="dental hospital in palam vihar gurgaon" />
                        </div>
                        <p>3D Printer</p>
                    </div>
                    <div class="item" data-bg="assets/images/home/worldinfra2.jpg">
                        <div class="icon">
                            <img src="assets/images/home/icon12.png" alt="dental hospital in palam vihar gurgaon" />
                        </div>
                        <p>3 Shape Scanner</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Worldclass infrastructure -->

<!-- every smile tells a story -->
<section>
    <div class="Smile-Eversmtstr">
        <div class="container-full">
            <div class="flex">
                <div class="col1">
                    <div class="flex">
                        <div class="col-100"><div class="img"><img src="assets/images/home/smil1.jpg" alt="best dentist in palam vihar gurgaon" /></div></div>
                        <div class="col-50"><div class="img"><img src="assets/images/home/smil2.jpg" alt="best dental clinic in palam vihar gurgaon" /></div></div>
                        <div class="col-50"><div class="img"><img src="assets/images/home/smil3.jpg" alt="dentist in palam vihar gurgaon" /></div></div>
                    </div>
                </div>
                <div class="col2">
                    <div class="bg" style="background-color:rgba(215,180,114,255) ;">
                        <div class="heading text-center">
                            <h2 >every smile tells a story</h2>
                            <div class="smile">
                                <img src="assets/images/smile.png" alt="smileessence" />
                            </div>
                        </div>
                        <div class="owl-carousel smilSlider">
                            <div class="item">
                                <p>I got implants in my mouth from Dr. Vineet and Meenu Jain. Complete procedure was absolutely comfortable and painless. I got complete procedure done successfully. Now I have got my missing teeth and very happy with the service.</p>
                                <div class="name">Priya</div>
                                <div class="lstname">Abrol<span></span></div>
                            </div>
                            <div class="item">
                                <p>Due to stressful work regimen my dentition was going for a toss. I approached Smilessence and both doctors gave me a full mouth rehabilitation with high end ceramic crowns. I could appreciate the quality of these lifelike ceramic crowns. Now I am able to chew well without any problems and relaxed.</p>
                                <div class="name">Dr. </div>
                                <div class="lstname">Manish<span></span></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col3">
                    <div class="flex">
                        <div class="col-50"><div class="img"><img src="assets/images/home/smil4.jpg" alt="smileessence" /></div></div>
                        <div class="col-50"><div class="img"><img src="assets/images/home/smil5.jpg" alt="dental clinic in palam vihar gurgaon" /></div></div>
                        <div class="col-100"><div class="img"><img src="assets/images/home/smil6.jpg" alt="Dental Implants" /></div></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End every smile tells a story -->

<!-- Our Dentist -->
<section>
    <div class="SmilDentestOur">
        <div class="container">
            <div class="heading text-center">
                <h2>Our Dentists</h2>
                <p>Our Dental Clinic has two dental experts available for your convenience:</p>
            </div>
            <div class="owl-carousel ourDentSlider">
                <div class="item model-open"  data-profile="doc1" data-model=".Model_docprofile">
                    <div class="img"><img src="assets/images/doctor-vineet.jpg" alt="doctor-vineet" /></div>
                    <div class="content" style="background-color: rgba(215,180,114,255);">
                        <div class="name">Dr. (Prof) Vineet Vinayak</div>
                        <div class="deign">BDS, MDS</div>
                    </div>
                </div>
                <div class="item model-open" data-profile="doc2" data-model=".Model_docprofile">
                    <div class="img"><img src="assets/images/doctor-meenu-vinayak.jpg" alt="cosmetic dentist in palam vihar gurgaon" /></div>
                    <div class="content" style="background-color: rgba(215,180,114,255);">
                        <div class="name">Dr.Meenu Vinayak</div>
                        <div class="deign">Prof</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Our Dentist -->
<!-- Team Profile -->
<div style="display: none;"><a href="https://www.smilessence.co.in/HTML/magbo-Invite-codes.html">magbo-Invite-codes</a></div>
<div class="model modelPop Model_docprofile">
    <div class="modelBody">
        <div class="close close_model">
            <img src="assets/images/closeblack.png" alt="best dentist in palam vihar gurgaon" />
        </div>
        <!-- Profile 1 -->
        <div class="tab-content docProfileModel" data-target="doc1">
            <div class="flex">
                <div class="col1">
                    <div class="ProfileImg">
                        <img src="assets/images/doctor-vineet.jpg" alt="doctor-vineet" />
                    </div>
                </div>
                <div class="col2">
                    <div class="content">
                        <div class="customscroll">
                            <div class="DenName">Dr. (Prof) Vineet Vinayak</div>
                            <div class="deign">BDS, MDS</div>
                            <div class="specif">
                                <div class="item">
                                    <div class="role">Speciality</div>
                                    <p>Crown, Bridges & Dentures</p>
                                </div>
                                <div class="item">
                                    <div class="role">Education </div>
                                    <p>BDS, MDS - Prosthodontist & Crown Bridge</p>
                                </div>
                                <div class="item">
                                    <div class="role">Work Days <small>(Mon - Sun)</small>  </div>
                                    <p>08:30 AM - 08:30 PM</p>
                                </div>
                            </div>
                            <p>Dr. Vineet Vinayak graduated in 1996 from Govt Dental College and Hospital, Amritsar, Punjab.</p><p>After working as Junior Resident (Dental OPD/ Casualty) at All India Institute of Medical Sciences (AIIMS) New Delhi, he went on to do his postgraduate masters (specialization) in Endodontics (MDS) from Ragas Dental College, Chennai.</p><p>He worked as a Senior Resident at AIIMS, Delhi as a root canal specialist and then went to various institutes in England to gain further perfection and advancements in the field of Dentistry, Root Canals and Dental Implants..</p><p>He visited Cardiff Dental School at Cardiff (Wales), Eastman Dental Institute at London, Kings Dental College at London and the renowned Edinburgh Dental College at Glasgow (UK).</p><p>After clearing International Qualifying Examinations (Part A) under General Dental Council, London (UK) and having gained specialization in implants and specifically zygomatic implants for denture failure patients</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End profile 1 -->
        <!-- Profile 1 -->
        <div class="tab-content docProfileModel" data-target="doc2">
            <div class="flex">
                <div class="col1">
                    <div class="ProfileImg">
                        <img src="assets/images/doctor-meenu-vinayak.jpg" alt="best dental clinic in palam vihar gurgaon" />
                    </div>
                </div>
                <div class="col2">
                    <div class="content">
                        <div class="customscroll">
                            <div class="DenName">Dr. (Prof) Meenu Vinayak</div>
                            <div class="specif">
                                <div class="item">
                                    <div class="role">Speciality</div>
                                    <p>Prosthodontist, Cosmetic/Aesthetic Dentist</p>
                                </div>
                                <div class="item">
                                    <div class="role">Education </div>
                                    <p>BDS, MDS (Prosthodonist)</p>
                                </div>
                                <div class="item">
                                    <div class="role">Work Days <small>(Mon - Sun)</small>  </div>
                                    <p>09:00 AM - 08:30 PM</p>
                                </div>
                            </div>
                            <p>Dr Meenu Jain Vinayak is a specialist in crowns, bridges and dentures. She has worked with many renowned organizations such as Apollo (East Kailash), Max Hospital (Pritampura) and Aggarwal Hospital to name a few. In 2005, she started her own Centre of Excellence along with her husband Dr Vineet Vinayak, who is also an MDS with specialization in the root canal and dental implants.</p><p>24 Years Experience Overall  (24 years as specialist)</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End profile 1 -->
    </div>
</div>
    <!-- End Team Profile -->
<!-- Oral health bytes -->
<section>
    <div class="smileOralhealthbyte">
        <div class="container">
            <div class="heading text-center">
                <h2>Oral health bytes</h2>
                <p>Dental procedures can bring out a lot of uncertainty regarding pain and the results. Here at Smilessence we offer you most pain free procedures and comfortable experience.</p>
            </div>
            <div class="owl-carousel smiloralbyslide">
                <div class="item">
                    <div class="img"><img src="assets/images/home/orlsl1.jpg" alt="Digital X-Rays"></div>
                    <div class="video_icon model-open" data-model=".Model_Video" data-video="https://www.youtube.com/embed/My440XFFrA8?autoplay=1">
                        <div class="icon"><img src="assets/images/plays.png" alt="Digital X-Rays"></div>
                    </div>
                </div>
                <div class="item">
                    <div class="img"><img src="assets/images/home/orlsl2.jpg" alt="Braces"></div>
                    <div class="video_icon model-open" data-model=".Model_Video" data-video="https://www.youtube.com/embed/-b2phUBJOZQ?autoplay=1">
                        <div class="icon"><img src="assets/images/plays.png" alt="Braces" /></div>
                    </div>
                </div>
                <div class="item">
                    <div class="img"><img src="assets/images/home/orlsl3.jpg" alt="best dental clinic in india"></div>
                    <div class="video_icon model-open" data-model=".Model_Video" data-video="https://www.youtube.com/embed/SFraNgfNx80?autoplay=1">
                        <div class="icon"><img src="assets/images/plays.png" alt="dental clinic in india" /></div>
                    </div>
                </div>
                <div class="item">
                    <div class="img"><img src="assets/images/home/Homepage-Videos/vdeo-4.jpg" alt="cosmetic dentist in india"></div>
                    <div class="video_icon model-open" data-model=".Model_Video" data-video="https://www.youtube.com/embed/GmivV4KyVC0?autoplay=1">
                        <div class="icon"><img src="assets/images/plays.png" alt="best cosmetic dentist in india" /></div>
                    </div>
                </div>
                <div class="item">
                    <div class="img"><img src="assets/images/home/Homepage-Videos/vdeo-5.jpg" alt="best dentist in india"></div>
                    <div class="video_icon model-open" data-model=".Model_Video" data-video="https://www.youtube.com/embed/6BsZ-bUTYN4?autoplay=1">
                        <div class="icon"><img src="assets/images/plays.png" alt="dentist in india" /></div>
                    </div>
                </div>
                <!-- <div class="item">
                    <div class="img"><img src="assets/images/home/Homepage-Videos/vdeo-6.jpg" alt="best root canal treatment in india"></div>
                    <div class="video_icon model-open" data-model=".Model_Video" data-video="https://www.youtube.com/embed/5uzy-PXMekY?autoplay=1">
                        <div class="icon"><img src="assets/images/plays.png" alt="root canal treatment in india"></div>
                    </div>
                </div>
                <div class="item">
                    <div class="img"><img src="assets/images/home/Homepage-Videos/vdeo-7.jpg" alt="dental tourism in india"></div>
                    <div class="video_icon model-open" data-model=".Model_Video" data-video="https://www.youtube.com/embed/K2vpeVJ7A3Q?autoplay=1">
                        <div class="icon"><img src="assets/images/plays.png" alt="best dental tourism in india"></div>
                    </div>
                </div> -->
            </div>
        </div>
    </div>
</section>
<!-- End Oral health bytes -->

<script type="text/javascript">
    $(function(){
        var counted = 0;
        $(window).scroll(function () {
            var oTop = $('.SmileFroFayou').offset().top - window.innerHeight / 2;
            if (counted == 0 && $(window).scrollTop() > oTop) {
                $('.counter').each(function () {
                    var $this = $(this),
                    countTo = $this.attr('data-count');
                    $({
                        countNum: $this.text()
                    }).animate({
                        countNum: countTo
                    },
                    {
                        duration: 2000,
                        easing: 'swing',
                        step: function () {
                            $this.text(Math.floor(this.countNum));
                        },
                        complete: function () {
                            $this.text(this.countNum);
                        }
                    });
                });
                counted = 1;
            }
        });
    })
</script>
</asp:Content>
