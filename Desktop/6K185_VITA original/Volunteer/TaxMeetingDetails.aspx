<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" %>

<script runat="server">

    Protected Sub SqlDataSource1_Selecting(sender As Object, e As System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs)

        
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:fk185_ClassConnectionString %>" 
    SelectCommand="SELECT * FROM [TaxMeeting] WHERE ([MeetingID] = @MeetingID)" 
        onselecting="SqlDataSource1_Selecting" 
    DeleteCommand="DELETE FROM [TaxMeeting] WHERE [MeetingID] = @MeetingID" 
    InsertCommand="INSERT INTO [TaxMeeting] ([MeetingID], [TaxPayerID], [TaxpayerFirstName], [TaxpayerLastName], [SpouseLastName], [SpouseFirstName], [ResidencyStatus], [PhoneNumber], [Email], [VolunteerID], [VolunteerFirstName], [VolunteerLastName], [VolunteerEmail], [TaxYear], [Date], [Return Status]) VALUES (@MeetingID, @TaxPayerID, @TaxpayerFirstName, @TaxpayerLastName, @SpouseLastName, @SpouseFirstName, @ResidencyStatus, @PhoneNumber, @Email, @VolunteerID, @VolunteerFirstName, @VolunteerLastName, @VolunteerEmail, @TaxYear, @Date, @Return_Status)" 
    UpdateCommand="UPDATE [TaxMeeting] SET [TaxPayerID] = @TaxPayerID, [TaxpayerFirstName] = @TaxpayerFirstName, [TaxpayerLastName] = @TaxpayerLastName, [SpouseLastName] = @SpouseLastName, [SpouseFirstName] = @SpouseFirstName, [ResidencyStatus] = @ResidencyStatus, [PhoneNumber] = @PhoneNumber, [Email] = @Email, [VolunteerID] = @VolunteerID, [VolunteerFirstName] = @VolunteerFirstName, [VolunteerLastName] = @VolunteerLastName, [VolunteerEmail] = @VolunteerEmail, [TaxYear] = @TaxYear, [Date] = @Date, [Return Status] = @Return_Status WHERE [MeetingID] = @MeetingID">
        <DeleteParameters>
            <asp:Parameter Name="MeetingID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MeetingID" Type="String" />
            <asp:Parameter Name="TaxPayerID" Type="String" />
            <asp:Parameter Name="TaxpayerFirstName" Type="String" />
            <asp:Parameter Name="TaxpayerLastName" Type="String" />
            <asp:Parameter Name="SpouseLastName" Type="String" />
            <asp:Parameter Name="SpouseFirstName" Type="String" />
            <asp:Parameter Name="ResidencyStatus" Type="String" />
            <asp:Parameter Name="PhoneNumber" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="VolunteerID" Type="String" />
            <asp:Parameter Name="VolunteerFirstName" Type="String" />
            <asp:Parameter Name="VolunteerLastName" Type="String" />
            <asp:Parameter Name="VolunteerEmail" Type="String" />
            <asp:Parameter Name="TaxYear" Type="String" />
            <asp:Parameter Name="Date" Type="DateTime" />
            <asp:Parameter Name="Return_Status" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="MeetingID" QueryStringField="MeetingID" 
                Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="TaxPayerID" Type="String" />
            <asp:Parameter Name="TaxpayerFirstName" Type="String" />
            <asp:Parameter Name="TaxpayerLastName" Type="String" />
            <asp:Parameter Name="SpouseLastName" Type="String" />
            <asp:Parameter Name="SpouseFirstName" Type="String" />
            <asp:Parameter Name="ResidencyStatus" Type="String" />
            <asp:Parameter Name="PhoneNumber" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="VolunteerID" Type="String" />
            <asp:Parameter Name="VolunteerFirstName" Type="String" />
            <asp:Parameter Name="VolunteerLastName" Type="String" />
            <asp:Parameter Name="VolunteerEmail" Type="String" />
            <asp:Parameter Name="TaxYear" Type="String" />
            <asp:Parameter Name="Date" Type="DateTime" />
            <asp:Parameter Name="Return_Status" Type="String" />
            <asp:Parameter Name="MeetingID" Type="String" />
        </UpdateParameters>
</asp:SqlDataSource>
<br />
<br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataSourceID="SqlDataSource1" Height="50px" Width="125px" 
        DataKeyNames="MeetingID">
        <Fields>
            <asp:BoundField DataField="MeetingID" HeaderText="MeetingID" 
                SortExpression="MeetingID" ReadOnly="True" />
            <asp:BoundField DataField="TaxPayerID" HeaderText="TaxPayerID" 
                SortExpression="TaxPayerID" />
            <asp:BoundField DataField="TaxpayerFirstName" HeaderText="TaxpayerFirstName" 
                SortExpression="TaxpayerFirstName" />
            <asp:BoundField DataField="TaxpayerLastName" HeaderText="TaxpayerLastName" 
                SortExpression="TaxpayerLastName" />
            <asp:BoundField DataField="SpouseLastName" HeaderText="SpouseLastName" 
                SortExpression="SpouseLastName" />
            <asp:BoundField DataField="SpouseFirstName" HeaderText="SpouseFirstName" 
                SortExpression="SpouseFirstName" />
            <asp:BoundField DataField="ResidencyStatus" HeaderText="ResidencyStatus" 
                SortExpression="ResidencyStatus" />
            <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" 
                SortExpression="PhoneNumber" />
            <asp:BoundField DataField="Email" HeaderText="Email" 
                SortExpression="Email" />
            <asp:BoundField DataField="VolunteerID" HeaderText="VolunteerID" 
                SortExpression="VolunteerID" />
            <asp:BoundField DataField="VolunteerFirstName" HeaderText="VolunteerFirstName" 
                SortExpression="VolunteerFirstName" />
            <asp:BoundField DataField="VolunteerLastName" HeaderText="VolunteerLastName" 
                SortExpression="VolunteerLastName" />
            <asp:BoundField DataField="VolunteerEmail" HeaderText="VolunteerEmail" 
                SortExpression="VolunteerEmail" />
            <asp:BoundField DataField="TaxYear" HeaderText="TaxYear" 
                SortExpression="TaxYear" />
            <asp:BoundField DataField="Date" HeaderText="Date" 
                SortExpression="Date" />
            <asp:BoundField DataField="Return Status" HeaderText="Return Status" 
                SortExpression="Return Status" />
        </Fields>
    </asp:DetailsView>

    <a href="TaxMeeting.aspx">Back</a>
</asp:Content>

