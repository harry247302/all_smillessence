<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SmilessenceWeb.SmilessenceAdmin.Home" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Src="HeaderRight.ascx" TagName="HeaderRight" TagPrefix="uc3" %>
<!DOCTYPE html>

<html>
<head id="Head1" runat="server">
    <title>Smilessence : Administrator</title>
    <link rel="icon" href="images/favicon.png" type="image/x-icon" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="css/morris-0.4.3.min.css" rel="stylesheet" />
    <link href="css/custom-styles.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
     <style type="text/css">
        .page-body{padding: 0px 20px; width: 100%; /* min-height: 385px; */ display: inline-block;}
        .static-content{margin-top: 30px; margin-bottom: 40px; display: inline-block; width: 100%;}
        .col-1-3{width: 29%; margin: 2%;}[class*="col-"]{float: left; min-height: 1px;}
        .static-content .white-box{-webkit-border-radius: 3px; -moz-border-radius: 3px; -ms-border-radius: 3px; -o-border-radius: 3px; border-radius: 28px; padding: 30px; width: 304px; height: 149px;}
        .white-box{position: relative; background-color: #fff; min-height: 125px; border: 1px solid rgba(0, 174, 228, 0.36);}
        .badge{position: absolute; height: 31px; top: -1px; right: -10px; display: block; background-color: #772f69; color: #fff; font-weight: 400; font-size: 19px; line-height: 1; padding: 6px 13px 0; -webkit-border-radius: 40px; -moz-border-radius: 40px; -ms-border-radius: 40px; -o-border-radius: 40px; border-radius: 40px;}
        .badge.blue{background-color: #0363df;}.static-content .white-box h4{font-weight: 300; color: #fff; font-size: 22px; line-height: 28px; text-align: center;}
        .static-content .white-box::after{width: 83px; height: 45px; left: 0; top: 100%; background-position: left top;}
        table td{text-align:left;}
        .hm_dat_ad a{color:#000;text-decoration:none;}
        .hm_dat_ad:hover, .hm_dat_ad a:hover{background-color:#e7e7e7;color:#fff;text-decoration:none;}
        .cardBx{width:25%;float: left;padding: 0 10px;}
        .cardBx-inn{width: 100%;height: 140px;border-radius: 5px;border: 1px solid rgba(0, 0, 0, 0.09);background: #fff;padding: 15px;box-shadow: 0px 0px 12px rgba(0, 0, 0, 0.07);position:relative;}
        .crdHref{position:absolute;width:100%;height:100%;left:0px;top:0px;z-index:1;}
        .crdTitle{font-size: 23px;margin-bottom: 8px;line-height:14px; line-height:60px;}
        .crdNbr{font-size :36px;line-height:32px;font-weight:bold;padding-left: 25%;}
        .crdIcnBx {position: absolute;width: 62px;height: 52px;right: 15px;bottom: 15px;}
        .crdIcnBx img{width: 100%;height: 100%;object-fit: contain;object-position: right bottom;}
        .head_inn_title { float: left; }
        .head_inn { font-size: 16px; position: relative; padding: 7px; border-bottom: 1px solid rgba(69, 69, 85, 0.2); color: #ffffff;     background-color: #e31a34; }
        table { font-family: arial, sans-serif; border-collapse: collapse; width: 96%; } 
        td, th { border: 1px solid #dddddd; text-align: left; padding: 8px; background: #fff;line-height:normal;color:#000} 
        tr:nth-child(even) { background-color: #dddddd; }
        .head_inn_act{ float:right; font-size:12px;} 
        .head_inn_act b{font-size:12px;}
        .head_inn_act a{ font-size:14px; font-weight:bold; color:#ffffff !important; transition: all .5s; text-decoration: none;margin-left:10px; } 
        .head_inn_act a:hover{ color:#f58634 }
        .cardBx {
    width: 25%;
    float: left;
    padding: 0 10px;
    margin-bottom: 20px;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="wrapper">
            <uc1:Header ID="Header1" runat="server" />
            <div id="page-wrapper">
                <uc3:HeaderRight ID="HeaderRight1" runat="server" />
                <div id="page-inner">
                    <div class="row">
                        <div class="col-md-12">                            
                            <p style="text-align:center;line-height:50px;margin-bottom:30px;"><asp:Literal ID="litMsgg" runat="server"></asp:Literal></p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="bloc_div"> 
                            <div class="cardBx">
                                <div class="cardBx-inn">
                                    <a class="crdHref" href="/SmilessenceAdmin/manage-service"></a>
                                    <div class="crdTitle">Total Treatment</div>
                                    <div class="crdNbr"><asp:Literal ID="ltrTreatments" runat="server" Text="0"></asp:Literal></div>
                                    <div class="crdIcnBx">
                                        <img src="images/service-icon.png" alt="" />
                                    </div>
                                </div>
                            </div>                                
                            <div class="cardBx">
                                <div class="cardBx-inn">
                                    <a class="crdHref" href="/SmilessenceAdmin/blog-data"></a>
                                    <div class="crdTitle">Total Blogs</div>
                                    <div class="crdNbr"><asp:Literal ID="ltrTotalActiveBlog" runat="server" Text="0"></asp:Literal></div>
                                    <div class="crdIcnBx"><img src="images/Doctor.jpg" alt="" /></div>
                                </div>
                            </div> 
                            <div class="cardBx">
                                <div class="cardBx-inn">
                                    <a class="crdHref" href="/SmilessenceAdmin/contact-us"></a>
                                    <div class="crdTitle">Total Inquiry</div>
                                    <div class="crdNbr"><asp:Literal ID="ltrTotalInquiry" runat="server" Text="0"></asp:Literal></div>
                                    <div class="crdIcnBx">
                                        <img src="images/specility.png" alt="" />
                                    </div>
                                </div>
                            </div>    
                                <div class="cardBx">
                                <div class="cardBx-inn">
                                    <a class="crdHref" href="/SmilessenceAdmin/subscribe"></a>
                                    <div class="crdTitle">Total Subscription</div>
                                    <div class="crdNbr"><asp:Literal ID="ltrTotalSubscription" runat="server" Text="0"></asp:Literal></div>
                                    <div class="crdIcnBx"><img src="images/settings.png" alt="" /></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-7">
                            <div class="panel panel-default" style="margin:20px 0px;">
                                <div class="head_inn clearfix">
                                    <div class="head_inn_title"><i class="fa lt fa-list" aria-hidden="true"></i> Recent Visitor Inquiry (<b title="Total Inquiry"><asp:Literal ID="ltrtotalEnquiry" runat="server" Text="0"></asp:Literal></b>)</div>
                                    <div class="head_inn_act"><a href="/SmilessenceAdmin/contact-us" class="bt_right_box">View All</a></div>                            
                                </div>
                                <asp:GridView ID="GvRecentInquiry" runat="server" AutoGenerateColumns="False" CaptionAlign="Left" Width="100%">
                                    <Columns>
                                        <asp:BoundField DataField="sno" HeaderText="S.No.">
                                            <ItemStyle Width="20px" HorizontalAlign="center" />
                                            <HeaderStyle Width="20px" HorizontalAlign="center" />
                                        </asp:BoundField>
                                            <asp:BoundField DataField="FullName" HeaderText="Visitor Name" SortExpression="FullName">
                                            <ItemStyle HorizontalAlign="center" />
                                            <HeaderStyle HorizontalAlign="center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="EmailID" HeaderText="EmailID" SortExpression="EmailID">
                                            <ItemStyle HorizontalAlign="center" />
                                            <HeaderStyle HorizontalAlign="center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="PhoneNo" HeaderText="Contact no" SortExpression="PhoneNo">
                                            <ItemStyle HorizontalAlign="center" />
                                            <HeaderStyle HorizontalAlign="center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="PostedDate" HeaderText="Date" SortExpression="PostedDate">
                                            <ItemStyle HorizontalAlign="center" />
                                            <HeaderStyle HorizontalAlign="center" />
                                        </asp:BoundField>                                                    
                                    </Columns>
                                    <FooterStyle  />
                                    <HeaderStyle  />
                                    <PagerStyle  HorizontalAlign="Left" />
                                    <RowStyle  />
                                    <SelectedRowStyle  />
                                    <SortedAscendingCellStyle  />
                                    <SortedAscendingHeaderStyle  />
                                    <SortedDescendingCellStyle  />
                                    <SortedDescendingHeaderStyle  />
                                </asp:GridView>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="panel panel-default" style="margin:20px 0px;">
                                <div class="head_inn clearfix">
                                    <div class="head_inn_title"><i class="fa lt fa-list" aria-hidden="true"></i> Recent Subscriber (<b title="Total Subscriber"><asp:Literal ID="ltrtotalSubscribtion" runat="server" Text="0"></asp:Literal></b>)</div>
                                    <div class="head_inn_act"><a href="/SmilessenceAdmin/subscribe" class="bt_right_box">View All</a></div>                            
                                </div>
                                <asp:GridView ID="GvRecentSubscribeData" runat="server" AutoGenerateColumns="False" CaptionAlign="Left" Width="100%">
                                    <Columns>
                                        <asp:BoundField DataField="sno" HeaderText="S.No.">
                                            <ItemStyle Width="20px" HorizontalAlign="center" />
                                            <HeaderStyle Width="20px" HorizontalAlign="center" />
                                        </asp:BoundField>                                           
                                        <asp:BoundField DataField="EmailID" HeaderText="EmailID" SortExpression="EmailID">
                                            <ItemStyle HorizontalAlign="center" />
                                            <HeaderStyle HorizontalAlign="center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="PostedDate" HeaderText="Date" SortExpression="PostedDate">
                                            <ItemStyle HorizontalAlign="center" />
                                            <HeaderStyle HorizontalAlign="center" />
                                        </asp:BoundField>                                                    
                                    </Columns>
                                    <FooterStyle  />
                                    <HeaderStyle  />
                                    <PagerStyle  HorizontalAlign="Left" />
                                    <RowStyle  />
                                    <SelectedRowStyle  />
                                    <SortedAscendingCellStyle  />
                                    <SortedAscendingHeaderStyle  />
                                    <SortedDescendingCellStyle  />
                                    <SortedDescendingHeaderStyle  />
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <uc2:Footer ID="Footer1" runat="server" />
            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            <asp:Literal ID="Literal2" runat="server"></asp:Literal>
        </div>
    </form>
</body>
</html>
