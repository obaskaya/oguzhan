<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="loginpage.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <style type="text/css">  
        .auto-style1 {  
            width: 100%;  
        }  
    </style>
</head>
<body>
       <form id="form1" runat="server"> 
           <div>
                <asp:Button ID="Button3" runat="server" Text="Login" PostBackUrl="~/WebForm1.aspx" />
       
            <asp:Button ID="Button4" runat="server" Text="Register" PostBackUrl="~/register.aspx" />
        
            <asp:Button ID="Button5" runat="server" Text="Home" PostBackUrl="~/Home.aspx" />
           </div>
    <div>  
      
        <table class="auto-style1">  
            <tr>  
               
                <td colspan="6" style="text-align: center; vertical-align: top">  
                   </td>
                </tr>
                
               <tr>
                    <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                   </tr>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <hr />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Password"  ></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server"   ></asp:TextBox>
                    <asp:CheckBox ID="CheckBox1" Text="show/hide password" runat="server" AutoPostBack="true"  />
                    <br />
                   
                    <hr />
                         <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />           
                    <br />
                    <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                    </tr>  
          
</table>  
      
    </div>  
          <div>
              <asp:Label ID="Label3" runat="server" Text="Don't have a account? Register now! "></asp:Label>
              <br />
              <asp:Button ID="Button2" runat="server" Text="Register" PostBackUrl="~/register.aspx" />
          </div>
    </form>
</body>
</html>
