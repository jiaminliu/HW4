<%@ Page Title="About Us" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeFile="Volunteer.aspx.vb" Inherits="About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style2
        {
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <br />
    <h1>
        Edit Volunteers
    </h1>
    <span style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 17px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; display: inline !important;" 
        class="style2">
    


        Enter a volunteer&#39;s ID, first name, or last name in order to search for a 
    specific volunteer.<br />
    <asp:TextBox ID="tbSearch" runat="server"></asp:TextBox>
    <asp:Button ID="btnSearch" runat="server" Text="Search " />
    



        <br />
    



        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:fk185_ClassConnectionString %>" 
        SelectCommand="SELECT * FROM [Volunteer]" 
        DeleteCommand="DELETE FROM [Volunteer] WHERE [VolunteerID] = @VolunteerID" 
        InsertCommand="INSERT INTO [Volunteer] ([VolunteerID], [VolunteerFirstName], [VolunteerLastName], [VolunteerCertification], [VolunteerStatus], [VolunteerPhone], [VolunteerEmail], [VolunteerAgreement]) VALUES (@VolunteerID, @VolunteerFirstName, @VolunteerLastName, @VolunteerCertification, @VolunteerStatus, @VolunteerPhone, @VolunteerEmail, @VolunteerAgreement)" 
        UpdateCommand="UPDATE [Volunteer] SET [VolunteerFirstName] = @VolunteerFirstName, [VolunteerLastName] = @VolunteerLastName, [VolunteerCertification] = @VolunteerCertification, [VolunteerStatus] = @VolunteerStatus, [VolunteerPhone] = @VolunteerPhone, [VolunteerEmail] = @VolunteerEmail, [VolunteerAgreement] = @VolunteerAgreement WHERE [VolunteerID] = @VolunteerID">
            <DeleteParameters>
                <asp:Parameter Name="VolunteerID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="VolunteerID" Type="String" />
                <asp:Parameter Name="VolunteerFirstName" Type="String" />
                <asp:Parameter Name="VolunteerLastName" Type="String" />
                <asp:Parameter Name="VolunteerCertification" Type="String" />
                <asp:Parameter Name="VolunteerStatus" Type="String" />
                <asp:Parameter Name="VolunteerPhone" Type="String" />
                <asp:Parameter Name="VolunteerEmail" Type="String" />
                <asp:Parameter Name="VolunteerAgreement" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="VolunteerFirstName" Type="String" />
                <asp:Parameter Name="VolunteerLastName" Type="String" />
                <asp:Parameter Name="VolunteerCertification" Type="String" />
                <asp:Parameter Name="VolunteerStatus" Type="String" />
                <asp:Parameter Name="VolunteerPhone" Type="String" />
                <asp:Parameter Name="VolunteerEmail" Type="String" />
                <asp:Parameter Name="VolunteerAgreement" Type="String" />
                <asp:Parameter Name="VolunteerID" Type="String" />
            </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="VolunteerID" DataSourceID="SqlDataSource1" 
        AllowSorting="True" style="margin-right: 1px" Width="560px" 
        AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="VolunteerFirstName" HeaderText="First Name" 
                SortExpression="VolunteerFirstName" />
            <asp:BoundField DataField="VolunteerLastName" HeaderText="Last Name" 
                SortExpression="VolunteerLastName" />
            <asp:HyperLinkField DataNavigateUrlFields="VolunteerID" 
                DataNavigateUrlFormatString="VolunteerDetails.aspx?VolunteerID={0}" 
                Text="Edit" />
        </Columns>
    </asp:GridView>

</asp:Content>