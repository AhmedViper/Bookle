<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="OnlineStore.Forms.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

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

            .btn:hover {
                background-color: #3e8e41
            }

            .btn:active {
              background-color: #3e8e41;
              box-shadow: 0 5px #666;
              transform: translateY(4px);
            }

        </style>

        <div class="Form">
      
            <table style="text-align:left; width:50%; min-width:250px; max-width:500px; height:200px; margin:0 auto 25px auto"> 

                <tr><td colspan="2" style="text-align:center;">Email</td></tr>
                <tr><td colspan="2" style="height:40px;" >
                    <asp:TextBox style="width:91%; height: 20px; margin:0px; padding:0px;" ID="TextBox1" runat="server" AutoCompleteType="Email" placeholder="example_email@website.com"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="This field is required" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
               
                    <div style="text-align:center; width:100%; height:50%; margin:0px; padding:0px;">   
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid email address" ControlToValidate="TextBox1" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                    <asp:Label ID="Label1" runat="server" Text="Email already registered" Visible="False" ForeColor="Red"></asp:Label>
                    </div>
                    </td>
                </tr>
                <tr style="text-align:center;"><td colspan="2" >Password</td></tr>
                <tr><td colspan="2">
                        <asp:TextBox style="width:91%; height: 100%;" ID="TextBox2" runat="server" AutoCompleteType="Disabled" TextMode="Password" Height="20px" Width="40%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter password" Display="Dynamic" ForeColor="Red" >*</asp:RequiredFieldValidator>

                </td></tr>

                <tr style="text-align:center;">
                    <td colspan="2">Confirm Password</td>
                </tr>

                <tr>
                    <td colspan="2">
                        <asp:TextBox style="width:91%; height: 100%;" ID="TextBox3" runat="server" AutoCompleteType="Disabled" TextMode="Password" Height="20px" Width="40%"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ForeColor="Red">*</asp:CompareValidator>
                    </td>
                </tr>

                <tr>
                    <td>First Name:</td>
                    <td style="width:60%;"><asp:TextBox ID="TextBox4" runat="server" Style="width:85%; height:100%;"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                    
                <tr>
                    <td>Second Name:</td>
                    <td style="width:60%;">
                    <asp:TextBox ID="TextBox5" runat="server" Style="width:85%; height:100%;"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Age
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        Gender
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server"> <asp:ListItem>Male</asp:ListItem><asp:ListItem>Female</asp:ListItem></asp:DropDownList>
                    </td>
                </tr>
                </table>
                  
            <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" CssClass="btn" />
        </div>
</asp:Content>

