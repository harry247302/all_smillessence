<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewMessage.aspx.cs" Inherits="SmilessenceWeb.SmilessenceAdmin.ViewMessage" %>
<!DOCTYPE html>

<html>
<head id="Head1" runat="server">
    <title>View Details Smilessence</title>
</head>
<body">
    <form id="form1" runat="server">
    <div>
        <table width="640" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td align="center" valign="top">
                    <table border="0" cellspacing="0" cellpadding="0" align="center" style="font-family:Arial;">
                        <tr><td colspan="4" align="left"></td></tr>
                        <tr><td colspan="4" align="left"></td></tr>
                        <tr>
                            <td align="center" background="images/content-middlebg.jpg" colspan="2">
                                <table width="640" border="0" cellspacing="0" cellpadding="4">
                                    <tr>
                                        <td bgcolor="#faf9f8" style="padding:15px 20px;">
                                            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
