<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="SmilessenceWeb.SmilessenceAdmin.Header" %>
<nav class="navbar-default navbar-side" role="navigation">
    <div class="logo_c_n">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse"> 
            <span class="sr-only">Toggle navigation</span> 
            <span class="icon-bar"></span> 
            <span class="icon-bar"></span> 
            <span class="icon-bar"></span> 
        </button>
        <a class="navbar-brand" href='/SmilessenceAdmin/home'><img src="/SmilessenceAdmin/images/logo.png" style="margin-top: 10px;height: 43px;margin-left: 18px;width: 230px;" /></a>      
    <div style="clear:both;"></div>
    </div> 
    <div class="sidebar-collapse">
        <ul class="nav" id="main-menu">
            <asp:Literal ID="ltrHeader" Visible="false" runat="server"></asp:Literal>
            <li><a href='/SmilessenceAdmin/home'><i class='fa fa-sitemap'></i>Home</a></li>
            <%--<li><a href='/SmilessenceAdmin/category'><i class="fa fa-sitemap"></i>Manage Service Category</a></li>--%>
            <li><a href='/SmilessenceAdmin/manage-service'><i class="fa fa-sitemap"></i>Manage Treatments</a></li>
            <%--<li><a href='/SmilessenceAdmin/specialties'><i class="fa fa-sitemap"></i>Manage Service Specialties</a></li>--%>
            <%--<li><a href='/SmilessenceAdmin/manage-doctor-data'><i class="fa fa-sitemap"></i>Manage Doctor Data</a></li>  --%>          
            <%--<li><a href='/SmilessenceAdmin/blog-category'><i class="fa fa-sitemap"></i>Manage Blog Category</a></li>       --%>
            <li><a href='/SmilessenceAdmin/blog-data'><i class="fa fa-sitemap"></i>Manage Blog Data</a></li> 
            <li><a href='/SmilessenceAdmin/contact-us'><i class='fa fa-sitemap'></i>Manage Enquiry</a></li>
            <li><a href='/SmilessenceAdmin/subscribe'><i class='fa fa-sitemap'></i>Manage Subscription</a></li>
            <li><a href='/SmilessenceAdmin/change-password'><i class="fa fa-sitemap"></i>Change Password</a></li>
            <li><a href='/SmilessenceAdmin/logout'><i class="fa fa-sitemap"></i>Logout</a></li> 
        </ul>
    </div>
</nav>