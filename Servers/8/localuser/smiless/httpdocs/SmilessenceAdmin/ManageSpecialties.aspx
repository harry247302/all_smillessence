<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageSpecialties.aspx.cs" Inherits="SmilessenceWeb.SmilessenceAdmin.ManageSpecialties" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<%@ Register Src="HeaderRight.ascx" TagName="HeaderRight" TagPrefix="uc3" %>
<!DOCTYPE html>

<html>
<head id="Head1" runat="server">
    <title>Smilessence : Administrator</title>
    <link rel="icon" href="images/favicon.ico" type="image/x-icon" />
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
                            <h3 class="page-header">Manage Specialties</h3>
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
                                        <div class="col-lg-4">
                                            <asp:DropDownList ID="DdSpecialties" CssClass="form-control" runat="server" Height="40" AutoPostBack="true" onselectedindexchanged="DdSpecialties_SelectedIndexChanged" Width="200">
                                                <asp:ListItem Text=" Select Specialties" Value=""></asp:ListItem>
                                                <asp:ListItem Value="Chief Specialties">Chief Specialties</asp:ListItem>
                                                <asp:ListItem Value="Allied Specialties">Allied Specialties</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <div class="col-lg-8">
                                           <asp:Button ID="btnAdd" runat="server" Text="Add New Specialties" Height="40" Width="220" CssClass="btn btn-default bt_right_box" OnClick="btnAdd_Click" />
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <asp:GridView ID="GvSpecialties" runat="server" AutoGenerateColumns="False" AllowPaging="True" CaptionAlign="Left" Width="100%" OnPageIndexChanging="GvSpecialties_PageIndexChanging" OnRowCommand="GvSpecialties_RowCommand" OnRowDeleting="GvSpecialties_RowDeleting" PageSize="60" AllowSorting="True" onsorting="GvSpecialties_Sorting">
                                        <Columns>
                                            <asp:BoundField DataField="sno" HeaderText="S.No.">
                                                <ItemStyle Width="25px" HorizontalAlign="center" />
                                                <HeaderStyle Width="25px" HorizontalAlign="center" />
                                            </asp:BoundField>
                                             <asp:BoundField DataField="SpecialitiesType" HeaderText="Specialities Type" SortExpression="SpecialitiesType">
                                                <ItemStyle HorizontalAlign="center" Width="430" CssClass="LeftAlignINMAnagePAge"/>
                                                <HeaderStyle HorizontalAlign="center" CssClass="LeftAlignINMAnagePAge"/>
                                            </asp:BoundField>
                                            <asp:BoundField DataField="SpecialtiesTitle" HeaderText="Specialties Title" SortExpression="SpecialtiesTitle">
                                                <ItemStyle HorizontalAlign="center" Width="330px" CssClass="LeftAlignINMAnagePAge"/>
                                                <HeaderStyle HorizontalAlign="center" Width="330px" CssClass="LeftAlignINMAnagePAge"/>
                                            </asp:BoundField>
                                            <asp:TemplateField HeaderText="Status" SortExpression="ActiveStatus">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblCategoryStatus" runat="server" CssClass='<%# (Convert.ToInt32(Eval("ActiveStatus")) == 1) ? "txt_clr_active" : "txt_clr_inactive"  %>' Text='<%# (Convert.ToInt32(Eval("ActiveStatus")) == 1) ? "Active" : "Inactive"   %>'></asp:Label> 
                                                </ItemTemplate>
                                                <ItemStyle  HorizontalAlign="Center" Width="200px" />
                                                <HeaderStyle  HorizontalAlign="Center" Width="200px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Edit">
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="ImgbtnEdit" runat="server" CommandArgument='<%#Eval("SpecialtiesID")%>'
                                                        CommandName="Edit" ImageUrl="images/edit.jpg" />
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Center" Width="80px" />
                                                <HeaderStyle HorizontalAlign="Center" Width="80px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Delete">
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="IImgbtnDelete" runat="server" CommandArgument='<%#Eval("SpecialtiesID")%>' CommandName="Delete" ImageUrl="images/delete.jpg" OnClientClick="return confirm('Are you sure you want to delete the record?');" />
                                                </ItemTemplate>
                                                <ItemStyle Width="70px" HorizontalAlign="Center" />
                                                <HeaderStyle Width="70px" HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                        </Columns>
                                        <FooterStyle Width="100px"  />
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
