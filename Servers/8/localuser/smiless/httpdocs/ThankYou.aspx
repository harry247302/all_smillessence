<%@ Page Title="" Language="C#" MasterPageFile="~/SmilesSenceMaster.Master" AutoEventWireup="true" CodeBehind="ThankYou.aspx.cs" Inherits="SmilessenceWeb.ThankYou" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="header-space"></div>
<div class="InnerBanner thankyoubanner">
    <div class="bg"><img src="assets/images/about/banner.jpg" alt=""></div>
    <div class="banner-content">
        <div class="container">
            <div class="content">
                <h2><span>Thank</span> You</h2>
                <p><asp:Literal ID="ltrMsg" runat="server"></asp:Literal></p>
            </div>
        </div>
    </div>
</div>

<div class="smilDenClicenter">
    <div class="container">
        <div class="contactLocation">
            <div class="flex">
                <div class="col">
                    <div class="item">
                        <h3>Gurugram</h3>
                        <div class="flex">
                            <div class="icon"><img src="assets/images/contact/phone.png" alt=""></div>
                            <div class="content">
                                <ul>
                                    <li>
                                        <label for="clino">Clinic Phone No:</label>
                                        <a href="tel:+911244088333" id="clino">+91 124 4088333</a>
                                    </li>
                                    <li>
                                        <label for="clino">Receptionist No:</label>
                                        <a href="tel:+919811334633" id="clino">+91 9811334633</a>
                                    </li>
                                    <li>
                                        <label for="clino">Emergency Mobile No:</label>
                                        <a href="tel:+919811303933" id="clino">+91 9811303933</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="flex">
                            <div class="icon"><img src="assets/images/contact/pointer.png" alt=""></div>
                            <div class="content">
                                <ul>
                                    <li>SFF/ 102, KFF 102 KFF 103, Ansal Palam Triangle, (Next to McDonald's) Palam Vihar, Gurgaon – 122017</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="flex">
                            <div class="icon"><img src="assets/images/contact/clock.png" alt=""></div>
                            <div class="content">
                                <ul>
                                    <li>Open All Day <br /> 09:00AM – 08:30PM</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <%--<div class="col">
                    <div class="item">
                        <h3>Delhi Centre</h3>
                        <div class="flex">
                            <div class="icon"><img src="assets/images/contact/phone.png" alt=""></div>
                            <div class="content">
                                <ul>
                                    <li>
                                        <label for="clino">Clinic Phone No:</label>
                                        <a href="tel:+911123848008" id="clino">+91 11 23848008</a>
                                    </li>
                                    <li>
                                        <label for="clino">Clinic Mobile No:</label>
                                        <a href="tel:+919811303933" id="clino">+91 9811303933</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="flex">
                            <div class="icon"><img src="assets/images/contact/pointer.png" alt=""></div>
                            <div class="content">
                                <ul>
                                    <li>Specialist Dental Centre, 25/139 Vyas Marg, Shakti Nagar, Delhi – 110007</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="flex">
                            <div class="icon"><img src="assets/images/contact/clock.png" alt=""></div>
                            <div class="content">
                                <ul>
                                    <li>Mon–Wed, 8:00AM–5:00PM  |  Thu–Fri, 7:00AM–3:30PM Weekends, Closed</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>--%>
            </div>
        </div>
    </div>
</div>
</asp:Content>
