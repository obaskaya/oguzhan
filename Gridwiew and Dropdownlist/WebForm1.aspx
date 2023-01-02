<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Gridwiew_and_Dropdownlist.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style rel="stylesheet" type="text/css" >
      body { 
          background-color: cornsilk;
        
       }
    </style>
</head>
<body>
    <form id="form1" runat="server">
             <div id="gridview"> 
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" CellPadding="4" AutoGenerateEditButton="true"
                ForeColor="#333333" GridLines="Horizontal" Width="530px" AllowPaging="True" AllowSorting="True" PageSize="6">
                <Columns>
                    <asp:BoundField DataField="BusinessEntityID" Visible="False" />
                    <asp:BoundField DataField="Title" />
                    <asp:BoundField DataField="FirstName" HeaderText="Ad" />
                    <asp:BoundField DataField="MiddleName" HeaderText="Kısa Ad" NullDisplayText="-----"/>
                    <asp:BoundField DataField="LastName" HeaderText="Soyad" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center"/>
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
                <AlternatingRowStyle BackColor="White" />
                <pagersettings mode="NumericFirstLast" firstpagetext="First" lastpagetext="Last" pagebuttoncount="5" position="Bottom"/> 
            </asp:GridView>
            </div>
            <div id="datasource1">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:AdventureWorks2019ConnectionString %>" 
                    SelectCommand="SELECT [BusinessEntityID], [Title], [FirstName], [MiddleName], [LastName] FROM [Person].[Person] WHERE BusinessEntityID<25">
                    </asp:SqlDataSource>

            </div>
        
            <div id="dropdown">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Sehir" DataValueField="SehirID" Height="26px" Width="185px">
                    </asp:DropDownList>

            </div>
            <div id="datasource2">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:eticaretConnectionString %>" 
                    SelectCommand="SELECT [SehirID], [Sehir] FROM [sehirler]">
                    </asp:SqlDataSource>

             </div>
        
       
    </form>
</body>
</html>
