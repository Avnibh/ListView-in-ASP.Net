<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Gridview.WebForm1" %>

<%@ Register Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI.WebControls" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                <AlternatingItemTemplate>
                    <tr style="background-color: #FFFFFF;color: #284775;">
                        <td>
                            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ageLabel" runat="server" Text='<%# Eval("age") %>' />
                        </td>
                        <td>
                            <asp:Label ID="classLabel" runat="server" Text='<%# Eval("class") %>' />
                        </td>
                        <td>
                            <asp:Label ID="sectionLabel" runat="server" Text='<%# Eval("section") %>' />
                        </td>
                        <td>
                            <asp:Label ID="percentageLabel" runat="server" 
                                Text='<%# Eval("percentage") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color: #999999;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                                Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                Text="Cancel" />
                        </td>
                        <td>
                            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="ageTextBox" runat="server" Text='<%# Bind("age") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="classTextBox" runat="server" Text='<%# Bind("class") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="sectionTextBox" runat="server" Text='<%# Bind("section") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="percentageTextBox" runat="server" 
                                Text='<%# Bind("percentage") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" 
                        style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr>
                            <td>
                                No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                                Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                Text="Clear" />
                        </td>
                        <td>
                            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="ageTextBox" runat="server" Text='<%# Bind("age") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="classTextBox" runat="server" Text='<%# Bind("class") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="sectionTextBox" runat="server" Text='<%# Bind("section") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="percentageTextBox" runat="server" 
                                Text='<%# Bind("percentage") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color: #E0FFFF;color: #333333;">
                        <td>
                            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ageLabel" runat="server" Text='<%# Eval("age") %>' />
                        </td>
                        <td>
                            <asp:Label ID="classLabel" runat="server" Text='<%# Eval("class") %>' />
                        </td>
                        <td>
                            <asp:Label ID="sectionLabel" runat="server" Text='<%# Eval("section") %>' />
                        </td>
                        <td>
                            <asp:Label ID="percentageLabel" runat="server" 
                                Text='<%# Eval("percentage") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table ID="itemPlaceholderContainer" runat="server" border="1" 
                                    style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                        <th runat="server">
                                            name</th>
                                        <th runat="server">
                                            age</th>
                                        <th runat="server">
                                            class</th>
                                        <th runat="server">
                                            section</th>
                                        <th runat="server">
                                            percentage</th>
                                    </tr>
                                    <tr ID="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" 
                                style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color: #E2DED6;font-weight: light;color: #333333; size: 80px;">
                        <td>
                            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ageLabel" runat="server" Text='<%# Eval("age") %>' />
                        </td>
                        <td>
                            <asp:Label ID="classLabel" runat="server" Text='<%# Eval("class") %>' />
                        </td>
                        <td>
                            <asp:Label ID="sectionLabel" runat="server" Text='<%# Eval("section") %>' />
                        </td>
                        <td>
                            <asp:Label ID="percentageLabel" runat="server" 
                                Text='<%# Eval("percentage") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:avniConnectionString %>" 
                SelectCommand="SELECT * FROM [info]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
