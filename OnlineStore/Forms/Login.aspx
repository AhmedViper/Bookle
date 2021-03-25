<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlineStore.Forms.User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

        <style>
            .Form{
                background-color: cornflowerblue;
                text-align:center;
            }

            .btn {
              display: inline-block;

              padding: 8px 25px;
              font-size: 16px;

              cursor: pointer;
              text-align: center;
              text-decoration: none;
              outline: none;
              color: #fff;
              background-color: #4CAF50;
              border: none;
              border-radius: 15px;
              box-shadow: 0 9px #999;
            }

            .btn:hover {background-color: #3e8e41}

            .btn:active {
              background-color: #3e8e41;
              box-shadow: 0 5px #666;
              transform: translateY(4px);
            }

        </style>

        <div class="Form">
            <p>Email Address</p>
          
            <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="Email" placeholder="example_email@website.com" AutoPostBack="True" Height="20px" OnTextChanged="OnTextChange" ValidationGroup="Group1" Width="40%"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="This field is required" Display="Dynamic" Font-Bold="False" ForeColor="Red" ValidationGroup="Group1"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid email address" ControlToValidate="TextBox1" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" Font-Bold="False" ForeColor="Red" ValidationGroup="Group1"></asp:RegularExpressionValidator>
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
      
            <p>Password</p>
            <asp:TextBox ID="TextBox2" runat="server" AutoCompleteType="Disabled" TextMode="Password" Height="20px" ValidationGroup="Group2" Width="40%"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="This field is required" Display="Dynamic" Font-Bold="False" ForeColor="Red" ValidationGroup="Group2"></asp:RequiredFieldValidator>

            <br />
            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" CssClass="btn" />
        </div>
</asp:Content>

