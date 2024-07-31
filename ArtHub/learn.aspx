﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="learn.aspx.cs" Inherits="ArtHub.learn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
            text-align: center;
        }
        .auto-style3 {
            width: 205px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2">Learn ArtWork</td>
            </tr>
            <tr>
                <td class="auto-style3">Name:</td>
                <td>
                    <asp:TextBox ID="name" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Category</td>
                <td>
                    <asp:DropDownList ID="cat" runat="server">
                        <asp:ListItem>-----select----</asp:ListItem>
                        <asp:ListItem>knife painting</asp:ListItem>
                        <asp:ListItem>moon art</asp:ListItem>
                        <asp:ListItem>textile</asp:ListItem>
                        <asp:ListItem>potrait</asp:ListItem>
                        <asp:ListItem>oil painting</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Source:</td>
                <td>
                    <asp:RadioButtonList ID="sou" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>online</asp:ListItem>
                        <asp:ListItem>offline</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Country:</td>
                <td>
                    <asp:TextBox ID="cou" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">State:</td>
                <td>
                    <asp:TextBox ID="sta" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">City:</td>
                <td>
                    <asp:TextBox ID="city" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Phone No.:</td>
                <td>
                    <asp:TextBox ID="pnoo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Description:</td>
                <td>
                    <asp:TextBox ID="desc" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Email:</td>
                <td>
                    <asp:TextBox ID="em" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Button ID="submit" runat="server" OnClick="submit_Click" Text="submit" />
                </td>
            </tr>
        </table>
        <div>
        </div>
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateDeleteButton="True" OnRowDeleting="GridView1_RowDeleting">
        </asp:GridView>
        
    </form>
</body>
</html>
