<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="TaxPayer.aspx.vb" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>   <br /> <h1> Taxpayers</h1>
       Please select from the following existing Taxpayers or create a new 
    Taxpayer for your shift. <br />
    You can search for a taxpaer by entering their taxpayer ID, last name, or first name. <br />
    <asp:TextBox ID="tbSearch" runat="server"></asp:TextBox>
    <asp:Button ID="btnSearch" runat="server" Text="Search" />
    <br />
    </p>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:fk185_ClassConnectionString %>" 
        DeleteCommand="DELETE FROM [Taxpayer] WHERE [TaxpayerID] = @TaxpayerID" 
        InsertCommand="INSERT INTO [Taxpayer] ([TaxpayerID], [TaxpayerLastName], [TaxpayerFirstName], [SpouseLastName], [SpouseFirstName], [PhoneNumber], [Email], [ResidencyStatus]) VALUES (@TaxpayerID, @TaxpayerLastName, @TaxpayerFirstName, @SpouseLastName, @SpouseFirstName, @PhoneNumber, @Email, @ResidencyStatus)" 
        SelectCommand="SELECT * FROM [Taxpayer]" 
        UpdateCommand="UPDATE [Taxpayer] SET [TaxpayerLastName] = @TaxpayerLastName, [TaxpayerFirstName] = @TaxpayerFirstName, [SpouseLastName] = @SpouseLastName, [SpouseFirstName] = @SpouseFirstName, [PhoneNumber] = @PhoneNumber, [Email] = @Email, [ResidencyStatus] = @ResidencyStatus WHERE [TaxpayerID] = @TaxpayerID">
        <DeleteParameters>
            <asp:Parameter Name="TaxpayerID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TaxpayerID" Type="String" />
            <asp:Parameter Name="TaxpayerLastName" Type="String" />
            <asp:Parameter Name="TaxpayerFirstName" Type="String" />
            <asp:Parameter Name="SpouseLastName" Type="String" />
            <asp:Parameter Name="SpouseFirstName" Type="String" />
            <asp:Parameter Name="PhoneNumber" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="ResidencyStatus" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TaxpayerLastName" Type="String" />
            <asp:Parameter Name="TaxpayerFirstName" Type="String" />
            <asp:Parameter Name="SpouseLastName" Type="String" />
            <asp:Parameter Name="SpouseFirstName" Type="String" />
            <asp:Parameter Name="PhoneNumber" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="ResidencyStatus" Type="String" />
            <asp:Parameter Name="TaxpayerID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
   
     <p>&nbsp;</p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="TaxpayerID" DataSourceID="SqlDataSource1" AllowPaging="True" 
        AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="TaxpayerID" HeaderText="ID" 
                SortExpression="TaxpayerID" ReadOnly="True" />
            <asp:BoundField DataField="TaxpayerLastName" HeaderText="Last Name" 
                SortExpression="TaxpayerLastName" />
            <asp:BoundField DataField="TaxpayerFirstName" HeaderText="First Name" 
                SortExpression="TaxpayerFirstName" />
            <asp:HyperLinkField DataNavigateUrlFields="TaxPayerID" 
                DataNavigateUrlFormatString="TaxPayerDetails.aspx?TaxpayerID={0}" Text="Edit" />
        </Columns>
    </asp:GridView>
</asp:Content>

