<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="loginpage.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:Button ID="Button1" runat="server" Text="Login" PostBackUrl="~/WebForm1.aspx" />
       
            <asp:Button ID="Button2" runat="server" Text="Register" PostBackUrl="~/register.aspx" />
        
            <asp:Button ID="Button3" runat="server" Text="Home" PostBackUrl="~/Home.aspx" />
        </div>
        <hr />
        <div>
            <asp:Label ID="Label1" runat="server" Text="Name: "></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <hr />
            </div>
        
        <div>
            <asp:Label ID="Label3" runat="server" Text="Surname: "></asp:Label>
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            <hr />
        </div>
        <div>
            <asp:Label ID="Label5" runat="server" Text="Age: "></asp:Label>
            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            <hr />
        </div>
        <div>
            <asp:Label ID="Label7" runat="server" Text="Register Date: "></asp:Label>
            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
            <hr />
        </div>
    </form>
</body>
</html>
