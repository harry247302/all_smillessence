<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageBlogCategory.aspx.cs" Inherits="SmilessenceWeb.SmilessenceAdmin.ManageBlogCategory" %>
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
    <script src="Js/Validation.js" language="javascript" type="text/javascript"></script>
    <script type="text/javascript" language="javascript">
        function numeralsOnly(evt) {
            evt = (evt) ? evt : event;
            var charCode = (evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode : ((evt.which) ? evt.which : 0));
            if (charCode > 31 && (charCode < 48 || charCode > 57) && (charCode != 46)) {
                alert("Enter Digit only in this field!");
                return false;
            }
            return true;
        }
    </script>
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
                            <h3 class="page-header">Manage Blog Category </h3>
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
                                        <div class="col-lg-6">
                                            <asp:TextBox ID="txtSerachData" CssClass="txtSearch" Width="250px" placeholder="Search BlogCategory Name" runat="server"></asp:TextBox>
                                            <asp:Button ID="btnSearch" runat="server" Text="Search" style="margin-right:108px; padding-right:0px;" Width="100" CssClass="btn btn-default bt_right_box" onclick="btnSearch_Click"/>
                                        </div>
                                        <div class="col-lg-6">
                                           <asp:Button ID="btnAdd" runat="server" Text="Add New Blog Category" CssClass="btn btn-default bt_right_box" OnClick="btnAdd_Click" />
                                           <asp:Button ID="btnUpdateOrder" runat="server" Text="Update Display Order" CssClass="btn btn-default bt_right_box" OnClick="btnUpdateOrder_Click" />
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <asp:GridView ID="GvBlogCategory" runat="server" AutoGenerateColumns="False" AllowPaging="True" CaptionAlign="Left" OnPageIndexChanging="GvBlogCategory_PageIndexChanging" OnRowCommand="GvBlogCategory_RowCommand" OnRowDeleting="GvBlogCategory_RowDeleting"  AllowSorting="True" onsorting="GvBlogCategory_Sorting" PageSize="20">
                                        <Columns>
                                            <asp:BoundField DataField="sno" HeaderText="S.No.">
                                                <ItemStyle  HorizontalAlign="center" />
                                                <HeaderStyle  HorizontalAlign="center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="BlogCategoryName" SortExpression="BlogCategoryName" HeaderText="Blog Category Name">
                                                <ItemStyle HorizontalAlign="center" CssClass="LeftAlignINMAnagePAge"/>
                                                <HeaderStyle HorizontalAlign="center" CssClass="LeftAlignINMAnagePAge"/>
                                            </asp:BoundField>
                                            <asp:TemplateField HeaderText="Display Order" SortExpression="DisplayOrder">
                                                <ItemTemplate>
                                                    <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Eval("BlogCategoryID") %>' />
                                                    <asp:TextBox ID="txtDisplayOrder" runat="server" Text='<%#Eval("DisplayOrder")%>' Width="50" MaxLength="3" CssClass="inpfield txtDisplayOrder" onkeypress="return numeralsOnly(event)"></asp:TextBox>
                                                </ItemTemplate>
                                                <ItemStyle  HorizontalAlign="Center" />
                                                <HeaderStyle  HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Blog Category Status" SortExpression="ActiveStatus">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblCategoryStatus" runat="server" CssClass='<%# (Convert.ToInt32(Eval("ActiveStatus")) == 1) ? "txt_clr_active" : "txt_clr_inactive"  %>' Text='<%# (Convert.ToInt32(Eval("ActiveStatus")) == 1) ? "Active" : "Inactive"   %>'></asp:Label> 
                                                </ItemTemplate>
                                                <ItemStyle  HorizontalAlign="Center" />
                                                <HeaderStyle  HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Edit">
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="ImgbtnEdit" runat="server" CommandArgument='<%#Eval("BlogCategoryID")%>'
                                                        CommandName="Edit" ImageUrl="images/edit.jpg" />
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Center" />
                                                <HeaderStyle HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Delete">
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="IImgbtnDelete" runat="server" CommandArgument='<%#Eval("BlogCategoryID")%>'
                                                        CommandName="Delete" ImageUrl="images/delete.jpg" OnClientClick="return confirm('Are you sure you want to delete the record?');" />
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Center" />
                                                <HeaderStyle HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                        </Columns>
                                        <FooterStyle Width="100px" />
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
