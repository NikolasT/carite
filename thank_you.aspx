﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="thank_you.aspx.cs" Inherits="Default2" Theme="main"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Carite | Thank You</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderHeader" Runat="Server">
    <div class="col2 left">
        <p class="initial_title" style="padding:0px 25px;">THANK YOU FOR YOUR ORDER!</p>
    </div>
    <div class="col2 right">    
        <ul class="bullet">
            <li><%= DateTime.Now.ToString("MM dd yyyy") %> – Your order number is <asp:Label ID="order_number" runat="server" Text="Label"></asp:Label>.</li>
            <li>You will receive an email with your pdf proof within 24-48 hours.</li>
                <br />
                <br />
                <br />
        </ul>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderSection" Runat="Server">
</asp:Content>
