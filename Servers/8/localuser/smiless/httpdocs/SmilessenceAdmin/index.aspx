<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="SmilessenceWeb.SmilessenceAdmin.index" %>
<!DOCTYPE html>

<html>
<head id="Head1" runat="server">    
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Smilessence : Administrator</title>
    <link rel="icon" href="images/favicon.png" type="image/x-icon" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=5" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <style type="text/css">        
        body{margin:0;padding:0;}
        .clr{clear:both;}
        .m_c{width: 100%; height: 100%;  background: #aaa; position: fixed; background: url(images/bg.jpg) center center no-repeat; background-size: cover;}
        .hed{text-align:center;z-index:999999999;position:relative;}
       .hed {text-align: left;z-index: 999999999;position: relative;}
        .hed a {z-index: 99999999;display: block;}
        .hed img { z-index: 99999999; display: block; margin: 10px auto 29px; }
        .my_fom { width: 25%; margin: 11% 62%; padding: 25px 2.8%; position: relative; z-index: 999; border-radius: 9px; background: #e8e8e8; float: left; border: 1px solid #a5a5a5; }
        .my_fom input { width: calc(100% - 10.8%); margin: 11px 0px; height: 44px; line-height: 28px; font-size: 16px; outline: none; background: #fff; padding: 2px 20px; letter-spacing: 1px; border: 1px solid #d3d3d3; border-radius: 5px; font-family: sans-serif; color: #545454; }
        .my_fom .lg_in_btn { margin-top: 18px; font-size: 15px; padding: 0px 7%; margin-right: 10%; margin-left: 88px; width: 42%; color: #fff; line-height: 35px; cursor: pointer; background: #000000; height: 46px; border-radius: 5px; }
        .my_fom .lg_in_btn:active{padding: 0px 3%;}
        .my_fom .lg_in_btn:hover{color:#f7f7f7;}
        .cld{position: absolute; top: 42%; left: 0; right: 0; text-align: center; z-index: 99;}
        .pd{position: absolute; top: 0%; left: 0; right: 0; text-align: center; z-index: 9;}
        .cldfooter{position: absolute; top: 76%;left:500px !important;right: 13%; text-align: center; z-index: 99; padding: 11px; color: #000 !important; margin: 0px; font-size: 16px; font-family: 'Lato', sans-serif;}
        .cldfooter a{top: 5%;}
        .textRed{color:#fff;}::-webkit-input-placeholder{color: #000;}::-moz-placeholder{color: #000;}:-ms-input-placeholder{color: #000;}:-moz-placeholder{color: #000;}
        @media (max-width:992px){.my_fom{width: 45%; margin: 0% 25% 5%;}.pd{display: none;}}@media (max-width:480px){.my_fom{width: 65%; margin: 0% 15% 5%;}}
         .cldfooter{position:absolute; top:90%;left:0;text-align:center;z-index:99; width:80%; padding:5px; color:#fff; margin:0px;}
        .cldfooter a{top:5%;}
        .textRed{color:red;}
    </style>
</head>
<body>
<form id="form1" runat="server">
    <div class="m_c">              
        <div class="my_fom">
            <div class="hed"><img src="images/logo.png"  alt="Smilessence" /></div>
            <asp:TextBox ID="username" runat="server" placeholder="Enter Username" ></asp:TextBox><br/>
            <asp:TextBox ID="password" runat="server" placeholder="Enter Password" TextMode="Password"></asp:TextBox><br/>
            <asp:Button ID="submit" runat="server" Text="LOG IN" CssClass="lg_in_btn" onclick="submit_Click" /><br />
            <p><asp:Label id="lblError" runat="server" CssClass="textRed"></asp:Label></p>
            <div class="clr"></div>
        </div>            
        <div class="cldfooter">Copyright © 2021, Smilessence | Made with passion : <a href="https://www.ibrandox.com" target="_blank"><img src="images/ox.png" alt="iBrandox Online Pvt. Ltd."  style="vertical-align: middle;height:30px;"/></a></div>
    </div>
</form>
</body>
</html>
