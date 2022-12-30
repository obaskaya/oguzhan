<%@ Page Language="C#" Async="true"  EnableViewState="true" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Currency.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>İLK SAYFA</title>
    <style type="text/css">
        .auto-style1 {
            height: 51px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
          
            <table>
                <tr>
                    <td>TL MİKTAR: </td>
                    <td> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td class="auto-style1">Dönüşüm: </td>
                    <td class="auto-style1">
                        <asp:DropDownList runat="server" ID="ddlDovizTuru" AutoPostBack="False" EnableViewState="False" Height="20px" OnSelectedIndexChanged="ddlDovizTuru_SelectedIndexChanged" Width="156px">
                        <asp:ListItem Value="1">USD</asp:ListItem>
                        <asp:ListItem Value="2">EURO</asp:ListItem>
                        <asp:ListItem Value="3">GBP</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                     </td>
                </tr>
                <tr>
                    <td colspan="2"><asp:Button ID="Button1" runat="server" Font-Size="Large" Text="DÖNÜŞTÜR" Width="200px" OnClick="Button1_Click" /> </td>
                </tr>
            </table>
            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
&nbsp;<asp:Label ID="Label6" runat="server" Text="Tl = "></asp:Label>
&nbsp;<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            &nbsp;<asp:Label ID="Label4" runat="server"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Dönüştürülen toplam miktar:"></asp:Label>
            &nbsp;<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            <br />
            
        </div>
        <p>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Kur Durumu:" Width="190px" />
        </p>
        <asp:ListBox ID="ListBox1" runat="server" Height="99px" Width="109px"></asp:ListBox>
    </form>
</body>
</html>
