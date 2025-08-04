<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddUpdateSpecialties.aspx.cs" Inherits="SmilessenceWeb.SmilessenceAdmin.AddUpdateSpecialties" %>
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
    <script language="JavaScript" type="text/javascript">
        function pagecheck() {
            if (!chkValue(document.getElementById("DdSpecialtiesType"), 0, "Select Specialties Type"))
                return false;
            if (!req(document.getElementById("txtSpecialties"), "Enter Specialties Name"))
                return false;
        }
        function pagecheck1() {
            if (!chkValue(document.getElementById("DdSpecialtiesType"), 0, "Select Specialties Type."))
                return false;
            if (!req(document.getElementById("txtSpecialties"), "Enter Specialties Name"))
                return false;
        }

        function validateFileUploadT(obj) {
            var fileName = new String();
            var fileExtension = new String();                // store the file name into the variable        
            fileName = obj.value;                // extract and store the file extension into another variable        
            fileExtension = fileName.substr(fileName.length - 3, 3);                // array of allowed file type extensions        
            var validFileExtensions = new Array("Jpg", "jpeg", "png", "gif", "bmp");
            var flag = false;                // loop over the valid file extensions to compare them with uploaded file        
            var FileExtension1 = fileName.substring(fileName.lastIndexOf('.') + 1).toLowerCase();
            var LengthOfFile = FileExtension1.length;
            if (LengthOfFile > 3) {
                if (FileExtension1 == "jpeg") {
                    flag = true;
                }
                else {
                    alert('Files with extension ".' + FileExtension1.toUpperCase() + '" are not allowed.\n\nYou can upload the files with following extensions only:\n.Jpg\n.jpeg\n.png\n.gif\n.bmp\n');
                    document.getElementById("ThumbImg1").value = "";
                    return false;
                }
            }
            if (FileExtension1 != "jpeg") {
                for (var index = 0; index < validFileExtensions.length; index++) {
                    if (fileExtension.toLowerCase() == validFileExtensions[index].toString().toLowerCase()) {
                        flag = true;
                    }
                }
            }
            if (flag == false) {
                alert('Files with extension ".' + fileExtension.toUpperCase() + '" are not allowed.\n\nYou can upload the files with following extensions only:\n.Jpg\n.jpeg\n.png\n.gif\n.bmp\n');
                document.getElementById("ThumbImg1").value = "";
                return false;
            }
            else {
                //alert('File has valid extension.');            
                return true;
            }
        }   
    </script>
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
                            <h3 class="page-header">Add/Update Specialties </h3>
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
                                    <div class="row">
                                        <div role="form">
                                            <div class="col-lg-2">
                                            <div class="form-group">
                                                <label><span style="color: Red;">*</span>&nbsp;Specialist In</label>                                                
                                            </div>
                                        </div>                                    
                                        <div class="col-lg-4">
                                            <div class="form-group">                                               
                                                <asp:DropDownList ID="DdSpecialtiesType" CssClass="form-control" runat="server">
                                                    <asp:ListItem Value="0">Select Specialties Type</asp:ListItem>
                                                    <asp:ListItem Value="Chief Specialties">Chief Specialties</asp:ListItem>
                                                    <asp:ListItem Value="Allied Specialties">Allied Specialties</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>                                           
                                        </div>
                                        <div class="clearfix"></div>
                                        <div class="col-lg-2">
                                            <div class="form-group">
                                                <label><span style="color: Red;">*</span>&nbsp;Specialties Title</label>                                                
                                            </div>
                                        </div>                                    
                                        <div class="col-lg-4">
                                            <div class="form-group">                                               
                                                <asp:TextBox ID="txtSpecialties" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>                                           
                                        </div>
                                        <div class="clearfix"></div>
                                        <div style="display:none;">
                                        <div class="col-lg-2">
                                            <div class="form-group">
                                                <label><span style="color: Red;">*</span>&nbsp;Icon Image</label>                                                
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">     
                                                <input id="ThumbImg2" type="file" runat="server" /><span style="font-size:11px;">(Image Size 261px X 261px)</span>
                                            </div>                                           
                                        </div>
                                        <div class="col-lg-4" id="trImageTArea2" runat="server" >
                                            <div class="form-group">     
                                                <asp:Image ID="Image2" runat="server" Width="150" Height="80" Visible="false" />
                                            </div>                                           
                                        </div>
                                        <div class="clearfix"></div>
                                        </div>
                                        <div class="col-lg-2">
                                            <div class="form-group">
                                                <label>Status(Active/Inactive)</label>                                                
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">                                               
                                                <asp:CheckBox ID="chkStatus" runat="server" />
                                            </div>                                           
                                        </div>
                                        <div class="clearfix"></div>
                                        <div class="col-lg-2">
                                            <div class="form-group">
                                                <label>&nbsp;</label>                                                
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-default" OnClick="btnSave_Click" />
                                            <asp:Button ID="btnBack" runat="server" Text="Back" CssClass="btn btn-default" OnClick="btnBack_Click" />
                                        </div>
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
