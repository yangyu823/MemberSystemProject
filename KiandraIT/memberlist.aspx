<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="memberlist.aspx.cs" Inherits="KiandraIT.memberlist" MasterPageFile="~/Control.Master" %>


 <asp:Content ID="Content1" ContentPlaceHolderID ="ContentPlaceHolder1"  runat="server">


        <div class="auto-style2">
            <asp:SqlDataSource ID="SqlDataSourceMemberlist" runat="server" ConnectionString="<%$ ConnectionStrings:MembListConnectionString %>" 
                SelectCommand="SELECT DISTINCT * FROM [Table]"
                DeleteCommand="DELETE FROM [Table] WHERE ID =@ID " 
                UpdateCommand="UPDATE [Table] set Username=@Username, Password=@Password, Fullname=@Fullname, Phone=@Phone, Email=@Email where ID =@ID">
            </asp:SqlDataSource>

&nbsp;&nbsp;&nbsp;
            <asp:GridView ID="GridView1" runat="server" AutoGenerateEditButton="True" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style1" DataKeyNames="ID" DataSourceID="SqlDataSourceMemberlist" ForeColor="#333333" GridLines="None" Height="383px" Width="895px" HorizontalAlign="Center">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </div>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style1 {
        margin-top: 0px;
        text-align: center;
    }
    .auto-style2 {
        height: 468px;
        width: 1757px;
    }
</style>
</asp:Content>

