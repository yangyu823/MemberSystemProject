<%@ Page Title="" Language="C#" MasterPageFile="~/Control.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="KiandraIT.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



    <style type="text/css">
    .auto-style1 {
        font-size: xx-large;
        text-align: center;
        width: 1195px;
    }
        .auto-style8 {
            color: #FF0000;
        }
    .auto-style10 {
        width: 719px;
        font-size: medium;
        margin-left: 600px;
    }
    .auto-style9 {
        font-size: medium;
    }
    </style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style1">
    <asp:Label ID="LabelDefault" runat="server" Text="Welcome aboard! "></asp:Label>
</p>
<p class="auto-style1">
    <strong>&lt;&lt;Member System Guide&gt;&gt;</strong></p>
    <p class="auto-style10">
        To check name list of all members or individual&#39;s info, please click [<span class="auto-style8"><strong>Name List</strong></span>].</p>
    <p class="auto-style10">
        To check all the member&#39;s info, change or delete the info, please click [<span class="auto-style8"><strong>Member List</strong></span>]. </p>
    <p class="auto-style10">
        To add new member, please click [<span class="auto-style8"><strong>Add New Member</strong></span>]</p>
    <p class="auto-style10">
        <span class="auto-style9">To log out, please click [</span><span class="auto-style8"><strong><span class="auto-style9">Log Out</span></strong></span>]</p>

</asp:Content>
