<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Sessions.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="style.css">
    <style type="text/css">
        .auto-style1 {
            width: 1281px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div id="divs">
            <table style="width:100%;">
                <tr>
                    <td>Ad:</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Soyad:</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Doğum Tarihi:</td>
                    <td class="auto-style1">
                        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td>Doğum Yeri:</td>
                    <td class="auto-style1">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem Value="0">Bir değer seçiniz</asp:ListItem>
                            <asp:ListItem Value="Ankara">Ankara</asp:ListItem>
                            <asp:ListItem Value="İstanbul">İstanbul</asp:ListItem>
                            <asp:ListItem Value="İzmir">İzmir</asp:ListItem>
                            <asp:ListItem Value="Tekirdağ">Tekirdağ</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>e-mail:</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Cep Tel:</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td class="auto-style1">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="İleri" Height="30px" Width="80px"/>
                    </td>
                </tr>
            </table>
            <br />
        </div>
    </form>
</body>
</html>
