<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageDoctor.aspx.cs" Inherits="SmilessenceWeb.SmilessenceAdmin.ManageDoctor" %>
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
                            <h3 class="page-header">Manage Doctors </h3>
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
                                            <asp:DropDownList ID="DDSpecialties" runat="server" CssClass="form-control" AutoPostBack="true" onselectedindexchanged="DDSpecialties_SelectedIndexChanged" Width="194" style="float:left;margin-right:10px;"></asp:DropDownList>
                                            <asp:TextBox ID="txtSerachData" CssClass="txtSearch" Width="180px" placeholder="Search Doctor Name" runat="server" style="float:left;"></asp:TextBox>
                                            <asp:Button ID="btnSearch" runat="server" Text="Search" style="margin-right:54px; padding-right:0px;" Width="100" CssClass="btn btn-default bt_right_box" onclick="btnSearch_Click"/>
                                        </div>                                       
                                        <div class="col-lg-5">
                                            <asp:Button ID="btnAdd" runat="server" Text="Add New Doctor" CssClass="btn btn-default bt_right_box" OnClick="btnAdd_Click" />
                                            <asp:Button ID="btnUpdateOrder" runat="server" Text="Update Display Order" CssClass="btn btn-default bt_right_box" OnClick="btnUpdateOrder_Click" />
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <asp:GridView ID="GvDoctorData" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" AllowPaging="True" CaptionAlign="Left" Width="100%" OnPageIndexChanging="GvDoctorData_PageIndexChanging" OnRowCommand="GvDoctorData_RowCommand" OnRowDeleting="GvDoctorData_RowDeleting" PageSize="50" AllowSorting="True" ForeColor="Black" GridLines="Both" onsorting="GvDoctorData_Sorting">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <Columns>                            
                                                        <asp:BoundField DataField="sno" HeaderText="S.No.">
                                                            <ItemStyle Width="20px" HorizontalAlign="center" />
                                                            <HeaderStyle Width="20px" HorizontalAlign="center" />
                                                        </asp:BoundField>
                                                        <asp:BoundField datafield="SpecialtiesTitle" headertext="Specialties">
                                                            <ItemStyle HorizontalAlign="center" CssClass="LeftAlignINMAnagePAge"/>
                                                            <HeaderStyle HorizontalAlign="center" CssClass="LeftAlignINMAnagePAge"/>
                                                        </asp:BoundField>
                                                        <asp:BoundField datafield="DoctorName" headertext="Name">
                                                            <ItemStyle HorizontalAlign="center" CssClass="LeftAlignINMAnagePAge"/>
                                                            <HeaderStyle HorizontalAlign="center" CssClass="LeftAlignINMAnagePAge"/>
                                                        </asp:BoundField>
                                                        <asp:BoundField datafield="DoctorEmail" headertext="Email">
                                                            <ItemStyle HorizontalAlign="center" CssClass="LeftAlignINMAnagePAge"/>
                                                            <HeaderStyle HorizontalAlign="center" CssClass="LeftAlignINMAnagePAge"/>
                                                        </asp:BoundField>
                                                        <asp:BoundField datafield="DoctorPhone" headertext="Phone">
                                                            <ItemStyle HorizontalAlign="center" CssClass="LeftAlignINMAnagePAge"/>
                                                            <HeaderStyle HorizontalAlign="center" CssClass="LeftAlignINMAnagePAge"/>
                                                        </asp:BoundField>
                                                        <asp:TemplateField HeaderText="Display Order">
                                                            <ItemTemplate>
                                                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Eval("DoctorID") %>' />
                                                                <asp:TextBox ID="txtDisplayOrder" runat="server" Text='<%#Eval("DisplayOrder")%>' Width="50" MaxLength="3" CssClass="inpfield txtDisplayOrder" onkeypress="return numeralsOnly(event)"></asp:TextBox>
                                                            </ItemTemplate>
                                                            <ItemStyle  HorizontalAlign="Center" />
                                                            <HeaderStyle  HorizontalAlign="Center" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Status">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblCategoryStatus" CssClass='<%# (Convert.ToInt32(Eval("ActiveStatus")) == 1) ? "txt_clr_active" : "txt_clr_inactive"  %>' runat="server" Text='<%# (Convert.ToInt32(Eval("ActiveStatus")) == 1) ? "Active" : "Inactive"   %>'></asp:Label>                                        
                                                            </ItemTemplate>
                                                            <ItemStyle HorizontalAlign="Center" />
                                                            <HeaderStyle HorizontalAlign="Center" />
                                                        </asp:TemplateField>                                                       
                                                        <asp:TemplateField HeaderText="Edit">
                                                            <ItemTemplate>
                                                                <asp:ImageButton ID="ImgbtnEdit" runat="server" CommandArgument='<%#Eval("DoctorID")%>' CommandName="Edit" ImageUrl="images/edit.jpg" />
                                                            </ItemTemplate>
                                                            <ItemStyle  HorizontalAlign="Center" />
                                                            <HeaderStyle  HorizontalAlign="Center" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Delete">
                                                            <ItemTemplate>
                                                                <asp:ImageButton ID="IImgbtnDelete" runat="server" CommandArgument='<%#Eval("DoctorID")%>'
                                                                    CommandName="Delete" ImageUrl="images/delete.jpg" OnClientClick="return confirm('Are you sure you want to delete the record?');" />
                                                            </ItemTemplate>
                                                            <ItemStyle  HorizontalAlign="Center" />
                                                            <HeaderStyle  HorizontalAlign="Center" />
                                                        </asp:TemplateField>
                                                    </Columns>
                                                    <FooterStyle />
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
                <uc2:Footer ID="Footer1" runat="server" />
            </div>
        </div>
    </form>
</body>
</html>
