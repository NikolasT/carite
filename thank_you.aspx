<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="thank_you.aspx.cs" Inherits="Default2" Theme="main"%>

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
            <li>You will receive an email with your pdf proof within 24-48 hours.</li>            <li>Please review the proof carefully.</li>            <li>                Reply back to this email with: 
                <br />                - APPROVED                     
                <br />                - APPROVED WITH CHANGES - no proof Indicate changes in email               
                <br />                - CHANGES - please send new proof Indicate changes in email            </li>            <li>After approval is received, your order will ship within 5-7 business days.</li>            <li>Questions about your order? Please contact 248 848-0503 or email our <a href="mailto:support@graphinity.com">support group</a>. Please reference your order number when contacting us.</li>            <li>Order cancellation - Due to our production process, orders may not be cancelled once approved. Please contact our <a href="mailto:support@graphinity.com">support group</a> prior to approval to cancel your order.</li>
        </ul>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderSection" Runat="Server">
</asp:Content>

