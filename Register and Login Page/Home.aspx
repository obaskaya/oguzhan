<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="loginpage.Home" %>

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
        
            
        
        <p align="right">
           <asp:Button ID="Button4" runat="server" Text="Profile" PostBackUrl="~/Profile.aspx" visible="false"/>
        </p>
            <p ıd="explanation">
                This site was made to create a login system for any site by directing it to the register or login pages from the home page. There are Login Register and Profile tabs in the site. 
                <br /> This site has used MsSql as DataBase, so the data is saved in the Sql server Table.
                <br />When a new user is created, it is registered to the server and the information can be viewed on the profile page.
                <br />Designed as a functional site, the aesthetic is ignored.
            </p>
        </div>
    </form>
</body>
</html>
