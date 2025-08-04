<%@ Page Title="" Language="C#" MasterPageFile="~/SmilesSenceMaster.Master" AutoEventWireup="true" CodeBehind="TreatmentListing.aspx.cs" Inherits="SmilessenceWeb.TreatmentListing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="header-space"></div>
<div class="InnerBanner">
    <div class="bg"><img src="assets/images/services/banner.jpg" alt="" /></div>
</div>
<section>
    <div class="ServiceGrid">

        <div class="container">
<div class="headingmain">
<h1>Get the <span>Best Treatment</span> for <span>Oral Health</span> Issues at <span>Smilessence</span></h1>
<p>Dental health is something really important in order to maintain the quality of your life. Almost everyone has faced several issues in their daily lives. Different issues are related to different organs of the human body. Some may disturb us less while the other issues might be a nightmare. The biggest problem with our dental/oral health is the fact that we are not usually serious about it. The majority of people ignore symptoms associated with oral health. This is simply because people don’t face issues in the beginning but the problem might be severe later on. Your attention to the minute oral health issues is really important.Several people are willing to get themselves checked up but they are not able to do so because they are usually confused. But things will get really better once you have found the right option. Smilessence is the perfect blend of modern technology and highly-skilled individuals.</p>
</div>
            <div class="flex">
                <asp:Repeater ID="rptTreatmentForListPage" runat="server">
                    <ItemTemplate>
                        <div class="col">
                            <div class="item">
                                <div class="img">
                                    <img src="/Smilessencelmages/ServiceImages/<%#Eval("ServiceDefaultImage")%>" alt="">
                                </div>
                                <p><%#Eval("ServiceName")%></p>
                                <a href="/treatment/<%#Eval("ServiceNameAlias")%>"></a>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>                
            </div>
        </div>
    </div>
</section>
<section>
    <div class="SmileCusoCareepati">
        <div class="container">
            <div class="heading text-center">
                <h2>Custom care <span>for every patient</span></h2>
                <p>See how a new <span>smile can change your life</span></p>
            </div>
            <figure class="cd-image-container">
                <img src="assets/images/services/teath2.jpg" alt="Original Image" />
                <span class="cd-image-label" data-type="original"></span>            
                <div class="cd-resize-img"> <!-- the resizable image on top -->
                    <img src="assets/images/services/teath1.jpg" alt="Modified Image">
                    <span class="cd-image-label" data-type="modified"></span>
                </div>            
                <span class="cd-handle"></span>
            </figure>
            <center><a href="javascript: void(0);" class="model-open" data-model=".Model_appointment">Get a smile</a></center>
        </div>
    </div>
</section>
<section>
    <div class="SmiloralTips">
        <div class="container">
            <div class="heading">
                <h2><span>Oral</span> Tips</h2>
            </div>
            <div class="owl-carousel OralSlider">
                <div class="item">
                    <p>Dentists say that the most important part of tooth care happens at home. Brushing and flossing properly, along with regular dental checkups, can help prevent tooth decay and gum disease.</p>
                </div>
                <div class="item">
                    <p>Dentists say that the most important part of tooth care happens at home. Brushing and flossing properly, along with regular dental checkups, can help prevent tooth decay and gum disease.</p>
                </div>
                <div class="item">
                    <p>Dentists say that the most important part of tooth care happens at home. Brushing and flossing properly, along with regular dental checkups, can help prevent tooth decay and gum disease.</p>
                </div>
            </div>
            <a href="javascript: void(0);" class="model-open" data-model=".Model_appointment">Schedule now</a>
        </div>
    </div>
</section>
<script type="text/javascript" src="<%=Page.ResolveUrl("assets/js/jquery.mobile.custom.min.js")%>"></script>
<script type="text/javascript" src="<%=Page.ResolveUrl("assets/js/beforeafterjs.js")%>"></script>
</asp:Content>
