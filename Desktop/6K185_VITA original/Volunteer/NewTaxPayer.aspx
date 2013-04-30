﻿<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="NewTaxPayer.aspx.vb" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>   <br /> <h1> Taxpayers</h1>
        &nbsp;Please select from the following existing Taxpayers or create a new 
    Taxpayer for your shift.</p>
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
   
     <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="TaxpayerID" DataSourceID="SqlDataSource1" Height="50px" 
        Width="125px" DefaultMode="Insert">
         <Fields>
             <asp:BoundField DataField="TaxpayerID" HeaderText="TaxpayerID" ReadOnly="True" 
                 SortExpression="TaxpayerID" />
             <asp:BoundField DataField="TaxpayerLastName" HeaderText="TaxpayerLastName" 
                 SortExpression="TaxpayerLastName" />
             <asp:BoundField DataField="TaxpayerFirstName" HeaderText="TaxpayerFirstName" 
                 SortExpression="TaxpayerFirstName" />
             <asp:BoundField DataField="SpouseLastName" HeaderText="SpouseLastName" 
                 SortExpression="SpouseLastName" />
             <asp:BoundField DataField="SpouseFirstName" HeaderText="SpouseFirstName" 
                 SortExpression="SpouseFirstName" />
             <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" 
                 SortExpression="PhoneNumber" />
             <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
             <asp:BoundField DataField="ResidencyStatus" HeaderText="ResidencyStatus" 
                 SortExpression="ResidencyStatus" />
             <asp:CommandField ShowInsertButton="True" />
         </Fields>
    </asp:DetailsView>
   
     </asp:Content>

