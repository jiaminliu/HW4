<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="TaxPayerDetails.aspx.vb" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>   <br /> <h1> Taxpayers</h1>
        You are viewing a specific taxpayer.
        <br />
        <a href= "TaxPayer.aspx"> View All Taxpayers</a>
    <br />
    </p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:fk185_ClassConnectionString %>" 
        DeleteCommand="DELETE FROM [Taxpayer] WHERE [TaxpayerID] = @TaxpayerID" 
        InsertCommand="INSERT INTO [Taxpayer] ([TaxpayerID], [TaxpayerLastName], [TaxpayerFirstName], [SpouseLastName], [SpouseFirstName], [PhoneNumber], [Email], [ResidencyStatus]) VALUES (@TaxpayerID, @TaxpayerLastName, @TaxpayerFirstName, @SpouseLastName, @SpouseFirstName, @PhoneNumber, @Email, @ResidencyStatus)" 
        SelectCommand="SELECT * FROM [Taxpayer] WHERE ([TaxpayerID] = @TaxpayerID)" 
        
        
        
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
        <SelectParameters>
            <asp:QueryStringParameter Name="TaxpayerID" QueryStringField="TaxpayerID" 
                Type="String" />
        </SelectParameters>
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
   
     <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="TaxpayerID" DataSourceID="SqlDataSource1" Height="50px" 
        Width="390px">
         <Fields>
             <asp:BoundField DataField="TaxpayerID" HeaderText="ID" ReadOnly="True" 
                 SortExpression="TaxpayerID" />
             <asp:BoundField DataField="TaxpayerLastName" HeaderText="Last Name" 
                 SortExpression="TaxpayerLastName" />
             <asp:BoundField DataField="TaxpayerFirstName" HeaderText="First Name" 
                 SortExpression="TaxpayerFirstName" />
             <asp:BoundField DataField="SpouseLastName" HeaderText="Spouse Last Name" 
                 SortExpression="SpouseLastName" />
             <asp:BoundField DataField="SpouseFirstName" HeaderText="Spouse First Name" 
                 SortExpression="SpouseFirstName" />
             <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" 
                 SortExpression="PhoneNumber" />
             <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
             <asp:BoundField DataField="ResidencyStatus" HeaderText="Residency Status" 
                 SortExpression="ResidencyStatus" />
             <asp:CommandField ShowEditButton="True" />
         </Fields>
    </asp:DetailsView>
   
     <p>&nbsp;</p>
    </asp:Content>

