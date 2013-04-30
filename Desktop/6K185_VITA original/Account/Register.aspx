<%@ Page Title="Register" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeFile="Register.aspx.vb" Inherits="Account_Register" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <asp:CreateUserWizard ID="RegisterUser" runat="server" EnableViewState="False" 
        ActiveStepIndex="2">
        <LayoutTemplate>
            <asp:PlaceHolder ID="wizardStepPlaceholder" runat="server"></asp:PlaceHolder>
            <asp:PlaceHolder ID="navigationPlaceholder" runat="server"></asp:PlaceHolder>
        </LayoutTemplate>
        <WizardSteps>
            <asp:CreateUserWizardStep ID="RegisterUserWizardStep" runat="server">
                <ContentTemplate>
                    <h2>
                        Create a New Account
                    </h2>
                    <p>
                        Use the form below to create a new account.
                    </p>
                    <p>
                        Passwords are required to be a minimum of <%= Membership.MinRequiredPasswordLength %> characters in length.
                    </p>
                    <span class="failureNotification">
                        <asp:Literal ID="ErrorMessage" runat="server"></asp:Literal>
                    </span>
                    <asp:ValidationSummary ID="RegisterUserValidationSummary" runat="server" CssClass="failureNotification" 
                         ValidationGroup="RegisterUserValidationGroup"/>
                    <div class="accountInfo">
                        <fieldset class="register">
                            <legend>Account Information</legend>
                            <p>
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                <asp:TextBox ID="UserName" runat="server" CssClass="textEntry"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" 
                                     CssClass="failureNotification" ErrorMessage="User Name is required." ToolTip="User Name is required." 
                                     ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                            </p>
                            <br />
                            <br />
                            <p>
                                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                                <asp:TextBox ID="Email" runat="server" CssClass="textEntry"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" 
                                     CssClass="failureNotification" ErrorMessage="E-mail is required." ToolTip="E-mail is required." 
                                     ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                            </p>
                                                        <br />
                            <br />
                            <p>
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                <asp:TextBox ID="Password" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" 
                                     CssClass="failureNotification" ErrorMessage="Password is required." ToolTip="Password is required." 
                                     ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                            </p>
                                                        <br />
                            <br />
                            <p>
                                <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
                                <asp:TextBox ID="ConfirmPassword" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="ConfirmPassword" CssClass="failureNotification" Display="Dynamic" 
                                     ErrorMessage="Confirm Password is required." ID="ConfirmPasswordRequired" runat="server" 
                                     ToolTip="Confirm Password is required." ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" 
                                     CssClass="failureNotification" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match."
                                     ValidationGroup="RegisterUserValidationGroup">*</asp:CompareValidator>
                            </p>
                                                        <br />
                            <br />
                        </fieldset>
                        <p class="submitButton">
                            <asp:Button ID="CreateUserButton" runat="server" CommandName="MoveNext" Text="Create User" 
                                 ValidationGroup="RegisterUserValidationGroup"/>
                        </p>
                    </div>
                </ContentTemplate>
                <CustomNavigationTemplate>
                </CustomNavigationTemplate>

            </asp:CreateUserWizardStep>
            <asp:WizardStep ID="VolunteerProfile" runat="server" StepType="Step" Title="Volunteer">
            <table>
                <tr>
                    <td align="right">First Name:</td> <td align="left"> <asp:TextBox ID="tb_FirstName" runat="server" Columns="50"></asp:TextBox></td>
               
                    <td>
                    
                    <asp:RequiredFieldValidator ID="FirstNameRequired" runat="server" 
                                    ControlToValidate="tb_FirstName" ErrorMessage="First name is required." 
                                    ToolTip="First name is required.">
                                    <span class="rfd">*** Please enter a first name.</span>
                    </asp:RequiredFieldValidator>
                    
                    </td>
               
                </tr>

                <tr>
                    <td align="right">Last Name:</td> <td align="left"> <asp:TextBox ID="tb_LastName" runat="server" Columns="50"></asp:TextBox></td>
                
                    <td>
                    
                     <asp:RequiredFieldValidator ID="LastNameRequired" runat="server" 
                                    ControlToValidate="tb_LastName" ErrorMessage="Last name is required." 
                                    ToolTip="Last name is required.">
                                    <span class="rfd">*** Please enter a last name.</span>
                    </asp:RequiredFieldValidator>
                    
                    </td>
                    
                
                </tr>

                <tr>
                    <td align=right>PhoneNumber:</td> <td align=left> <asp:TextBox ID="tb_phonenum" runat="server" Columns="50"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td align=right>Email:</td> <td align=left> <asp:TextBox ID="tb_email" runat="server" Columns="50"></asp:TextBox></td>
                </tr>

                <tr>
                    <td align=right>Certification</td> <td align=left> <asp:DropDownList ID="ddl_certificate" runat="server"> 
                    <asp:ListItem Value="0">Select Level</asp:ListItem>
                    <asp:ListItem Value="1">Basic</asp:ListItem>
                    <asp:ListItem Value="2">Intermediate</asp:ListItem>
                    <asp:ListItem Value="3">Advanced</asp:ListItem>

                    </asp:DropDownList> </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfd_certificationRequired" runat="server" 
                                    ControlToValidate="ddl_certificate" ErrorMessage="Certification is required." 
                                    ToolTip="Certification is required." InitialValue="0">
                                    <span class="rfd">*** Please enter a state.</span>
                        </asp:RequiredFieldValidator>
                    </td>

                </tr>
                <tr>
                    <td align=right>Status</td> <td align=left> <asp:DropDownList ID="ddl_status" runat="server"> 
                    <asp:ListItem Value="0">Select Status</asp:ListItem>
                    <asp:ListItem Value="1">Active</asp:ListItem>
                    <asp:ListItem Value="2">Deactive</asp:ListItem>
                    </asp:DropDownList> </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfd_statusRequied" runat="server" 
                                    ControlToValidate="ddl_status" ErrorMessage="Status is required." 
                                    ToolTip="Status is required." InitialValue="0">
                                    <span class="rfd">*** Please enter a status for the user.</span>
                        </asp:RequiredFieldValidator>
                    </td>

                </tr>
                <tr>
                    <td align=right>Agreement</td> <td align=left> <asp:DropDownList ID="ddl_agreement" runat="server"> 
                    <asp:ListItem Value="0">Printed and Signed?</asp:ListItem>
                    <asp:ListItem Value="1">True</asp:ListItem>
                    <asp:ListItem Value="2">False</asp:ListItem>
                    </asp:DropDownList> </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfd_agreement" runat="server" 
                                    ControlToValidate="ddl_agreement" ErrorMessage="Please specify if you have printed and signed the volunteer agreement." 
                                    ToolTip="Agreement signed?" InitialValue="0">
                                    <span class="rfd">*** Please check with the user whether the agreement has been signed.</span>
                        </asp:RequiredFieldValidator>
                    </td>

                </tr>

            </table>

            </asp:WizardStep>

<asp:CompleteWizardStep runat="server">
            
       
               
            </asp:CompleteWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>
    <asp:Label ID="labelMember" runat="server" Text="VITA"></asp:Label>
</asp:Content>