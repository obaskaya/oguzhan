<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Sessions.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="style.css">
    <style type="text/css">
        .auto-style1 {
            width: 203px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">Tuttuğunuz Takım:</td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            <asp:ListItem>Beşiktaş</asp:ListItem>
                            <asp:ListItem>Fenerbahçe</asp:ListItem>
                            <asp:ListItem>Galatasaray</asp:ListItem>
                            <asp:ListItem>Trabzonspor</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Arabanızın Markası:</td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                            <asp:ListItem>BMW</asp:ListItem>
                            <asp:ListItem>Fiat</asp:ListItem>
                            <asp:ListItem>Mercedes</asp:ListItem>
                            <asp:ListItem>Volkswagen</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td align="right" class="auto-style1">
                        <asp:Button ID="Button2" runat="server" Text="Geri" OnClick="Button2_Click" Height="30px" Width="80px" />
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="İleri" Height="30px" Width="80px"/>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
