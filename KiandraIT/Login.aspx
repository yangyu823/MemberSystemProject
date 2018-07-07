<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="KiandraIT.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


        .auto-style1 {
            font-size: xx-large;
            text-align: center;
        }
        .auto-style2 {
            height: 256px;
            width: 643px;
            margin-left: 229px;
        }
        .auto-style3 {
            height: 63px;
        }
        .auto-style4 {
            height: 63px;
            width: 107px;
            text-align: right;
            font-size: large;
        }
        .auto-style5 {
            width: 107px;
            text-align: right;
        }
        .auto-style6 {
            width: 107px;
            text-align: right;
            font-size: large;
        }
        .auto-style7 {
            height: 63px;
            width: 230px;
        }
        .auto-style8 {
            width: 230px;
            text-align: left;
        }
        body {
            background-image: url("bg.jpg");
            background-repeat: no-repeat;
            background-size: cover;
        }


        .auto-style10 {
            text-align: right;
        }


        .auto-style9 {}


        .auto-style11 {
            font-size: medium;
            text-align: right;
            color: #FF0000;
            font-weight: 700;

        }


    </style>
</head>
<body>
       
    <form id="form1" runat="server">
        <div class="auto-style10">
            <br />
            <asp:Image ID="Image1" runat="server" ImageUrl="~/kiandrait.png" CssClass="auto-style9" Height="175px" Width="175px" />
            <br />
            <br />
        </div>
        <div class="auto-style1">
            <strong>Login Page<br />
            <br />
            </strong>
        </div>
        <table align="center" class="auto-style2">
            <tr>
                <td class="auto-style4">User Name</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBoxInputUN" runat="server" OnTextChanged="TextBox1_TextChanged" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxInputUN" ErrorMessage="Please Enter Your User Name!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Password</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBoxInputPW" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxInputPW" ErrorMessage="Please Enter Your Password!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style8">&nbsp;<asp:Button ID="ButtonLogin" runat="server" OnClick="ButtonLogin_Click" Text="Login" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="ButtonReset" runat="server" OnClick="ButtonReset_Click" Text="Reset" CausesValidation="False" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
