<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="OnlineStore.Forms.Cart" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <style>
        .frame {
            width: 150px;
            height: 250px;
            border: solid black;
        }
        .container:hover img.frame{
            opacity: 0.3;
        }
        .container:hover .text{
            opacity: 1;
        }
        .container{
            width:100%;
            height:100%;
            position:relative;
        }
        .container .text {
            transition: .5s ease;
            opacity: 0;

            position: absolute;
            top: 80%;
            left: 50%;
            transform: translate(-50%, -50%);
        
            height:45px;
            width:45px;
        }



        .button {
            display: inline-block;
            border-radius: 4px;
            background-color: #f4511e;
            border: none;
            color: #FFFFFF;
            text-align: center;
            font-size: 28px;
            padding: 20px;
            width: 200px;
            transition: all 0.5s;
            cursor: pointer;
            margin: 5px;
            
            vertical-align:middle;

            position:relative;
            bottom:0px;
            left:50%;
            transform: translate(-50%, -50%);
        }

        .button span {
            cursor: pointer;
            display: inline-block;
            position: relative;
            transition: 0.5s;
        }

        .button span:after {
            content: '\00bb';
            position: absolute;
            opacity: 0;
            top: 0;
            right: -20px;
            transition: 0.5s;
        }

        .button:hover span {
            padding-right: 25px;
        }

        .button:hover span:after {
            opacity: 1;
            right: 0;
        }
    </style>

    <asp:ListView ID="ListView" runat="server" GroupItemCount="4">

        <EmptyDataTemplate><table><tr ><td>No items in cart</td> </tr></table></EmptyDataTemplate>

        <GroupTemplate><tr id="itemPlaceholderContainer" runat="server" style="float:left;"><td id="itemPlaceholder" runat="server" ></td></tr></GroupTemplate>

        <ItemTemplate>
            
            <td runat="server">
                <table style="text-align: center;">
                    <tr><td class="container">
                        <img class="frame" src="../Images/Items/<%# Eval("ID") %>.png" />
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/RemoveFromCart.png" CssClass="text" OnClick="SrvButton_Click" CommandArgument='<%# Eval("ID")%>'/>
                        
                        </td></tr>
                    <tr><td><asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Title") %>' /></td></tr>
                    <tr><td><asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price")%>' />EGP</td></tr>
                    <tr><td>&nbsp</td></tr>
                </table>
            </td>
        </ItemTemplate>

        <LayoutTemplate><table id="groupPlaceholderContainer" runat="server" style=" padding-bottom:100px;"><tr id="groupPlaceholder"></tr></table></LayoutTemplate>
    </asp:ListView>

    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="button"><span>Checkout </span></asp:LinkButton>
    

</asp:Content>
