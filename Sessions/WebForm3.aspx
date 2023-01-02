<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="Sessions.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListBox ID="ListBox1" runat="server" Height="125px" Width="138px">
            </asp:ListBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="&lt;--" Height="48px" Width="64px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="--&gt;" Height="47px" Width="63px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ListBox ID="ListBox2" runat="server" Height="120px" Width="139px"></asp:ListBox>
            <br />
            Toplam Fiyat:
            <asp:Label ID="Label1" runat="server" Font-Bold="True">0</asp:Label>
            <br />
            <asp:Button ID="Button3" runat="server" Text="Geri" OnClick="Button3_Click" Height="30px" Width="80px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" Text="İleri" OnClick="Button4_Click" Height="30px" Width="80px" />
        </div>
    </form>
</body>
</html>
