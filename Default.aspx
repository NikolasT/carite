<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Theme="main"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Carite | Ordering</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderHeader" Runat="Server">
    <div class="col2 left">
        <p class="initial_title">IT’S AS EASY AS 1, 2, 3!</p>
    </div>
    <div class="col2 right">
        <ul>
            <li><span>Complete this form to order your business cards</span></li>
            <li><span>After submitting your order, you’ll receive an 	email with a pdf proof.</span></li>
            <li><span>Please review carefully and reply back <i>“approved”</i>, <i>”approved with changes”</i> or <i>“changes-send another proof”</i>.</span></li>
        </ul>       
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderSection" Runat="Server">
    <form id="order" runat="server" method="post">
        <div class="content_item">
           
            <div class="col2 left">                
                <asp:CheckBox ID="reprint" runat="server" />
                <asp:Label ID="Label5" runat="server" 
                    Text="Is this an identical reprint (no changes) from previous order? If there are any changes, please resubmit all of your information." 
                    AssociatedControlID="reprint"></asp:Label>
                <div class="title">&#8594; Order details</div>
                
                <asp:Label ID="Label1" runat="server" Text="Ordered By"></asp:Label>
                <asp:TextBox ID="ordered_by" runat="server"></asp:TextBox>
                
                <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
                <asp:TextBox ID="email" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="Wrong Email Address" ControlToValidate="email" Display="Dynamic" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                
                <asp:Label ID="Label3" runat="server" Text="Quantity 500" AssociatedControlID="RadioButton1"></asp:Label>
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="quantity" Checked="True" value="500"/>
                
                <asp:Label ID="Label4" runat="server" Text="Quantity 1000" AssociatedControlID="RadioButton2"></asp:Label>
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="quantity" value="1000"/>
                <asp:DropDownList ID="DropDownList1" runat="server" ToolTip="Ship to">
                    <asp:ListItem>Garden City MI</asp:ListItem>
                    <asp:ListItem>Madison Heights MI</asp:ListItem>
                    <asp:ListItem>Ortonville MI</asp:ListItem>
                    <asp:ListItem>Redford MI</asp:ListItem>
                    <asp:ListItem>Taylor MI</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col2 right">
                <div class="title">&#8594; Card front information</div>
            </div>
        </div>
        <div class="content_item">
            <div class="col2 left center">
                <div class="title auto_margin">&#8594; Business card front</div>
                <img src="App_Themes/main/images/card_front.jpg" alt="Card Front" />
            </div>
            <div class="col2 right center">
                 <div class="title auto_margin">&#8594; Business card BACK</div>
                <img src="App_Themes/main/images/card_back.jpg" alt="Card Back" />
            </div>
        </div>
        <div class="content_item center">
            <asp:Button ID="Button1" runat="server" Text="PLACE ORDER &#8594;" class="submit"/>
            <p class="m10">Questions? Please call 248 848-0503 or email our <a href="mailto:support@graphinity.com">support group</a>.</p>
        </div>
    </form>
</asp:Content>

