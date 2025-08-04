<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddUpdDoctor.aspx.cs" ValidateRequest="false" Inherits="SmilessenceWeb.SmilessenceAdmin.AddUpdDoctor" %>
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
    <script language="JavaScript" type="text/javascript" src="Js/wysiwyg.js"></script>
    <script src="Js/Validation.js" type="text/javascript" language="javascript"></script>
    <script language="JavaScript" type="text/javascript">
        function pagecheck() {
            if (!chkValue(document.getElementById("DDSpecialties"), 0, "Select Specialties."))
                return false;
            if (!req(document.getElementById("txtName"), "Enter doctor name"))
                return false
            if (!req(document.getElementById("ThumbImg1"), "Upload profile image"))
                return false
            if (!req(document.getElementById("txtEmail"), "Enter doctor email"))
                return false
            if (!req(document.getElementById("txtPhone"), "Enter doctor phone"))
                return false
            if (!chkValue(document.getElementById("DDGender"), 0, "Select gender."))
                return false;
            if (!req(document.getElementById("txtDoctorFees"), "Enter doctor consultation fees"))
                return false
            if (!req(document.getElementById("txtQualification"), "Enter doctor qualification"))
                return false
            if (!req(document.getElementById("txtExperience"), "Enter doctor experience"))
                return false
        }

        function pagecheck1() {
            if (!chkValue(document.getElementById("DDSpecialties"), 0, "Select Specialties."))
                return false;
            if (!req(document.getElementById("txtName"), "Enter Doctor Name"))
                return false
            if (!req(document.getElementById("txtEmail"), "Enter Doctor Email"))
                return false
            if (!req(document.getElementById("txtPhone"), "Enter Doctor Phone"))
                return false
            if (!chkValue(document.getElementById("DDGender"), 0, "Select Gender."))
                return false;
            if (!req(document.getElementById("txtDoctorFees"), "Enter Doctor Consultation Fees"))
                return false
            if (!req(document.getElementById("txtQualification"), "Enter Doctor Qualification"))
                return false
            if (!req(document.getElementById("txtExperience"), "Enter Doctor Experience"))
                return false
        }

        function validateFileUploadT(obj) {
            var fileName = new String();
            var fileExtension = new String();
            fileName = obj.value;
            fileExtension = fileName.substr(fileName.length - 3, 3);
            var validFileExtensions = new Array("Jpg", "jpeg", "png", "gif", "bmp");
            var flag = false;
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
                return true;
            }
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
                        <h3 class="page-header">Add/Update Doctor</h3>
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
                                        <ul class="nav nav-tabs  m_ul_tab_st">
                                            <li class="active"><a data-toggle="tab" href="#DoctorData">Doctor Data</a></li>
                                            <li><a data-toggle="tab" href="#SEoData">SEO Data</a></li>
                                        </ul>
                                    <div class="tab-content m_tabbed_cntnt">                             
                                        <div id="DoctorData" class="tab-pane fade in active">
                                            <div class="col-lg-2">
                                                <div class="form-group">
                                                    <label><span style="color: Red;">*</span>&nbsp;Select Specialties</label>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">                                                    
                                                    <asp:DropDownList ID="DDSpecialties" CssClass="form-control" runat="server"></asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="clearfix"></div>                                        
                                            <div class="col-lg-2">
                                                <div class="form-group">
                                                    <label><span style="color: Red;">*</span>&nbsp;Doctor Name</label>                                                
                                                </div>
                                            </div>                                    
                                            <div class="col-lg-4">
                                                <div class="form-group"> 
                                                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Name"></asp:TextBox>
                                                </div>                                           
                                            </div>
                                            <div class="clearfix"></div>    
                                            <div class="col-lg-2">
                                                <div class="form-group">
                                                    <label><span style="color: Red;">*</span>&nbsp;Doctor Profile</label>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">     
                                                    <input id="ThumbImg1" type="file" runat="server" /><span style="font-size:11px;">Default Image Size <b style="color:Red;">(1366 X 684)px</b></span><br />
                                                </div>                                           
                                            </div>  
                                             <div class="col-lg-4">
                                                <div class="form-group">     
                                                  <asp:Image ID="Image1" runat="server" Height="80" Visible="false" />
                                                </div>                                           
                                            </div>                 
                                            <div class="clearfix"></div>                                           
                                            <div class="col-lg-2">
                                                <div class="form-group">
                                                  <label><span style="color: Red;">*</span>&nbsp;Doctor Email</label>                                                         
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group"> 
                                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Name"></asp:TextBox>
                                                </div>                                           
                                            </div>                                            
                                            <div class="clearfix"></div>
                                             <div class="col-lg-2">
                                                <div class="form-group">
                                                  <label><span style="color: Red;">*</span>&nbsp;Doctor Phone</label>                                                         
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group"> 
                                                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="Name"></asp:TextBox>
                                                </div>                                           
                                            </div>                                           
                                             <div class="clearfix"></div>
                                             <div class="col-lg-2">
                                                <div class="form-group">
                                                  <label><span style="color: Red;">*</span>&nbsp;Gender</label>                                                         
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group"> 
                                                     <asp:DropDownList ID="DDGender" CssClass="form-control" runat="server">
                                                        <asp:ListItem Text="Select Gender" Value="0"></asp:ListItem>
                                                        <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                                                        <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>                                           
                                            </div>
                                              <div class="clearfix"></div>
                                             <div class="col-lg-2">
                                                <div class="form-group">
                                                  <label><span style="color: Red;">*</span>&nbsp;Consultation Fees</label>                                                         
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group"> 
                                                    <asp:TextBox ID="txtDoctorFees" runat="server" CssClass="form-control" placeholder="Fees" onkeypress="return numeralsOnly(event)" Text="0"></asp:TextBox>
                                                </div>                                           
                                            </div>
                                            <div class="clearfix"></div>
                                             <div class="col-lg-2">
                                                <div class="form-group">
                                                  <label><span style="color: Red;">*</span>&nbsp;Doctor Qualification</label>                                                         
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group"> 
                                                    <asp:TextBox ID="txtQualification" runat="server" CssClass="form-control" placeholder="Qualification" TextMode="MultiLine" Height="100"></asp:TextBox>
                                                </div>                                           
                                            </div>
                                            <div class="clearfix"></div>
                                             <div class="col-lg-2">
                                                <div class="form-group">
                                                  <label><span style="color: Red;">*</span>&nbsp;Doctor Experience</label>                                                         
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group"> 
                                                     <asp:TextBox ID="txtExperience" runat="server" CssClass="form-control" placeholder="Experience" TextMode="MultiLine" Height="100"></asp:TextBox>
                                                </div>                                           
                                            </div>                          
                                                <div class="clearfix"></div>
                                             <div class="col-lg-2">
                                                <div class="form-group">
                                                    <label>About Doctor Details</label>                                                
                                                </div>
                                            </div>                                    
                                            <div class="col-lg-8">
                                                <div class="form-group"> 
                                                    <textarea id="textarea1" name="textarea1" style="padding: 0px;" runat="server" class="form-control mnswnvr"></textarea>
                                                </div>                                           
                                            </div>                                        
                                            <div class="clearfix"></div>    
                                            <div class="col-lg-2">
                                                <div class="form-group">
                                                    <label>Status(Active/Inactive)</label>                                                
                                                </div>
                                            </div>
                                            <div class="col-lg-2">
                                                <div class="form-group">                                               
                                                    <asp:CheckBox ID="chkStatus" runat="server" />
                                                </div>                                           
                                            </div> 
                                            <div class="col-lg-2">
                                                <div class="form-group">
                                                    <label><span style="color: Red;">*</span>&nbsp;Display Order</label>                                                
                                                </div>
                                            </div>                                    
                                            <div class="col-lg-2">
                                                <div class="form-group"> 
                                                    <asp:TextBox ID="txtDisplayOrder" MaxLength="3" runat="server"  Width="50" CssClass="form-control" onkeypress="return numeralsOnly(event)" Text="0" placeholder="Display order"></asp:TextBox>
                                                </div>                                           
                                            </div>                               
                                            <div class="clearfix"></div>
                                            <div class="col-lg-2">
                                                <div class="form-group">&nbsp;</div>                                           
                                            </div>
                                            <div class="col-lg-2">
                                                <div class="form-group">
                                                    <span class="btn btn-default trg_next">Next</span>
                                                </div>
                                            </div>
                                            <div class="clearfix"></div> 
                                        </div>
                                        <div id="SEoData" class="tab-pane fade in">
                                            <div class="col-lg-12" style="text-align:center;">
                                                <div class="form-group">
                                                    <hr style="border:1px solid #c9a546" /><b>Only for Seo Purpose (Meta Title, Meta Keywords and Meta Descriptions)</b><hr style="border:1px solid #c9a546" />
                                                </div>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-lg-2">
                                                <div class="form-group">
                                                    <label>&nbsp;Meta Title</label>                                                
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">     
                                                    <asp:TextBox ID="txtMetaTitle" runat="server" CssClass="form-control" Width="650"></asp:TextBox>
                                                </div>                                           
                                            </div> 
                                            <div class="clearfix"></div>
                                            <div class="col-lg-2">
                                                <div class="form-group">
                                                    <label>&nbsp;Meta Keywords</label>                                                
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">     
                                                    <asp:TextBox ID="txtMetaKeywords" runat="server" CssClass="form-control" Width="650"></asp:TextBox>
                                                </div>                                           
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-lg-2">
                                                <div class="form-group">
                                                    <label>&nbsp;Meta Descriptions</label>                                                
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">     
                                                    <asp:TextBox ID="txtMetaDescriptions" runat="server" CssClass="form-control" Width="650" Height="100" TextMode="MultiLine"></asp:TextBox>
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
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <uc2:footer ID="Footer1" runat="server" />
        </div>
    </form>
</body>
</html>
