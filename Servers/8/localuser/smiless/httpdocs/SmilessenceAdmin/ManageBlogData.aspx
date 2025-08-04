<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageBlogData.aspx.cs" Inherits="SmilessenceWeb.SmilessenceAdmin.ManageBlogData" %>
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
    <style>
        .artimsleftal{text-align:left;}
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
                            <h3 class="page-header">Manage Blog Data </h3>
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
                                        <div class="col-lg-7">
                                            <asp:TextBox ID="txtSerachData" CssClass="txtSearch" Width="250px" placeholder=" Search Blog Title" runat="server"></asp:TextBox>
                                            <asp:Button ID="btnSearch" runat="server" Text="Search" style="margin-right:154px; padding-right:0px;" Width="100"  CssClass="btn btn-default bt_right_box" onclick="btnSearch_Click"/>
                                        </div>
                                        <div class="col-lg-1">
                                            <asp:DropDownList ID="DdBlogCategory" runat="server" CssClass="form-control" Visible="false" AutoPostBack="true" onselectedindexchanged="DdBlogCategory_SelectedIndexChanged"></asp:DropDownList>
                                        </div>
                                        <div class="col-lg-4">
                                            <asp:Button ID="btnAdd" runat="server" Text="Add New Blog" CssClass="btn btn-default bt_right_box" OnClick="btnAdd_Click" /> 
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <asp:GridView ID="GvBlogData" runat="server" AutoGenerateColumns="False" AllowPaging="True" CaptionAlign="Left" Width="100%" OnPageIndexChanging="GvBlogData_PageIndexChanging" OnRowCommand="GvBlogData_RowCommand" OnRowDeleting="GvBlogData_RowDeleting" PageSize="20" AllowSorting="True" onsorting="GvBlogData_Sorting">
                                        <Columns>
                                            <asp:BoundField DataField="sno" HeaderText="S.No.">
                                                <ItemStyle Width="20px" HorizontalAlign="center" />
                                                <HeaderStyle Width="20px" HorizontalAlign="center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="BlogTitle" HeaderText="Blog Title" SortExpression="BlogTitle">
                                                <ItemStyle HorizontalAlign="center"  CssClass="LeftAlignINMAnagePAge"/>
                                                <HeaderStyle HorizontalAlign="center" CssClass="LeftAlignINMAnagePAge"/>
                                            </asp:BoundField>
                                           <%-- <asp:BoundField DataField="BlogCategoryName" HeaderText="Blog Category" SortExpression="BlogCategoryName">
                                                <ItemStyle HorizontalAlign="center" CssClass="LeftAlignINMAnagePAge"/>
                                                <HeaderStyle HorizontalAlign="center" CssClass="LeftAlignINMAnagePAge"/>
                                            </asp:BoundField>--%>
                                            <asp:TemplateField HeaderText="Image" SortExpression="SmallImg">
                                                <ItemTemplate>
                                                    <img alt="Smilessence-admin" src="../Smilessencelmages/BlogImage/<%#Eval("SmallImg")%>" height="100" />
                                                </ItemTemplate>
                                                <ItemStyle  HorizontalAlign="Center" />
                                                <HeaderStyle  HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Status" SortExpression="ActiveStatus">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblCategoryStatus" runat="server" CssClass='<%# (Convert.ToInt32(Eval("ActiveStatus")) == 1) ? "txt_clr_active" : "txt_clr_inactive"  %>' Text='<%# (Convert.ToInt32(Eval("ActiveStatus")) == 1) ? "Active" : "Inactive"   %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Center" />
                                                <HeaderStyle HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Edit">
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="ImgbtnEdit" runat="server" CommandArgument='<%#Eval("BlogID")%>' CommandName="Edit" ImageUrl="images/edit.jpg" />
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Center" />
                                                <HeaderStyle HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Delete">
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="IImgbtnDelete" runat="server" CommandArgument='<%#Eval("BlogID")%>' CommandName="Delete" ImageUrl="images/delete.jpg" OnClientClick="return confirm('Are you sure you want to delete the record?');" />
                                                </ItemTemplate>
                                                <ItemStyle Width="40px" HorizontalAlign="Center" />
                                                <HeaderStyle Width="40px" HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                        </Columns>
                                        <FooterStyle Width="100px" />
                                        <HeaderStyle />
                                        <PagerStyle HorizontalAlign="Left" />
                                        <RowStyle />
                                        <SelectedRowStyle />
                                        <SortedAscendingCellStyle />
                                        <SortedAscendingHeaderStyle />
                                        <SortedDescendingCellStyle />
                                        <SortedDescendingHeaderStyle />
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
