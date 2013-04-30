<%@ Page Title="About Us" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeFile="NewVolunteer.aspx.vb" Inherits="About" %>

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
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:fk185_ClassConnectionString %>" 
        SelectCommand="SELECT * FROM [Volunteer] WHERE ([VolunteerID] = @VolunteerID)" 
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
            <SelectParameters>
                <asp:QueryStringParameter Name="VolunteerID" QueryStringField="VolunteerID" 
                    Type="String" />
            </SelectParameters>
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
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="VolunteerID" DataSourceID="SqlDataSource1" Height="50px" 
        Width="125px" DefaultMode="Insert">
        <Fields>
            <asp:BoundField DataField="VolunteerFirstName" HeaderText="VolunteerFirstName" 
                SortExpression="VolunteerFirstName" />
            <asp:BoundField DataField="VolunteerLastName" HeaderText="VolunteerLastName" 
                SortExpression="VolunteerLastName" />
            <asp:BoundField DataField="VolunteerCertification" 
                HeaderText="VolunteerCertification" SortExpression="VolunteerCertification" />
            <asp:BoundField DataField="VolunteerStatus" HeaderText="VolunteerStatus" 
                SortExpression="VolunteerStatus" />
            <asp:BoundField DataField="VolunteerPhone" HeaderText="VolunteerPhone" 
                SortExpression="VolunteerPhone" />
            <asp:BoundField DataField="VolunteerEmail" HeaderText="VolunteerEmail" 
                SortExpression="VolunteerEmail" />
            <asp:BoundField DataField="VolunteerAgreement" HeaderText="VolunteerAgreement" 
                SortExpression="VolunteerAgreement" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
</asp:Content>