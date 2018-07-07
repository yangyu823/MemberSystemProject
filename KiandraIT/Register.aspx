<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="KiandraIT.Register" MasterPageFile="~/Control.Master" %>


 <asp:Content ID="Content1" ContentPlaceHolderID ="ContentPlaceHolder1"  runat="server">


        <div>
            <div class="auto-style1">
            <br />
                <strong><span class="auto-style9">Registration Page</span></strong><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            </div>
            <table style="height: 310px; width: 872px; margin: 0px auto 0px 584px;">
                <tr>
                    <td class="auto-style2">User Name:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBoxUN" runat="server" Width="300px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUN" ErrorMessage="User name can not be empty!" ForeColor="Red" ></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Password:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBoxPW" runat="server" TextMode="Password" Width="300px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPW" ErrorMessage="Password can not be empty!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Confirm Password:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBoxCPW" runat="server" TextMode="Password" Width="300px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxCPW" ErrorMessage="Confirm Password can not be empty!" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPW" ControlToValidate="TextBoxCPW" ErrorMessage="Password is not same!" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Full Name:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBoxFN" runat="server" Width="300px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxFN" ErrorMessage="Full name is required!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Phone:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBoxPhone" runat="server" Width="300px"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxPhone" ErrorMessage="Phone number is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Email:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBoxEmail" runat="server" Width="300px"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Email address is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="You must provde valid Email address!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="61px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Reset" OnClick="Button2_Click" CausesValidation="False" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: right;
        }
        .auto-style3 {
            text-align: left;
            width: 311px;
        }
    </style>
</asp:Content>
