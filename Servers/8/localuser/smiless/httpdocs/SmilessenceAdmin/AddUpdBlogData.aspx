<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddUpdBlogData.aspx.cs" ValidateRequest="false" Inherits="SmilessenceWeb.SmilessenceAdmin.AddUpdBlogData" %>
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
     <script language="JavaScript" type="text/javascript" src="/SmilessenceAdmin/Js/wysiwyg.js"></script>
    <link href='http://fonts.googleapis.com/css?family=PT+Sans+Caption' rel='stylesheet' type='text/css'>
    <script src="/SmilessenceAdmin/Js/Validation.js" language="javascript" type="text/javascript"></script>
    <script language="JavaScript" type="text/javascript">
        function pagecheck() {
            if (!req(document.getElementById("txtBlogTitle"), "Please enter blog title"))
                return false;
            if (!req(document.getElementById("txtTitleURL"), "Please enter blog link"))
                return false;
            if (!req(document.getElementById("ThumbImg1"), "Choose small image to upload."))
                return false;
            if (!req(document.getElementById("LargeImg1"), "Choose banner image to upload."))
                return false;
        }

        function pagecheck1() {
            if (!req(document.getElementById("txtBlogTitle"), "Please enter blog title"))
                return false;
            if (!req(document.getElementById("txtTitleURL"), "Please enter blog link"))
                return false;
        }
    </script>
    <script language="JavaScript" type="text/javascript">
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
    <script language="JavaScript" type="text/javascript">
        function validateFileUploadL(obj) {
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
                    document.getElementById("LargeImg1").value = "";
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
                document.getElementById("LargeImg1").value = "";
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
                            <h3 class="page-header">Add/Update Blog Data </h3>
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
                                    <div class="col-lg-3">
                                        <div class="form-group">
                                            <label><span style="color: Red;">*</span>&nbsp;Blog Title</label>
                                        </div>
                                    </div>
                                    <div class="col-lg-9">
                                        <div class="form-group">
                                            <asp:TextBox ID="txtBlogTitle" runat="server" CssClass="form-control" onkeyup="LimtCharacters(this,100,'LabelCHaracterLimit');" ontextchanged="txtTitle_TextChanged" AutoPostBack="true"></asp:TextBox>
                                            <label id="LabelCHaracterLimit" style="float:right; text-align:right; width:3%; font-size:13px;">100</label><span style="font-size:13px; float:right; text-align:right;">Characters Left : </span>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="col-lg-3">
                                        <div class="form-group">
                                            <label><span style="color: Red;">*</span>&nbsp;Blog Title Url</label>
                                        </div>
                                    </div>
                                    <div class="col-lg-9">
                                        <div class="form-group">
                                            <asp:TextBox ID="txtTitleURL" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="col-lg-3">
                                        <div class="form-group">
                                            <label><span style="color: Red;">*</span>&nbsp;Small Image</label>
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="form-group">
                                            <input id="ThumbImg1" type="file" runat="server" /><span style="font-size:11px;">(Image Size 440px X 350px)</span>
                                        </div>
                                    </div>
                                    <div class="col-lg-5">
                                        <div class="form-group">
                                            <asp:Image ID="Image1" runat="server" Height="80" />
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="col-lg-3">
                                        <div class="form-group">
                                            <label><span style="color: Red;">*</span>&nbsp;Large Image</label>
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="form-group">
                                            <input id="LargeImg1" type="file" runat="server" /><span style="font-size:11px;">(Image Size 1366px X 400px)</span>
                                        </div>
                                    </div>
                                    <div class="col-lg-5">
                                        <div class="form-group">
                                            <asp:Image ID="Image2" runat="server" Height="120" />
                                        </div>
                                    </div>                                    
                                    <div class="clearfix"></div>
                                    <div class="col-lg-3">
                                        <div class="form-group">
                                            <label>&nbsp;Blog Content</label>
                                        </div>
                                    </div>
                                    <div class="col-lg-9">
                                        <div class="form-group">
                                            <textarea id="textarea1" name="textarea1" style="padding:0px;" runat="server"></textarea>
                                            <script language="javascript1.2" type="text/javascript">
                                                generate_wysiwyg('textarea1');
                                            </script>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                        <div class="col-lg-12" style="text-align:center;">
                                            <div class="form-group">
                                                <hr style="border:1px solid #c9a546" /><b>Only for Seo Purpose (Meta Title, Meta Keywords and Meta Descriptions)</b><hr style="border:1px solid #c9a546" />
                                            </div>
                                        </div>
                                        <div class="clearfix"></div>
                                    <div class="col-lg-3">
                                        <div class="form-group">
                                            <label>&nbsp;Meta Title</label>
                                        </div>
                                    </div>
                                    <div class="col-lg-9">
                                        <div class="form-group">
                                            <asp:TextBox ID="txtMetaTitle" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="col-lg-3">
                                        <div class="form-group">
                                            <label>&nbsp;Meta Keywords</label>
                                        </div>
                                    </div>
                                    <div class="col-lg-9">
                                        <div class="form-group">
                                            <asp:TextBox ID="txtMetaKeywords" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="col-lg-3">
                                        <div class="form-group">
                                            <label>&nbsp;Meta Descriptions</label>
                                        </div>
                                    </div>
                                    <div class="col-lg-9">
                                        <div class="form-group">
                                            <asp:TextBox ID="txtMetaDescriptions" runat="server" CssClass="form-control" Height="100" TextMode="MultiLine"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="col-lg-3">
                                        <div class="form-group">
                                            <label>&nbsp;Meta Schema</label>
                                        </div>
                                    </div>
                                    <div class="col-lg-9">
                                        <div class="form-group">
                                            <asp:TextBox ID="txtMetaSchema" runat="server" CssClass="form-control" Height="100" TextMode="MultiLine"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="col-lg-3">
                                        <div class="form-group">
                                            <label>Status(Active/Inactive)</label>
                                        </div>
                                    </div>
                                    <div class="col-lg-9">
                                        <div class="form-group">
                                            <asp:CheckBox ID="chkStatus" runat="server" />
                                        </div>
                                    </div>
                                    <div style="display:none;">
                                        <div class="col-lg-2">
                                            <div class="form-group">
                                                <label><span style="color: Red;">*</span>&nbsp;Blog Category</label>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <asp:DropDownList ID="DdBlogCategory" runat="server" CssClass="form-control"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="clearfix"></div>
                                        <div class="col-lg-2">
                                            <div class="form-group">
                                                <label><span style="color: Red;">*</span>&nbsp;Small Description </label>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <asp:TextBox ID="txtBlogSmallDesc" runat="server" CssClass="form-control" TextMode="MultiLine" Height="100" Width="650"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="clearfix"></div>
                                        <div class="col-lg-2">
                                            <div class="form-group">
                                                <label>Display On Footer</label>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <asp:CheckBox ID="chekDisplayOnFooter" runat="server" />
                                            </div>
                                        </div>
                                    </div>                                    
                                    <div class="clearfix"></div>
                                    <div class="col-lg-3">
                                        <div class="form-group">
                                            <label>&nbsp;</label>
                                        </div>
                                    </div>
                                    <div class="col-lg-9">
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
        <script type="text/javascript">
            function LimtCharacters(txtMsg, CharLength, indicator) {
                chars = txtMsg.value.length;
                document.getElementById(indicator).innerHTML = CharLength - chars;
                if (chars > CharLength) {
                    txtMsg.value = txtMsg.value.substring(0, CharLength);
                }
            }
    </script>
    </form>
</body>
</html>
