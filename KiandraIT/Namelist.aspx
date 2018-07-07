<%@ Page Title="" Language="C#" MasterPageFile="~/Control.Master" AutoEventWireup="true" CodeBehind="Namelist.aspx.cs" Inherits="KiandraIT.Namelist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            margin-right:0px;
            color: #FF0000;
            width: 631px;
            margin-top: 0px;
        }
        .auto-style7 {
            text-align: center;
            margin-left: 0px;
        }
        .auto-style8 {
            text-align: center;
            color: #0066FF;
        }
        .auto-style9 {
            color: #0000FF;
        }
        .auto-style10 {
            color: #0000FF;
        }
        .auto-style11 {
            text-align: left;
            color: #000000;
            margin-left: 103px;
        }
        .auto-style12 {
            color: #999999;
        }
        .auto-style13 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="font-family:Arial; text-align: center; width: 1100px;">
        <tr>
            <td style="height:500px; width: 35%">
                <div class="auto-style13">
                    <div class="auto-style6" >
                        <strong class="auto-style9">Member List&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
                        </strong>
                        <span class="auto-style12">----------------------------------------</span></div>
                    <asp:SqlDataSource ID="SqlDataSourceNamelist" runat="server" ConnectionString="<%$ ConnectionStrings:MembListConnectionString %>" SelectCommand="SELECT [ID], [Username] FROM [Table]"></asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="auto-style7" DataSourceID="SqlDataSourceNamelist" Width="199px" HorizontalAlign="Right" DataKeyNames="ID" Height="260px">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" InsertVisible="False" ReadOnly="True" />
                            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                        </Columns>
                    </asp:GridView>
                    <br />
                </div>

            </td>
            <td class="height:500px; width: 65%">  
                <div class="auto-style8">
                    <strong class="auto-style10">Member Detail<br />
                    <span class="auto-style12">------------------------------------------------------------------<br />
                    <br />
                    </span>
                    <br />
                    <asp:FormView ID="FormView1" runat="server" CellPadding="10" CssClass="auto-style11" DataKeyNames="ID" DataSourceID="SqlDataSourceDetail" Height="120px" HorizontalAlign="Center" Width="304px">
                        <EditItemTemplate>
                            ID:
                            <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                            <br />
                            FullName:
                            <asp:TextBox ID="FullNameTextBox" runat="server" Text='<%# Bind("FullName") %>' />
                            <br />
                            Username:
                            <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                            <br />
                            Password:
                            <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                            <br />
                            Phone:
                            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                            <br />
                            Email:
                            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            FullName:
                            <asp:TextBox ID="FullNameTextBox" runat="server" Text='<%# Bind("FullName") %>' />
                            <br />
                            Username:
                            <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                            <br />
                            Password:
                            <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                            <br />
                            Phone:
                            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                            <br />
                            Email:
                            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            ID:
                            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                            <br />
                            <br />
                            FullName:
                            <asp:Label ID="FullNameLabel" runat="server" Text='<%# Bind("FullName") %>' />
                            <br />
                            <br />
                            Username:
                            <asp:Label ID="UsernameLabel" runat="server" Text='<%# Bind("Username") %>' />
                            <br />
                            <br />
                            Password:
                            <asp:Label ID="PasswordLabel" runat="server" Text='<%# Bind("Password") %>' />
                            <br />
                            <br />
                            Phone:
                            <asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' />
                            <br />
                            <br />
                            Email:
                            <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
                            <br />

                        </ItemTemplate>
                    </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSourceDetail" runat="server" ConnectionString="<%$ ConnectionStrings:MembListConnectionString %>" SelectCommand="SELECT [ID], [FullName], [Username], [Password], [Phone], [Email] FROM [Table] WHERE ([ID] = @ID)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="ID" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    </strong>

                </div>

            </td>

        </tr>

    </table>
    </asp:Content>
