<%@ Page Title="" Language="C#" MasterPageFile="~/SmilesSenceMaster.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="SmilessenceWeb.ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="header-space"></div>
<div class="contact-page">
    <div class="InnerBanner">
        <div class="bg"><img src="assets/images/contact/banner.jpg" alt="Smilessence" /></div>
    </div>
    <div class="ContactForm">
        <div class="container">
            <div class="flex">
                <div class="col">
                    <div class="content">
                        <h1 style="color: #d5b06c;">Have a Question?<span>Contact Smilessence</span></h1>
                        <div style="color: #d5b06c;" class="text">Ready to book your visit?</div>
                        <img src="assets/images/contact/img1.jpg" alt="Smilessence" />
                    </div>
                </div>
                <div class="col">
                    <asp:Panel ID="pnalContactInquiry" runat="server" DefaultButton="btnSubmit">
                        <asp:UpdatePanel ID="UpdatePanelContact" runat="server">
                            <ContentTemplate>
                                <div class="form">
                                    <div class="flex">
                                        <div class="col2">
                                            <label for="">Name<span>*</sapn></label>
                                            <asp:TextBox ID="txtName" placeholder="First Name" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="col2">
                                            <label for="">&nbsp;</label>
                                            <asp:TextBox ID="txtLastName" placeholder="Last Name" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="col1">
                                            <label for="">Email<span>*</span></label>
                                            <asp:TextBox ID="txtEmail" placeholder="Enter your email address" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="col1">
                                            <label for="">Phone<span>*</span></label>
                                            <asp:TextBox ID="txtContact" placeholder="Enter your phone number" runat="server" maxlength="15" onkeypress="return numeralsOnly(event)"></asp:TextBox>
                                        </div>
                                        <div class="col1">
                                            <label for="">Message<span>*</span></label>
                                            <asp:TextBox ID="txtMessage" placeholder="Enter your message" runat="server" TextMode="MultiLine"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="msg"><p><asp:Literal ID="ltrquickmsg" runat="server"></asp:Literal></p></div>
                                    <asp:LinkButton ID="btnSubmit" class="btnform" runat="server" OnClick="btnInqurySubmit_Click">Submit</asp:LinkButton>
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        <asp:UpdateProgress ID="UpdateProgress3" AssociatedUpdatePanelID="UpdatePanelContact" runat="server" CssClass="progressiBrandox">
                            <ProgressTemplate>
                                <span class="ibrandoxWeb31 ibrandoxWeb32">Please Wait...&nbsp;&nbsp;&nbsp;&nbsp;</span>
                            </ProgressTemplate>
                        </asp:UpdateProgress>

                           <!-- Thank You Popup -->
                        <div id="thankYouPopup" style="display:none; position:fixed; top:30%; left:35%; background:#fff; padding:20px; border:2px solid #444; box-shadow:0 0 15px rgba(0,0,0,0.3); z-index:9999;">
                            <p>Thank you! Your inquiry has been submitted.</p>
                            <button onclick="document.getElementById('thankYouPopup').style.display='none'" style="margin-top:10px; padding:6px 12px; background:#007bff; color:white; border:none;">Close</button>
                        </div>
                    </asp:Panel>
                </div>
            </div>
        </div>
    </div>
    <div class="quick-information">
        <div class="container">
            <div class="heading text-center">
                <h2>Quick Information</h2>
            </div>
            <div class="flex">                
                <div class="col">
                    <div class="item">
                        <div class="icon"><img src="assets/images/contact/icon1.png" alt="what is dental implants?" /></div>
                        <div class="text">What is dental implants?</div>
                        <a href="/treatment/all-on-six-dental-implants"></a>
                    </div>
                </div>
                <div class="col">
                    <div class="item">
                        <div class="icon"><img src="assets/images/contact/icon2.png" alt="what is child dentistry?" /></div>
                        <div class="text">What is child dentistry?</div>
                        <a href="/treatment/child-dentistry"></a>
                    </div>
                </div>
                <div class="col">
                    <div class="item">
                        <div class="icon"><img src="assets/images/contact/icon3.png" alt="what is gum treatment?" /></div>
                        <div class="text">What is gum treatment?</div>
                        <a href="/treatment/gum-diseases"></a>
                    </div>
                </div>
                <div class="col">
                    <div class="item">
                        <div class="icon"><img src="assets/images/contact/icon4.png" alt="what is porcelian crown?" /></div>
                        <div class="text">What is porcelain crown?</div>
                        <a href="/treatment/porcelain-crown-bridges"></a>
                    </div>
                </div>
                <div class="col">
                    <div class="item">
                        <div class="icon"><img src="assets/images/contact/icon5.png" alt="smileessence" /></div>
                        <div class="text">Why digital x-ray required?</div>
                        <a href="/treatment/digital-dental-x-rays"></a>
                    </div>
                </div>
                <div class="col">
                    <div class="item">
                        <div class="icon"><img src="assets/images/contact/icon6.png" alt="smileessence" /></div>
                        <div class="text">What is dental health?</div>
                        <a href="/treatment/root-canal"></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="smilDenClicenter">
        <div class="container">
            <div class="heading text-center">
                <h2>Smilessence Dental Clinic Centres</h2>
            </div>
            <div class="map">


