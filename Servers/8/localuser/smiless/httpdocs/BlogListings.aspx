<%@ Page Title="" Language="C#" MasterPageFile="~/SmilesSenceMaster.Master" AutoEventWireup="true" CodeBehind="BlogListings.aspx.cs" Inherits="SmilessenceWeb.BlogListings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="header-space"></div>
<div class="blog-page">
    <div class="InnerBanner">
        <div class="bg"><img src="assets/images/blog/blog.jpg" alt=""></div>
<div class="banner-content">
            <div class="container">
                <div class="content">
                    <h1><span>Latest Blog</span></h1>
                </div>
            </div>
        </div>
    </div>
    <div class="BlogListing">
        <div class="container">
            <div class="flex">
                <asp:Repeater ID="rptBlogData" runat="server">
                    <ItemTemplate>
                        <div class="col">
                            <div class="item">
                                <a href="/<%#Eval("BlogTitleURL")%>">
                                    <div class="img"><img src="/Smilessencelmages/BlogImage/<%#Eval("SmallImg")%>" alt="<%#Eval("BlogTitle")%>"></div>
                                    <div class="text">
                                        <div class="date"><%#Eval("BlogDate")%></div>
                                        <div class="title"><%#Eval("BlogTitle")%></div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
    <section>
        <div class="smileOralhealthbyte">
            <div class="container">
                <div class="heading text-center">
                    <h2>Oral health bytes</h2>
                    <p>Oral health refers to the health of the teeth, gums, and the entire oral-facial system that allows us to smile, speak and chew. Dental health is an essential part of your overall health, well-being, and quality of life.</p>
                </div>
                <div class="owl-carousel smiloralbyslide">
                    <div class="item">
                        <div class="img"><img src="assets/images/home/orlsl1.jpg" alt=""></div>
                        <div class="video_icon model-open" data-model=".Model_Video" data-video="https://www.youtube.com/embed/My440XFFrA8?autoplay=1">
                            <div class="icon"><img src="assets/images/plays.png" alt=""></div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="img"><img src="assets/images/home/orlsl2.jpg" alt=""></div>
                        <div class="video_icon model-open" data-model=".Model_Video" data-video="https://www.youtube.com/embed/-b2phUBJOZQ?autoplay=1">
                            <div class="icon"><img src="assets/images/plays.png" alt=""></div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="img"><img src="assets/images/home/orlsl3.jpg" alt=""></div>
                        <div class="video_icon model-open" data-model=".Model_Video" data-video="https://www.youtube.com/embed/SFraNgfNx80?autoplay=1">
                            <div class="icon"><img src="assets/images/plays.png" alt=""></div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="img"><img src="assets/images/home/orlsl1.jpg" alt=""></div>
                        <div class="video_icon model-open" data-model=".Model_Video" data-video="https://www.youtube.com/embed/GmivV4KyVC0?autoplay=1">
                            <div class="icon"><img src="assets/images/plays.png" alt=""></div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="img"><img src="assets/images/home/orlsl2.jpg" alt=""></div>
                        <div class="video_icon model-open" data-model=".Model_Video" data-video="https://www.youtube.com/embed/6BsZ-bUTYN4?autoplay=1">
                            <div class="icon"><img src="assets/images/plays.png" alt=""></div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="img"><img src="assets/images/home/orlsl3.jpg" alt=""></div>
                        <div class="video_icon model-open" data-model=".Model_Video" data-video="https://www.youtube.com/embed/5uzy-PXMekY?autoplay=1">
                            <div class="icon"><img src="assets/images/plays.png" alt=""></div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="img"><img src="assets/images/home/orlsl3.jpg" alt=""></div>
                        <div class="video_icon model-open" data-model=".Model_Video" data-video="https://www.youtube.com/embed/K2vpeVJ7A3Q?autoplay=1">
                            <div class="icon"><img src="assets/images/plays.png" alt=""></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
</asp:Content>
