<%@ Page Title="" Language="C#" MasterPageFile="~/SmilesSenceMaster.Master" AutoEventWireup="true" CodeBehind="GallerySmilessence.aspx.cs" Inherits="SmilessenceWeb.GallerySmilessence" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="header-space"></div>
<section>
    <div class="SmilGallerySection">
        <div class="container">
            <div class="heading text-center">
                <h2><span>Our</span> Gallery</h2>
            </div>
            <ul class="tab">
                <li class="current" data-cat="PhotosList">Photos</li>
                <li data-cat="VideoList">Videos</li>
                 <li data-cat="cliniclist">Clinic</li>
            </ul>
            <div class="gallery_grid">
                <div class="GalleryPhoto tab-content" data-target="PhotosList">
                    <div class="flex">
                        <div class="col">
                            <a href="assets/images/gallery/gl-3-b.jpg" data-fancybox="Photos">
                                <div class="img"><img src="assets/images/gallery/gl-3-s.jpg" alt="" /></div>
                                <div class="title">
                                    <div class="icon"></div>
                                    <p>Straumann Sla Implant</p>
                                </div>
                            </a>
                        </div>
                        <div class="col">
                            <a href="assets/images/gallery/gl-1-b.jpg" data-fancybox="Photos">
                                <div class="img"><img src="assets/images/gallery/gl-1-s.jpg" alt="" /></div>
                                <div class="title">
                                    <div class="icon"></div>
                                    <p>Smile Design</p>
                                </div>
                            </a>
                        </div>
                        <div class="col">
                            <a href="assets/images/gallery/gl-2-b.jpg" data-fancybox="Photos">
                                <div class="img"><img src="assets/images/gallery/gl-2-s.jpg" alt="" /></div>
                                <div class="title">
                                    <div class="icon"></div>
                                    <p>Tooth Cleaning</p>
                                </div>
                            </a>
                        </div>
                        <!-- <div class="col">
                            <a href="assets/images/gallery/img3.jpg" data-fancybox="Photos">
                                <div class="img"><img src="assets/images/gallery/img3.jpg" alt="" /></div>
                                <div class="title">
                                    <div class="icon"></div>
                                    <p>Cleaning Technique</p>
                                </div>
                            </a>
                        </div>
                        <div class="col">
                            <a href="assets/images/gallery/img4.jpg" data-fancybox="Photos">
                                <div class="img"><img src="assets/images/gallery/img4.jpg" alt="" /></div>
                                <div class="title">
                                    <div class="icon"></div>
                                    <p>Smile Design</p>
                                </div>
                            </a>
                        </div>
                        <div class="col">
                            <a href="assets/images/gallery/img5.jpg" data-fancybox="Photos">
                                <div class="img"><img src="assets/images/gallery/img5.jpg" alt="" /></div>
                                <div class="title">
                                    <div class="icon"></div>
                                    <p>Tooth Cleaning</p>
                                </div>
                            </a>
                        </div>
                        <div class="col">
                            <a href="assets/images/gallery/img6.jpg" data-fancybox="Photos">
                                <div class="img"><img src="assets/images/gallery/img6.jpg" alt="" /></div>
                                <div class="title">
                                    <div class="icon"></div>
                                    <p>Cleaning Technique</p>
                                </div>
                            </a>
                        </div>
                        <div class="col">
                            <a href="assets/images/gallery/img7.jpg" data-fancybox="Photos">
                                <div class="img"><img src="assets/images/gallery/img7.jpg" alt="" /></div>
                                <div class="title">
                                    <div class="icon"></div>
                                    <p>Smile Design</p>
                                </div>
                            </a>
                        </div>
                        <div class="col">
                            <a href="assets/images/gallery/img8.jpg" data-fancybox="Photos">
                                <div class="img"><img src="assets/images/gallery/img8.jpg" alt="" /></div>
                                <div class="title">
                                    <div class="icon"></div>
                                    <p>Tooth Cleaning</p>
                                </div>
                            </a>
                        </div>
                        <div class="col">
                            <a href="assets/images/gallery/img9.jpg" data-fancybox="Photos">
                                <div class="img"><img src="assets/images/gallery/img9.jpg" alt="" /></div>
                                <div class="title">
                                    <div class="icon"></div>
                                    <p>Cleaning Technique</p>
                                </div>
                            </a>
                        </div> -->
                    </div>
                </div>
                <div class="GalleryPhoto tab-content" data-target="VideoList" style="display: none;">
                    <div class="flex">
                        <div class="col">
                            <div class="item">
                                <div class="img"><img src="assets/images/home/orlsl1.jpg" alt="Digital X-Rays"></div>
                                <div class="video_icon model-open" data-model=".Model_Video" data-video="https://www.youtube.com/embed/My440XFFrA8?autoplay=1">
                                    <div class="icon"><img src="assets/images/plays.png" alt="Digital X-Rays"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="item">
                                <div class="img"><img src="assets/images/home/orlsl2.jpg" alt="Braces"></div>
                                <div class="video_icon model-open" data-model=".Model_Video" data-video="https://www.youtube.com/embed/-b2phUBJOZQ?autoplay=1">
                                    <div class="icon"><img src="assets/images/plays.png" alt="Braces"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="item">
                                <div class="img"><img src="assets/images/home/orlsl3.jpg" alt="best dental clinic in india"></div>
                                <div class="video_icon model-open" data-model=".Model_Video" data-video="https://www.youtube.com/embed/SFraNgfNx80?autoplay=1">
                                    <div class="icon"><img src="assets/images/plays.png" alt="dental clinic in india"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <<div class="item">
                                <div class="img"><img src="assets/images/home/Homepage-Videos/vdeo-4.jpg" alt="cosmetic dentist in india"></div>
                                <div class="video_icon model-open" data-model=".Model_Video" data-video="https://www.youtube.com/embed/GmivV4KyVC0?autoplay=1">
                                    <div class="icon"><img src="assets/images/plays.png" alt="best cosmetic dentist in india"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="item">
                                <div class="img"><img src="assets/images/home/Homepage-Videos/vdeo-5.jpg" alt="best dentist in india"></div>
                                <div class="video_icon model-open" data-model=".Model_Video" data-video="https://www.youtube.com/embed/6BsZ-bUTYN4?autoplay=1">
                                    <div class="icon"><img src="assets/images/plays.png" alt="dentist in india"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="item">
                                <div class="img"><img src="assets/images/home/Homepage-Videos/vdeo-6.jpg" alt="best root canal treatment in india"></div>
                                <div class="video_icon model-open" data-model=".Model_Video" data-video="https://www.youtube.com/embed/5uzy-PXMekY?autoplay=1">
                                    <div class="icon"><img src="assets/images/plays.png" alt="root canal treatment in india"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="item">
                                <div class="img"><img src="assets/images/home/Homepage-Videos/vdeo-7.jpg" alt="dental tourism in india"></div>
                                <div class="video_icon model-open" data-model=".Model_Video" data-video="https://www.youtube.com/embed/K2vpeVJ7A3Q?autoplay=1">
                                    <div class="icon"><img src="assets/images/plays.png" alt="best dental tourism in india"></div>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
                <div class="GalleryPhoto tab-content" data-target="cliniclist" style="display: none;">
                    <div class="flex">
                        <div class="col">
                            <div class="item">
                                <div class="img"><a href="assets/images/gallery/clinic1-b.jpg" data-fancybox="Photos""><img src="assets/images/gallery/clinic1.jpg" alt="Digital X-Rays"></a></div>
                               
                            </div>
                        </div>
                        <div class="col">
                            <div class="item">
                                <div class="img"><a href="assets/images/gallery/clinic2-b.jpg" data-fancybox="Photos""><img src="assets/images/gallery/clinic2.jpg" alt="Digital X-Rays"></a></div>
                               
                            </div>
                        </div>
                        <div class="col">
                            <div class="item">
                                <div class="img"><a href="assets/images/gallery/clinic3-b.jpg" data-fancybox="Photos""><img src="assets/images/gallery/clinic3.jpg" alt="Digital X-Rays"></a></div>
                               
                            </div>
                        </div>
                        <div class="col">
                            <div class="item">
                                <div class="img"><a href="assets/images/gallery/clinic4-b.jpg" data-fancybox="Photos""><img src="assets/images/gallery/clinic4.jpg" alt="Digital X-Rays"></a></div>
                               
                            </div>
                        </div>
                         <div class="col">
                            <div class="item">
                                <div class="img"><a href="assets/images/gallery/clinic5-b.jpg" data-fancybox="Photos""><img src="assets/images/gallery/clinic5.jpg" alt="Digital X-Rays"></a></div>
                               
                            </div>
                        </div>
                        <div class="col">
                            <div class="item">
                                <div class="img"><a href="assets/images/gallery/clinic6-b.jpg" data-fancybox="Photos""><img src="assets/images/gallery/clinic6.jpg" alt="Digital X-Rays"></a></div>
                               
                            </div>
                        </div>
                        <div class="col">
                            <div class="item">
                                <div class="img"><a href="assets/images/gallery/clinic7-b.jpg" data-fancybox="Photos""><img src="assets/images/gallery/clinic7.jpg" alt="Digital X-Rays"></a></div>
                               
                            </div>
                        </div>
                        <div class="col">
                            <div class="item">
                                <div class="img"><a href="assets/images/gallery/clinic8-b.jpg" data-fancybox="Photos""><img src="assets/images/gallery/clinic8.jpg" alt="Digital X-Rays"></a></div>
                               
                            </div>
                        </div>
                        <div class="col">
                            <div class="item">
                                <div class="img"><a href="assets/images/gallery/clinic9-b.jpg" data-fancybox="Photos""><img src="assets/images/gallery/clinic9.jpg" alt="Digital X-Rays"></a></div>
                               
                            </div>
                        </div>
                        <div class="col">
                            <div class="item">
                                <div class="img"><a href="assets/images/gallery/clinic10-b.jpg" data-fancybox="Photos""><img src="assets/images/gallery/clinic10.jpg" alt="Digital X-Rays"></a></div>
                               
                            </div>
                        </div>
                        <div class="col">
                            <div class="item">
                                <div class="img"><a href="assets/images/gallery/clinic11-b.jpg" data-fancybox="Photos""><img src="assets/images/gallery/clinic11.jpg" alt="Digital X-Rays"></a></div>
                               
                            </div>
                        </div>
                        <div class="col">
                            <div class="item">
                                <div class="img"><a href="assets/images/gallery/clinic12-b.jpg" data-fancybox="Photos""><img src="assets/images/gallery/clinic12.jpg" alt="Digital X-Rays"></a></div>
                               
                            </div>
                        </div>
                        <div class="col">
                            <div class="item">
                                <div class="img"><a href="assets/images/gallery/clinic13-b.jpg" data-fancybox="Photos""><img src="assets/images/gallery/clinic13.jpg" alt="Digital X-Rays"></a></div>
                               
                            </div>
                        </div>
                        <div class="col">
                            <div class="item">
                                <div class="img"><a href="assets/images/gallery/clinic14-b.jpg" data-fancybox="Photos""><img src="assets/images/gallery/clinic14.jpg" alt="Digital X-Rays"></a></div>
                               
                            </div>
                        </div>
                        <div class="col">
                            <div class="item">
                                <div class="img"><a href="assets/images/gallery/clinic15-b.jpg" data-fancybox="Photos""><img src="assets/images/gallery/clinic15.jpg" alt="Digital X-Rays"></a></div>
                               
                            </div>
                        </div>
                        <div class="col">
                            <div class="item">
                                <div class="img"><a href="assets/images/gallery/clinic16-b.jpg" data-fancybox="Photos""><img src="assets/images/gallery/clinic16.jpg" alt="Digital X-Rays"></a></div>
                               
                            </div>
                        </div>
                        <div class="col">
                            <div class="item">
                                <div class="img"><a href="assets/images/gallery/clinic17-b.jpg" data-fancybox="Photos""><img src="assets/images/gallery/clinic17.jpg" alt="Digital X-Rays"></a></div>
                               
                            </div>
                        </div>
                        <div class="col">
                            <div class="item">
                                <div class="img"><a href="assets/images/gallery/clinic18-b.jpg" data-fancybox="Photos""><img src="assets/images/gallery/clinic18.jpg" alt="Digital X-Rays"></a></div>
                               
                            </div>
                        </div>
                        <div class="col">
                            <div class="item">
                                <div class="img"><a href="assets/images/gallery/clinic19-b.jpg" data-fancybox="Photos""><img src="assets/images/gallery/clinic19.jpg" alt="Digital X-Rays"></a></div>
                               
                            </div>
                        </div>
                        <div class="col">
                            <div class="item">
                                <div class="img"><a href="assets/images/gallery/clinic20-b.jpg" data-fancybox="Photos""><img src="assets/images/gallery/clinic20.jpg" alt="Digital X-Rays"></a></div>
                               
                            </div>
                        </div>
                       
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<link rel="stylesheet" href="<%=Page.ResolveUrl("assets/css/jquery.fancybox.css")%>" />
<script type="text/javascript" src="<%=Page.ResolveUrl("assets/js/jquery.fancybox.js")%>"></script>
</asp:Content>
