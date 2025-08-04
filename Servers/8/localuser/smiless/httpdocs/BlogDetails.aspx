<%@ Page Title="" Language="C#" MasterPageFile="~/SmilesSenceMaster.Master" AutoEventWireup="true" CodeBehind="BlogDetails.aspx.cs" Inherits="SmilessenceWeb.BlogDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="header-space"></div>
<div class="blog-page">
    <div class="InnerBanner">
        <asp:Literal ID="ltrImage" runat="server"></asp:Literal> 
        <div class="banner-content">
            <div class="container">
                <div class="content">
                    <h1><span><asp:Literal ID="LtrBlogTitleMain" runat="server"></asp:Literal></span></h1>
                </div>
            </div>
        </div>
    </div>
    <div class="blog-detail">
        <div class="container">
            <asp:Literal ID="ltrSmallImage" runat="server"></asp:Literal> 
            <div class="content">
                <asp:Literal ID="ltrBlogPosteddate" runat="server"></asp:Literal>
                <div class="title"><asp:Literal ID="LtrBlogTitle" runat="server"></asp:Literal></div>
                <asp:Literal ID="ltrBlogDescription" runat="server"></asp:Literal>
                <center><a href="javascript:history.back()" class="backto">Back to blogs </a></center>
            </div>
        </div>
    </div>
    <section>
        <div class="smileOralhealthbyte">
            <div class="container">
                <div class="heading text-center">
                    <h2><span>Oral health</span> bytes</h2>
                    <p>Oral health refers to the health of the teeth, gums, and the entire oral-facial system that allows us to smile, speak and chew. Dental health is an essential part of your overall health, well-being, and quality of life.</p>
                </div>
                <div class="owl-carousel smiloralbyslide">
                    <div class="item">
                        <div class="img"><img src="/assets/images/home/orlsl1.jpg" alt="smilessence" /></div>
                        <div class="video_icon model-open" data-model=".Model_Video" data-video="https://www.youtube.com/embed/My440XFFrA8?autoplay=1">
                            <div class="icon"><img src="/assets/images/plays.png" alt="smilessence" /></div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="img"><img src="/assets/images/home/orlsl2.jpg" alt="best smilessence" /></div>
                        <div class="video_icon model-open" data-model=".Model_Video" data-video="https://www.youtube.com/embed/My440XFFrA8?autoplay=1">
                            <div class="icon"><img src="/assets/images/plays.png" alt="" /></div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="img"><img src="assets/images/home/orlsl3.jpg" alt="best smile" /></div>
                        <div class="video_icon model-open" data-model=".Model_Video" data-video="https://www.youtube.com/embed/My440XFFrA8?autoplay=1">
                            <div class="icon"><img src="assets/images/plays.png" alt="" /></div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="img"><img src="/assets/images/home/orlsl1.jpg" alt="smilessence" /></div>
                        <div class="video_icon model-open" data-model=".Model_Video" data-video="/assets/video/video3.mp4">
                            <div class="icon"><img src="/assets/images/plays.png" alt="" /></div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="img"><img src="/assets/images/home/orlsl2.jpg" alt="smilessence" /></div>
                        <div class="video_icon model-open" data-model=".Model_Video" data-video="/assets/video/video3.mp4">
                            <div class="icon"><img src="/assets/images/plays.png" alt="" /></div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="img"><img src="/assets/images/home/orlsl3.jpg" alt="smilessence" /></div>
                        <div class="video_icon model-open" data-model=".Model_Video" data-video="/assets/video/video3.mp4">
                            <div class="icon"><img src="/assets/images/plays.png" alt="smilessence" /></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
</asp:Content>
