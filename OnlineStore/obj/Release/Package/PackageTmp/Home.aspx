<%@ Page Title="Bookle" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="OnlineStore.Forms.Home" EnableEventValidation="false"  %>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <style>

        img.frame{
            width: 150px;
            height:250px; 
            border: solid;
        }

        .container:hover img.frame{
            opacity: 0.3;
        }
        .container:hover .text{
            opacity: 1;
        }
        .container .text {
            transition: .5s ease;
            opacity: 0;

            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        
            height:45px;
            width:45px;

        }
        .container
        {
            width:100%;
            height:100%;
        }
    </style>

        
    <asp:ListView ID="ListView" runat="server" GroupItemCount="3">
        
        <EmptyDataTemplate>
            <table><tr><td>No data was returned.</td></tr></table>
        </EmptyDataTemplate>

        <GroupTemplate>
            <tr id="itemPlaceholderContainer" runat="server"><td id="itemPlaceholder" runat="server"></td></tr>
        </GroupTemplate>

        <ItemTemplate>
            <td style="height:100%;"><table style="text-align:center; width:100%; height:100%; position: relative;">
                <tr>
                    <td class="container">
                        <img class="frame" src="Images/Items/<%# Eval("ID") %>.png"/>
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="Images/add2cart.png" CssClass="text" OnClick="srvButton_Click" CommandArgument='<%# Eval("ID")%>'/>
 
                    </td>
                </tr>


                <tr><td><asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Title") %>' /></td></tr>
                <tr><td><asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price")%>' /> EGP</td></tr>
                <tr><td>&nbsp;</td></tr>
                <tr><td>&nbsp;</td></tr>
                <tr><td>&nbsp;</td></tr>
                <tr><td>&nbsp;</td></tr>
                <tr><td>&nbsp;</td></tr>
            </table>

            </td>
        </ItemTemplate>
                
        <LayoutTemplate>
            <table id="groupPlaceholderContainer" runat="server" style="width:100%;"><tr id="groupPlaceholder"></tr></table>
        </LayoutTemplate>
    </asp:ListView>
</asp:Content>