<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d219.1338724339718!2d77.03801187908579!3d28.505376381285753!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390d198a5d6e80bf%3A0x4b9ab074296c17ed!2sDENTIST%20IN%20GURGAON%20-%20Prof%20Dr%20Vineet%20Vinayak%20SMILESSENCE-THE%20SPECIALIST%20DENTAL%20CENTRE%2C%20PALAM%20VIHAR%2C%20GURGAON%20ON%20C.G.H.S%20PANEL%20-%20DENTIST%20GURGAON!5e0!3m2!1sen!2sin!4v1654234777642!5m2!1sen!2sin" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
            <div class="contactLocation">
                <div class="flex">
                    <div class="col">
                        <div class="item">
                            <h3>Gurugram</h3>
                            <div class="flex">
                                <div class="icon"><img src="assets/images/contact/phone.png" alt="" /></div>
                                <div class="content">
                                    <ul>
                                        <li>
                                            <label for="clino">Clinic Phone No:</label>
                                            <a href="tel:+911244088333" id="clino">+91 124 4088333</a>
                                        </li>
                                        <li>
                                            <label for="clino">Receptionist No:</label>
                                            <a href="tel:+919811334633 " id="clino">+91 9811334633 </a>
                                        </li>
                                        <li>
                                            <label for="clino">Emergency Mobile No:</label>
                                            <a href="tel:+919811303933" id="clino">+91 9811303933 </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="flex">
                                <div class="icon"><img src="assets/images/contact/pointer.png" alt="smileessence" /></div>
                                <div class="content">
                                    <ul>
                                        <li>SFF/ 102,  KFF 102 KFF 103, Ansal Palam Triangle, (Next to McDonald's) Palam Vihar, Gurgaon – 122017</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="flex">
                                <div class="icon"><img src="assets/images/contact/clock.png" alt="smileessence" /></div>
                                <div class="content">
                                    <ul>
                                        <li>Open All Day <br />09:00AM – 08:30PM</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--<div class="col">
                        <div class="item">
                            <h3>Delhi Centre</h3>
                            <div class="flex">
                                <div class="icon"><img src="assets/images/contact/phone.png" alt="" /></div>
                                <div class="content">
                                    <ul>
                                        <li>
                                            <label for="clino">Clinic Phone No:</label>
                                            <a href="tel:+911123848008" id="clino">+91 11 23848008</a>
                                        </li>
                                        <li>
                                            <label for="clino">Clinic Mobile No:</label>
                                            <a href="tel:+919811303933" id="clino">+91 9811 303 933</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="flex">
                                <div class="icon"><img src="assets/images/contact/pointer.png" alt="" /></div>
                                <div class="content">
                                    <ul>
                                        <li>Specialist Dental Centre, 25/139 Vyas Marg, Shakti Nagar, Delhi – 110007</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="flex">
                                <div class="icon"><img src="assets/images/contact/clock.png" alt="" /></div>
                                <div class="content">
                                    <ul>
                                        <li>Mon–Wed : 8:00AM–5:00PM  |  Thu–Fri : 7:00AM–3:30PM, Weekends Closed</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>--%>
                </div>
            </div>
        </div>
    </div>
</div>
</asp:Content>
