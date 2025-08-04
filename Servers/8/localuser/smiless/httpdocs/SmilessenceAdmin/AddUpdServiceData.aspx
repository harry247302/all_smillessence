<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddUpdServiceData.aspx.cs" ValidateRequest="false" Inherits="SmilessenceWeb.SmilessenceAdmin.AddUpdServiceData" %>
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
            if (!chkValue(document.getElementById("DdServiceCategory"), 0, "Select Service Category."))
                return false;
            if (!req(document.getElementById("txtServiceName"), "Enter Service Name"))
                return false;
            if (!req(document.getElementById("txtServiceDefaultImage"), "Upload Default Image"))
                return false;
        }

        function pagecheck1() {
            if (!req(document.getElementById("txtServiceName"), "Enter Service Name"))
                return false;
        }

        function numeralsOnly(evt) {
            evt = (evt) ? evt : event;
            var charCode = (evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode : ((evt.which) ? evt.which : 0));
            if (charCode > 31 && (charCode < 48 || charCode > 57) && (charCode != 46)) {
                alert("Enter Digit only in this field!");
                return false;
            }
            return true;
        }

        function validateFileUploadDefault(obj) {
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
                    document.getElementById("txtServiceDefaultImage").value = "";

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
            // display the alert message box according to the flag value        
            if (flag == false) {
                alert('Files with extension ".' + fileExtension.toUpperCase() + '" are not allowed.\n\nYou can upload the files with following extensions only:\n.Jpg\n.jpeg\n.png\n.gif\n.bmp\n');
                document.getElementById("txtServiceDefaultImage").value = "";
                return false;
            }
            else {
                return true;
            }
        }

        function validateFileUploadOther1(obj) {
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
                    document.getElementById("txtServiceOtherImage1").value = "";

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
            // display the alert message box according to the flag value        
            if (flag == false) {
                alert('Files with extension ".' + fileExtension.toUpperCase() + '" are not allowed.\n\nYou can upload the files with following extensions only:\n.Jpg\n.jpeg\n.png\n.gif\n.bmp\n');
                document.getElementById("txtServiceOtherImage1").value = "";
                return false;
            }
            else {
                return true;
            }
        }

        function validateFileUploadOther2(obj) {
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
                    document.getElementById("txtServiceOtherImage2").value = "";

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
            // display the alert message box according to the flag value        
            if (flag == false) {
                alert('Files with extension ".' + fileExtension.toUpperCase() + '" are not allowed.\n\nYou can upload the files with following extensions only:\n.Jpg\n.jpeg\n.png\n.gif\n.bmp\n');
                document.getElementById("txtServiceOtherImage2").value = "";
                return false;
            }
            else {
                return true;
            }
        }

        function validateFileUploadOther3(obj) {
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
                    document.getElementById("txtServiceOtherImage3").value = "";

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
            // display the alert message box according to the flag value        
            if (flag == false) {
                alert('Files with extension ".' + fileExtension.toUpperCase() + '" are not allowed.\n\nYou can upload the files with following extensions only:\n.Jpg\n.jpeg\n.png\n.gif\n.bmp\n');
                document.getElementById("txtServiceOtherImage3").value = "";
                return false;
            }
            else {
                return true;
            }
        }

        function validateFileUploadOther4(obj) {
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
                    document.getElementById("txtServiceOtherImage4").value = "";

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
            // display the alert message box according to the flag value        
            if (flag == false) {
                alert('Files with extension ".' + fileExtension.toUpperCase() + '" are not allowed.\n\nYou can upload the files with following extensions only:\n.Jpg\n.jpeg\n.png\n.gif\n.bmp\n');
                document.getElementById("txtServiceOtherImage4").value = "";
                return false;
            }
            else {
                return true;
            }
        }

        function validateFileUploadOther5(obj) {
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
                    document.getElementById("txtServiceOtherImage5").value = "";

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
            // display the alert message box according to the flag value        
            if (flag == false) {
                alert('Files with extension ".' + fileExtension.toUpperCase() + '" are not allowed.\n\nYou can upload the files with following extensions only:\n.Jpg\n.jpeg\n.png\n.gif\n.bmp\n');
                document.getElementById("txtServiceOtherImage5").value = "";
                return false;
            }
            else {
                return true;
            }
        }

        function validateFileUploadBanner(obj) {
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
                    document.getElementById("txtServiceBannerImage").value = "";

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
            // display the alert message box according to the flag value        
            if (flag == false) {
                alert('Files with extension ".' + fileExtension.toUpperCase() + '" are not allowed.\n\nYou can upload the files with following extensions only:\n.Jpg\n.jpeg\n.png\n.gif\n.bmp\n');
                document.getElementById("txtServiceBannerImage").value = "";
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
                        <h3 class="page-header">Add/Update Service</h3>
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
                                            <li class="active"><a data-toggle="tab" href="#ServiceData">Service Data</a></li>
                                            <li><a data-toggle="tab" href="#SEoData">SEO Data</a></li>
                                        </ul>
                                    <div class="tab-content m_tabbed_cntnt">                             
                                        <div id="ServiceData" class="tab-pane fade in active">
                                            <div style="display:none;">
                                                <div class="col-lg-2">
                                                    <div class="form-group">
                                                        <label><span style="color: Red;">*</span>&nbsp;Select Category</label>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4">
                                                    <div class="form-group">
                                                        <asp:DropDownList ID="DdServiceCategory" runat="server" CssClass="form-control"></asp:DropDownList>
                                                    </div>
                                                </div>
                                            </div>                                      
                                            <div class="col-lg-2">
                                                <div class="form-group">
                                                    <label><span style="color: Red;">*</span>&nbsp;Service Title</label>                                                
                                                </div>
                                            </div>                                    
                                            <div class="col-lg-4">
                                                <div class="form-group"> 
                                                    <asp:TextBox ID="txtServiceName" runat="server" CssClass="form-control" AutoPostBack="true" ontextchanged="txtServiceName_TextChanged"></asp:TextBox>
                                                </div>                                           
                                            </div>
                                            <div class="col-lg-2">
                                                <div class="form-group">
                                                    <label><span style="color: Red;">*</span>&nbsp;Service Title URl</label>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <asp:TextBox ID="txtTitleURL" runat="server" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </div>                    
                                            <div class="clearfix"></div>                                           
                                            <div class="col-lg-2">
                                                <div class="form-group">
                                                  <label><span style="color: Red;">*</span>&nbsp;Default Image</label>                                                         
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">     
                                                    <input id="txtServiceDefaultImage" type="file" runat="server" /><span style="font-size:11px;">Image Size <b style="color:Red;">(334 X 349)px</b></span><br />
                                                </div>                                           
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">     
                                                  <asp:Image ID="ServiceDefaultImageThumb" runat="server" Height="80" Visible="false" />
                                                </div>                                           
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="col-lg-2">
                                                <div class="form-group">
                                                  <label><span style="color: Red;">*</span>&nbsp;Banner Image</label>                                                         
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">     
                                                    <input id="txtServiceBannerImage" type="file" runat="server" /><span style="font-size:11px;">Image Size <b style="color:Red;">(1366 X 401)px</b></span><br />
                                                </div>                                           
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">     
                                                    <asp:Image ID="ServiceBannerImageThumb" runat="server" Height="80" Visible="false" />
                                                </div>                                           
                                            </div> 
                                            <div class="clearfix"></div>
                                            <div class="col-lg-2">
                                                <div class="form-group">
                                                    <label>Upload Icon (Transparent)</label>                                                
                                                </div>
                                            </div>                                    
                                            <div class="col-lg-4">
                                                <div class="form-group"> 
                                                    <input id="txtServiceIconImage" type="file" runat="server" /><span style="font-size:11px;">Icon Size <b style="color:Red;">(75 X 75)px</b></span><br />
                                                </div>                                           
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group"> 
                                                    <asp:Image ID="ServiceIconImageThumb" runat="server" Height="40" Visible="false" />
                                                </div>                                           
                                            </div>                                          
                                            <%--<div class="clearfix"></div>     
                                            <div class="col-lg-2">
                                                <div class="form-group">
                                                    <label>Small Descriptions </label>                                                
                                                </div>
                                            </div>                                    
                                            <div class="col-lg-8">
                                                <div class="form-group"> 
                                                    <asp:TextBox ID="txtServiceSmallDescription" runat="server" TextMode="MultiLine" Height="100" CssClass="form-control"></asp:TextBox>
                                                      <script language="javascript1.2" type="text/javascript">
                                                          generate_wysiwyg('txtServiceSmallDescription');
                                                    </script>
                                                </div>                                           
                                            </div>--%>                                        
                                            <div class="clearfix"></div>  
                                            <div class="col-lg-2">
                                                <div class="form-group">
                                                    <label>Full Descriptions</label>                                                
                                                </div>
                                            </div>
                                            <div class="col-lg-8">
                                                <div class="form-group">
                                                    <textarea id="textarea1" name="textarea1" style="padding:0px;" runat="server"></textarea>
                                                    <script language="javascript1.2" type="text/javascript">
                                                        generate_wysiwyg('textarea1');
                                                    </script>
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
                                                    <label>DIsplay On Menu</label>                                                
                                                </div>
                                            </div>
                                            <div class="col-lg-2">
                                                <div class="form-group">                                               
                                                    <asp:CheckBox ID="chkDisplayOnHome" runat="server" />
                                                </div>                                           
                                            </div> 
                                            <div class="col-lg-2">
                                                <div class="form-group">
                                                    <label><span style="color: Red;">*</span>&nbsp;Display Order</label>                                                
                                                </div>
                                            </div>                                    
                                            <div class="col-lg-2">
                                                <div class="form-group"> 
                                                    <asp:TextBox ID="txtDisplayOrder" Width="50" runat="server" CssClass="form-control" MaxLength="3" onkeypress="return numeralsOnly(event)" Text="0"></asp:TextBox>
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
                                                    <label>&nbsp;Meta Schema</label>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="form-group">
                                                    <asp:TextBox ID="txtMetaSchema" runat="server" CssClass="form-control" Width="650" Height="100" TextMode="MultiLine"></asp:TextBox>
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
