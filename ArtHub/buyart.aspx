<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="buyart.aspx.cs" Inherits="ArtHub.buyart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:DataList ID="dlart" runat="server">
                <ItemTemplate>
                    <table>
                        <tr>
                            
                            <td><asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Upload_img") %>' Height="150px" Width="150px" /></td>
                        </tr>
                        <tr>
                            <td>ID:</td>
                            <td><asp:Label ID="id" runat="server" Text='<%# Eval("Id") %>'></asp:Label></td>
                        </tr>
                        <tr>
                            <td>ARTIST NAME:</td>
                            <td><asp:Label ID="Label1" runat="server" Text='<%# Eval("Artist_name") %>'></asp:Label></td>
                        </tr>
                        <tr>
                            <td>ART DESCRIPTION:</td>
                            <td><asp:Label ID="Label2" runat="server" Text='<%# Eval("Art_Description") %>'></asp:Label></td>
                        </tr>
                        <%--<tr>
                            <td>ART PRICE:</td>
                            <td><asp:Label ID="Label3" runat="server" Text='<%# Eval("Art_Price") %>'></asp:Label></td>
                        </tr>--%>
                        <tr>
                            <td>EMAIL ADDRESS:</td>
                            <td><asp:Label ID="Label4" runat="server" Text='<%# Eval("EmailAddress") %>'></asp:Label></td>
                        </tr>
                        <tr>
                            <td><asp:Button ID="Button1" runat="server" Text="BUY" />
                                <asp:Button ID="Button2" runat="server" Text="WISHLIST" /></td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            
        </div>
 </form>
</body>
</html>
