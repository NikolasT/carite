<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Theme="main" Debug="true"%>

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
                <div class="pr40">                
                    <asp:CheckBox ID="reprint" runat="server" OnCheckedChanged="Reprint_Click" AutoPostBack="true"/>
                    <asp:Label ID="Label5" runat="server" 
                        Text="Is this an identical reprint (no changes) from previous order? If there are any changes, please resubmit all of your information." 
                        AssociatedControlID="reprint" class="reprint_label"></asp:Label>
                    <div class="clear"></div>
                    <div class="title mt20">&#8594; Order details</div>
                    
                    <div class="position_r">                    
                        <asp:Label ID="Label1" runat="server" Text="Ordered By" AssociatedControlID="ordered_by"></asp:Label>
                        <asp:TextBox ID="ordered_by" runat="server" class="large_input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Ordered By is required" Enabled="False" Display="Dynamic" ControlToValidate="ordered_by" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>

                    <div class="position_r">  
                        <asp:Label ID="Label2" runat="server" Text="Email" AssociatedControlID="email"></asp:Label>
                        <asp:TextBox ID="email" runat="server" class="large_input"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ErrorMessage="Wrong Email Address" ControlToValidate="email" Display="Dynamic" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Enabled="False" SetFocusOnError="True"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Email is required" ControlToValidate="email" Display="Dynamic" Enabled="False" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>

                    <div class="clear"></div>
                    <div class="col2 left center">                
                        <asp:Label ID="Label3" runat="server" Text="Quantity 500" AssociatedControlID="RadioButton1"></asp:Label>
                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="quantity" Checked="True" value="500"/>
                    </div>
                    <div class="col2 right center">                
                        <asp:Label ID="Label4" runat="server" Text="Quantity 1000" AssociatedControlID="RadioButton2"></asp:Label>
                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="quantity" value="1000"/>
                    </div>
                    <div class="clear"></div>
                    <asp:DropDownList ID="DropDownList1" runat="server" ToolTip="Ship to" class="large_select">
                        <asp:ListItem>Garden City MI</asp:ListItem>
                        <asp:ListItem>Madison Heights MI</asp:ListItem>
                        <asp:ListItem>Ortonville MI</asp:ListItem>
                        <asp:ListItem>Redford MI</asp:ListItem>
                        <asp:ListItem>Taylor MI</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>           
            <div class="col2 right">
                <div class="title">&#8594; Card front information</div>
                <div class="position_r">  
                    <asp:Label ID="Label6" runat="server" Text="Name" AssociatedControlID="name"></asp:Label>
                    <asp:TextBox ID="name" runat="server" class="large_input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Name is required" ControlToValidate="name" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>

                <div class="position_r"> 
                    <asp:Label ID="Label7" runat="server" Text="Phone" AssociatedControlID="phone_part_one"></asp:Label>
                    <asp:TextBox ID="phone_part_one" runat="server" class="small_input"></asp:TextBox> - <asp:TextBox ID="phone_part_two" runat="server" class="small_input"></asp:TextBox> - <asp:TextBox ID="phone_part_three" runat="server" class="middle_input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Phone number is required" ControlToValidate="phone_part_one" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Phone number is required" ControlToValidate="phone_part_two" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Phone number is required" ControlToValidate="phone_part_three" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>

                <div class="position_r"> 
                    <asp:Label ID="Label8" runat="server" Text="Fax" AssociatedControlID="fax_part_one"></asp:Label>
                    <asp:TextBox ID="fax_part_one" runat="server" class="small_input"></asp:TextBox> - <asp:TextBox ID="fax_part_two" runat="server" class="small_input"></asp:TextBox> - <asp:TextBox ID="fax_part_three" runat="server" class="middle_input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Fax number is required" ControlToValidate="fax_part_one" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Fax number is required" ControlToValidate="fax_part_two" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Fax number is required" ControlToValidate="fax_part_three" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>

                <div class="position_r"> 
                    <asp:Label ID="Label9" runat="server" Text="Email" AssociatedControlID="card_email"></asp:Label>
                    <asp:TextBox ID="card_email" runat="server" class="large_input"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Wrong Email address" Display="Dynamic" ControlToValidate="card_email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" SetFocusOnError="True"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email is required" ControlToValidate="card_email" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>

                <div class="position_r">
                    <asp:Label ID="Label10" runat="server" Text="Address" AssociatedControlID="address"></asp:Label>
                    <asp:TextBox ID="address" runat="server" class="large_input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Address is required" ControlToValidate="address" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>

                <div class="col3 left resert_input_width">                
                    <div class="position_r">
                        <asp:Label ID="Label11" runat="server" Text="City" AssociatedControlID="city"></asp:Label>
                        <asp:TextBox ID="city" runat="server" class="middle_input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="required" ControlToValidate="city" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="col3 left resert_input_width">                
                    <asp:Label ID="Label12" runat="server" Text="State" AssociatedControlID="DropDownListState"></asp:Label>
                    <asp:DropDownList ID="DropDownListState" runat="server" class="small_select">
	                    <asp:ListItem Value="AL">Alabama</asp:ListItem>
	                    <asp:ListItem Value="AK">Alaska</asp:ListItem>
	                    <asp:ListItem Value="AZ">Arizona</asp:ListItem>
	                    <asp:ListItem Value="AR">Arkansas</asp:ListItem>
	                    <asp:ListItem Value="CA">California</asp:ListItem>
	                    <asp:ListItem Value="CO">Colorado</asp:ListItem>
	                    <asp:ListItem Value="CT">Connecticut</asp:ListItem>
	                    <asp:ListItem Value="DC">District of Columbia</asp:ListItem>
	                    <asp:ListItem Value="DE">Delaware</asp:ListItem>
	                    <asp:ListItem Value="FL">Florida</asp:ListItem>
	                    <asp:ListItem Value="GA">Georgia</asp:ListItem>
	                    <asp:ListItem Value="HI">Hawaii</asp:ListItem>
	                    <asp:ListItem Value="ID">Idaho</asp:ListItem>
	                    <asp:ListItem Value="IL">Illinois</asp:ListItem>
	                    <asp:ListItem Value="IN">Indiana</asp:ListItem>
	                    <asp:ListItem Value="IA">Iowa</asp:ListItem>
	                    <asp:ListItem Value="KS">Kansas</asp:ListItem>
	                    <asp:ListItem Value="KY">Kentucky</asp:ListItem>
	                    <asp:ListItem Value="LA">Louisiana</asp:ListItem>
	                    <asp:ListItem Value="ME">Maine</asp:ListItem>
	                    <asp:ListItem Value="MD">Maryland</asp:ListItem>
	                    <asp:ListItem Value="MA">Massachusetts</asp:ListItem>
	                    <asp:ListItem Value="MI">Michigan</asp:ListItem>
	                    <asp:ListItem Value="MN">Minnesota</asp:ListItem>
	                    <asp:ListItem Value="MS">Mississippi</asp:ListItem>
	                    <asp:ListItem Value="MO">Missouri</asp:ListItem>
	                    <asp:ListItem Value="MT">Montana</asp:ListItem>
	                    <asp:ListItem Value="NE">Nebraska</asp:ListItem>
	                    <asp:ListItem Value="NV">Nevada</asp:ListItem>
	                    <asp:ListItem Value="NH">New Hampshire</asp:ListItem>
	                    <asp:ListItem Value="NJ">New Jersey</asp:ListItem>
	                    <asp:ListItem Value="NM">New Mexico</asp:ListItem>
	                    <asp:ListItem Value="NY">New York</asp:ListItem>
	                    <asp:ListItem Value="NC">North Carolina</asp:ListItem>
	                    <asp:ListItem Value="ND">North Dakota</asp:ListItem>
	                    <asp:ListItem Value="OH">Ohio</asp:ListItem>
	                    <asp:ListItem Value="OK">Oklahoma</asp:ListItem>
	                    <asp:ListItem Value="OR">Oregon</asp:ListItem>
	                    <asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
	                    <asp:ListItem Value="RI">Rhode Island</asp:ListItem>
	                    <asp:ListItem Value="SC">South Carolina</asp:ListItem>
	                    <asp:ListItem Value="SD">South Dakota</asp:ListItem>
	                    <asp:ListItem Value="TN">Tennessee</asp:ListItem>
	                    <asp:ListItem Value="TX">Texas</asp:ListItem>
	                    <asp:ListItem Value="UT">Utah</asp:ListItem>
	                    <asp:ListItem Value="VT">Vermont</asp:ListItem>
	                    <asp:ListItem Value="VA">Virginia</asp:ListItem>
	                    <asp:ListItem Value="WA">Washington</asp:ListItem>
	                    <asp:ListItem Value="WV">West Virginia</asp:ListItem>
	                    <asp:ListItem Value="WI">Wisconsin</asp:ListItem>
	                    <asp:ListItem Value="WY">Wyoming</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col3 left resert_input_width">   
                    <div class="position_r">             
                        <asp:Label ID="Label13" runat="server" Text="Zip" AssociatedControlID="zip"></asp:Label>
                        <asp:TextBox ID="zip" runat="server" class="small_input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="required" ControlToValidate="zip" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>
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
            <asp:Button ID="Button1" runat="server" Text="PLACE ORDER &#8594;" class="submit" OnClick="Order_Submit"/>
            <p class="m10">Questions? Please call 248 848-0503 or email our <a href="mailto:support@graphinity.com">support group</a>.</p>
        </div>
    </form>
</asp:Content>

