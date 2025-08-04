<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageSubscribe.aspx.cs" Inherits="SmilessenceWeb.SmilessenceAdmin.ManageSubscribe" %>
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
                            <h3 class="page-header">Manage Subscription </h3>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <asp:Label ID="lblMsg" runat="server" Text="" CssClass="textGreen"></asp:Label>
                                    <asp:Label ID="lblError" runat="server" Text="" CssClass="textRed"></asp:Label>
                                </div>
                                <div class="panel-body">
                                <div class="row" style="margin-bottom:10px;">
                                        <div class="col-lg-12">
                                            <asp:Button ID="btnDownload" runat="server" Text="Export to excel" CssClass="btn btn-default bt_right_box" OnClick="btnDownload_Click" />
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                  <asp:GridView ID="GvSubscription" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC"
                            BorderColor="#999999" BorderStyle="Solid" BorderWidth="2px" CellPadding="0" CellSpacing="2"
                            ForeColor="Black" AllowPaging="True" CaptionAlign="Left" Width="100%" OnPageIndexChanging="GvSubscription_PageIndexChanging"
                            OnRowCommand="GvSubscription_RowCommand" OnRowDeleting="GvSubscription_RowDeleting" PageSize="50">
                            <Columns>
                                <asp:BoundField DataField="sno" HeaderText="S.No.">
                                    <ItemStyle HorizontalAlign="center" />
                                    <HeaderStyle HorizontalAlign="center" />
                                </asp:BoundField>                             
                                <asp:BoundField DataField="EmailID" HeaderText="Email ID">
                                    <ItemStyle HorizontalAlign="center" />
                                    <HeaderStyle HorizontalAlign="center" Width="400px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="PostedDate" HeaderText="Subscription Date" SortExpression="PostedDate">
                                   <ItemStyle HorizontalAlign="center" />
                                   <HeaderStyle HorizontalAlign="center" />
                                </asp:BoundField>

                                <asp:TemplateField HeaderText="Delete">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="IImgbtnDelete" runat="server" CommandArgument='<%#Eval("SubscribeID")%>'
                                            CommandName="Delete" ImageUrl="images/delete.jpg" OnClientClick="return confirm('Are you sure you want to delete the record?');" />
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                    <HeaderStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                            </Columns>
                         <FooterStyle  />
                          <HeaderStyle  />
                          <PagerStyle CssClass="gridview" HorizontalAlign="Left" />
                          <RowStyle  />
                          <SelectedRowStyle  />
                          <SortedAscendingCellStyle  />
                          <SortedAscendingHeaderStyle  />
                        </asp:GridView>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row" style="margin-bottom:10px;">
                                    <div class="col-lg-12">
                                        <asp:Label ID="lblTotalNoOFStore" runat="server"></asp:Label>
                                    </div>
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <uc2:Footer ID="Footer1" runat="server" />
        </div>
    </form>
</body>
</html>
