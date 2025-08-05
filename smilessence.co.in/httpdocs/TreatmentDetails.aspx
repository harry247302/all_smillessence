﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SmilesSenceMaster.Master" AutoEventWireup="true" CodeBehind="TreatmentDetails.aspx.cs" Inherits="SmilessenceWeb.TreatmentDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="header-space"></div>
<div class="InnerBanner detailbanner">
    <asp:Literal ID="ltrTreatmentBanner" runat="server"></asp:Literal>
    <div class="banner-content">
        <div class="container">
            <div class="content">
                <asp:Literal ID="ltrTreatementName" runat="server"></asp:Literal>
            </div>
        </div>
    </div>
</div>
<section>
    <div class="SmileServiceDetails">
        <div class="container">
            <div class="flex">
                <div class="col1">
                    <div class="stiky">
                        <div style="background-color:#d1aa62;" class="quickLinks blogs_Category_Active">
                            <ul>
                                <asp:Repeater ID="rptAllTreatmentForDetailsPage" runat="server">
                                    <ItemTemplate>
                                        <li class='<%# (Page.RouteData.Values["ServiceNameAlias"].ToString() == Eval("ServiceNameAlias").ToString()) ? "current" : ""  %>' ><a href="/treatment/<%#Eval("ServiceNameAlias")%>"><%#Eval("ServiceName")%></a></li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                        <div class="AsidVideoSLide">
                            <div class="owl-carousel VidSlid">
                                <div class="item">
                                    <div class="img"><img src="/assets/images/smilessence-video-testimonial-1.jpg" alt="smilessence" /></div>
                                    <div class="video_icon model-open" data-model=".Model_Video" data-video="https://www.youtube.com/embed/My440XFFrA8">
                                        <div class="icon"><img src="/assets/images/plays.png" alt="smilessence" /></div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="img"><img src="/assets/images/smilessence-video-testimonial-2.jpg" alt="smilessence" /></div>
                                    <div class="video_icon model-open" data-model=".Model_Video" data-video="https://www.youtube.com/embed/-b2phUBJOZQ">
                                        <div class="icon"><img src="/assets/images/plays.png" alt="smilessence" /></div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="img"><img src="/assets/images/smilessence-video-testimonial-3.jpg" alt="smilessence" /></div>
                                    <div class="video_icon model-open" data-model=".Model_Video" data-video="https://www.youtube.com/embed/SFraNgfNx80">
                                        <div class="icon"><img src="/assets/images/plays.png" alt="smilessence" /></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="AsidConnect">
                            <a href="javascript:void(0)" class="model-open" data-model=".Model_appointment"><img src="/assets/images/service-detail/conncet.jpg" alt="smilessence"></a>
                        </div>
                        <div class="DocAsidProfi">
                            <div class="owl-carousel DocAsidSlider">
                                <div class="item">
                                    <div class="img"><img src="/assets/images/doctor-vineet.jpg" alt="smilessence" /></div>
                                    <div class="content">
                                        <div class="name">Dr. (Prof) Vineet Vinayak</div>
                                        <div class="deign">BDS, MDS - Conservative Dentistry & Endodontics</div>
                                        <ul class="dot-list">
                                            <li>Speciality – Endodontist, RCT & Implant Specialist</li>
                                            <li>Mon - Sun : 08:30 AM - 08:30 PM</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="img"><img src="/assets/images/doctor-meenu-vinayak.jpg" alt="smilessence" /></div>
                                    <div class="content">
                                        <div class="name">Dr. (Prof) Meenu Vinayak</div>
                                        <div class="deign">BDS, MDS - Prosthodontist & Crown Bridge</div>
                                        <ul class="dot-list">
                                            <li>Speciality - Crown Bridge & Dentures </li>
                                            <li>Mon - Sun : 09:00 AM - 08:30 PM</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div   class="col2">
                    <div  class="serviceDetails">
                        <asp:Literal  ID="ltrTreatmentDescription" runat="server"></asp:Literal>
                        
                            <div class="tab-Item current">
                                <div class="heading" >What is dental implants?
                                <div class="trigger">
                        <div style="color: #d1aa62;" class="SerTabList" style='display:none;'>
                                    <span ></span>
                        <div style="color: #d1aa62;" class="SerTabList" style='display:none;'>
                                    <span ></span>
                                </div></div>
                                <div class="tabcontent">
                                    <p>Dental implants provide a strong foundation for permanent or removable prosthesis (replacement teeth) that are made to match your natural teeth. They are manufactured from biologically neutral pure Titanium or titanium alloys,that is accepted by the human body and these implants fuse with the jawbone to form a secure foundation for tooth replacement.</p>
                                </div>
                            </div>
                            <div class="tab-Item">
                                <div class="heading">Will general anaesthesia be administered to me during the procedure?
                                <div class="trigger">
                                    <span></span>
                                    <span></span>
                                </div></div>
                                <div class="tabcontent">
                                    <p>Dental implants provide a strong foundation for permanent or removable prosthesis (replacement teeth) that are made to match your natural teeth. They are manufactured from biologically neutral pure Titanium or titanium alloys,that is accepted by the human body and these implants fuse with the jawbone to form a secure foundation for tooth replacement.</p>
                                </div>
                            </div>
                            <div class="tab-Item">
                                <div class="heading">What is the failure rate of immediate dental implants?
                                <div class="trigger">
                                    <span></span>
                                    <span></span>
                                </div></div>
                                <div class="tabcontent">
                                    <p>Dental implants provide a strong foundation for permanent or removable prosthesis (replacement teeth) that are made to match your natural teeth. They are manufactured from biologically neutral pure Titanium or titanium alloys,that is accepted by the human body and these implants fuse with the jawbone to form a secure foundation for tooth replacement.</p>
                                </div>
                            </div>
                            <div class="tab-Item">
                                <div class="heading">How long do Basal implants last?
                                <div class="trigger">
                                    <span></span>
                                    <span></span>
                                </div></div>
                                <div class="tabcontent">
                                    <p>Dental implants provide a strong foundation for permanent or removable prosthesis (replacement teeth) that are made to match your natural teeth. They are manufactured from biologically neutral pure Titanium or titanium alloys,that is accepted by the human body and these implants fuse with the jawbone to form a secure foundation for tooth replacement.</p>
                                </div>
                            </div>
                            <div class="tab-Item">
                                <div class="heading">How do I care for my new set of permanent teeth ?
                                <div class="trigger">
                                    <span></span>
                                    <span></span>
                                </div></div>
                                <div class="tabcontent">
                                    <p>Dental implants provide a strong foundation for permanent or removable prosthesis (replacement teeth) that are made to match your natural teeth. They are manufactured from biologically neutral pure Titanium or titanium alloys,that is accepted by the human body and these implants fuse with the jawbone to form a secure foundation for tooth replacement.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section>
    <div class="ServiceMoreserc">
        <div class="container">
            <div class="heading text-center">
                <h2><span style="color:#d6b16e;">More</span> Services</h2>
            </div>
            <div class="owl-carousel moreserviceSlider">
                <asp:Repeater ID="rptRelatedTreatmentData" runat="server">
                    <ItemTemplate>
                        <div class="item">
                            <div class="img">
                                <img src="/Smilessencelmages/ServiceImages/<%#Eval("ServiceDefaultImage")%>" alt="">
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
<section>
    <div class="SmiloralTips">
        <div class="container">
            <div class="heading">
                <h2><span style="color:#d6b16e;">Oral</span> Tips</h2>
            </div>
            <div class="owl-carousel OralSlider">
                <div class="item">
                    <p>Dentists say that the most important part of tooth care happens at home. Brushing and flossing properly, along with regular dental checkups, can help prevent tooth decay and gum disease.</p>
                </div>
                <div class="item">
                    <p>Ultrasonic irrigation has been proved for itsremarkable cleaning efficiency in the field of endodontics. Butits role in endodontic re-treatment has been understated.</p>
                </div>
                <div class="item">
                    <p>Osteo-Odonto-Keratoprosthesis (OOKP) is a preferred technique of vision restoration surgery in eyes with end stage ocular surface disorders such as Steven-Johnson syndrome, ocular circatricial pemphigoid and dry keratinized eyes following severe chemical burns.</p>
                </div>
                <div class="item">
                    <p>Preserving the pulp vitality is the main aim of present day dentistry. However due to a myriad of conditions, the use of posts may have to be considered as the last therapeutic option.</p>
                </div>
            </div>
            <a href="javascript: void(0);" class="model-open" data-model=".Model_appointment">Schedule now</a>
        </div>
    </div>
</section>
</asp:Content>