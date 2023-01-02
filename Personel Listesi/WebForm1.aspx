<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Personel_Listesi.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
              <div>
        <asp:DataList ID="DataList1"  align="center" runat="server" CellPadding="4" DataKeyField="personelID" DataSourceID="SqlDataSource1" ForeColor="#333333" Width="686px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" CaptionAlign="Left">
            <AlternatingItemStyle BackColor="White" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderTemplate>
                PERSONEL LİSTESİ
            </HeaderTemplate>
            <ItemStyle BackColor="#EFF3FB" />
            <ItemTemplate>
                &nbsp;<table style="width: 89%; height: 209px;">
                    <tr>
                        <td class="auto-style1" rowspan="11">
                            <img alt="" src="NewFolder1/<%# Eval("RESIM") %>" width="150" />
                            <strong>No</strong>:
                            <asp:Label ID="personelIDLabel" runat="server" Text='<%# Eval("personelID") %>' />
                        </td>
                        <td class="auto-style2"><strong>Tc Kimlik</strong>&nbsp; </td>
                        <td>
                            <asp:Label ID="TCKIMLIKNOLabel" runat="server" Text='<%# Eval("TCKIMLIKNO", "{0}") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2"><strong>Adı</strong></td>
                        <td>
                            <asp:Label ID="ADILabel" runat="server" Text='<%# Eval("ADI") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2"><strong>Soyadı</strong> </td>
                        <td>
                            <asp:Label ID="SOYADILabel" runat="server" Text='<%# Eval("SOYADI") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2"><strong>Telefon</strong> </td>
                        <td>
                            <asp:Label ID="TELEFONLabel" runat="server" Text='<%# Eval("TELEFON") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2"><strong>Maaş</strong></td>
                        <td>
                            <asp:Label ID="MAASLabel" runat="server" Text='<%# Eval("MAAS") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2"><strong>Semt</strong></td>
                        <td>
                            <asp:Label ID="SEMTLabel" runat="server" Text='<%# Eval("SEMT") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2"><strong>Şehir</strong>&nbsp;</td>
                        <td>
                            <asp:Label ID="SEHIRLabel" runat="server" Text='<%# Eval("SEHİR") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3"><strong>Giriş Tarihi</strong></td>
                        <td class="auto-style4">
                            <asp:Label ID="GIRISTARIHILabel" runat="server" Text='<%# Eval("GIRISTARIHI") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2"><strong>Çıkış Tarihi</strong>&nbsp;</td>
                        <td>
                            <asp:Label ID="CIKISTARIHILabel" runat="server" Text='<%# Eval("CIKISTARIHI") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2"><strong>E-posta</strong></td>
                        <td style="margin-left: 80px">
                            <asp:Label ID="EMAILLabel" runat="server" Text='<%# Eval("EMAIL") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2"><strong>Adres</strong></td>
                        <td style="margin-left: 80px">
                            <asp:Label ID="ADRESLabel" runat="server" Text='<%# Eval("ADRES") %>' />
                        </td>
                    </tr>
                </table>
                <br />
                </ItemTemplate>
            <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList> 
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eticaretConnectionString %>" SelectCommand="SELECT [PersonelID], [ADI], [SOYADI], [TELEFON], [TCKIMLIKNO], [MAAS], [ADRES], [SEMT], [SEHİR], [GIRISTARIHI], [CIKISTARIHI], [EMAIL], [RESIM] FROM [tblPersonell]"></asp:SqlDataSource>
   
                   </div>
                  </form>
</body>
</html>
            
             
