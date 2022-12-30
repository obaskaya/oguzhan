<%@ Page Language="C#" Async="true"  EnableViewState="true" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Currency.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
 
    <link href="style.css" rel="stylesheet" type="text/css" />

</head>

<head runat="server">
    
    <title>Döviz/Kur</title>
   
</head>

<body>

    <form id="form1" runat="server">
       
          
           
                    <div class="d-flex justify-content-center" ID="miktar">           
                        
                        <asp:Label ID="Label7" runat ="server" Text="MİKTAR: "></asp:Label>
                    
                    </div> 
        
                    <div class="d-flex justify-content-center" id="miktargirdi"> 
                        
                        <asp:TextBox ID="TextBox1" runat="server" Width="151px" BackColor="#669999"></asp:TextBox>

                    </div>
                    
                    <br />
                    
                    <div class="d-flex justify-content-center" id="seçimlabel">
                        
                        <asp:Label ID="Label8" runat ="server" Text="Döviz Seçiniz: "></asp:Label>

                    </div>

                    <div class="d-flex justify-content-center" id="dövizliste">
                        
                        <asp:DropDownList runat="server" ID="ddlDovizTuru" AutoPostBack="False" EnableViewState="False" Height="39px" OnSelectedIndexChanged="ddlDovizTuru_SelectedIndexChanged" Width="152px" BackColor="#669999">
                        <asp:ListItem Value="1">USD</asp:ListItem>
                        <asp:ListItem Value="2">EURO</asp:ListItem>
                        <asp:ListItem Value="3">GBP</asp:ListItem>
                        </asp:DropDownList>

                    </div>
                        
                    <br />

                    <div class="d-flex justify-content-center"  id="donusturbuton">
                        
                        <asp:Button ID="Button1" runat="server" Font-Size="Large" Text="DÖNÜŞTÜR" Width="248px" OnClick="Button1_Click" BackColor="#99FF99" /> 
                    
                    </div>
           
                    <div class="d-flex justify-content-center" id="sonuclabel">
                        
                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                        <asp:Label ID="Label6" runat="server" Text="Tl = "></asp:Label>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        <asp:Label ID="Label4" runat="server"></asp:Label>
                    
                    </div>
                    
                    <br />
                    
                    <div class="d-flex justify-content-center" id="toplammiktar">
                        
                        <asp:Label ID="Label2" runat="server" Text="Dönüştürülen toplam miktar:"></asp:Label>
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    
                    </div>
                    
                    <br />
                    
                    <div class="d-flex justify-content-center" id="Kurbutonu">
                        
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Kur Durumu:" Width="248px" BackColor="#99FF99" />
                    
                    </div>
        
                    <div class="d-flex justify-content-center" ıd="listbox">
                    
                        <asp:ListBox ID="ListBox1" runat="server" Height="99px" Width="109px" BackColor="#669999"></asp:ListBox>

                    </div>
        
   </form>
</body>
</html>
