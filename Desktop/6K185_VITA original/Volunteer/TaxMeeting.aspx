<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" %>

<script runat="server">

    Protected Sub btnSearch_Click(sender As Object, e As System.EventArgs) Handles btnSearch.Click
        Dim searchWord As String
        searchWord = "SELECT * FROM TaxMeeting WHERE (Date Like '%" + tbSearch.Text.ToString() + "%') OR (TaxpayerFirstName Like '%" + tbSearch.Text.ToString() + "%') OR (TaxpayerLastName Like '%" + tbSearch.Text.ToString + "%')  OR (VolunteerLastName Like '%" + tbSearch.Text.ToString + "%') OR (VolunteerFirstName Like '%" + tbSearch.Text.ToString + "%')"
        SqlDataSource1.SelectCommand = searchWord
    End Sub

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

<br />
<br />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:fk185_ClassConnectionString %>" 
        SelectCommand="SELECT * FROM [TaxMeeting]"></asp:SqlDataSource>
    <br />
    To view more information about a meeting with a Tax Payer, please click the View 
    Details link near their name below.<br />
    You can enter the date, taxpayer&#39;s first or last name, or volunteer&#39;s first or 
    last name into the search bar below to find a specific result.<br />
    <asp:TextBox ID="tbSearch" runat="server"></asp:TextBox>
    <asp:Button ID="btnSearch" runat="server" Text="Search" />

    <br />
<br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" DataKeyNames="MeetingID">
        <Columns>
            <asp:BoundField DataField="MeetingID" HeaderText="MeetingID" 
                SortExpression="MeetingID" ReadOnly="True" />
            <asp:BoundField DataField="TaxYear" HeaderText="TaxYear" 
                SortExpression="TaxYear" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="Return Status" HeaderText="Return Status" 
                SortExpression="Return Status" />
            <asp:BoundField DataField="TaxpayerFirstName" HeaderText="TaxpayerFirstName" 
                SortExpression="TaxpayerFirstName" />
            <asp:BoundField DataField="TaxpayerLastName" HeaderText="TaxpayerLastName" 
                SortExpression="TaxpayerLastName" />
            <asp:BoundField DataField="ResidencyStatus" HeaderText="ResidencyStatus" 
                SortExpression="ResidencyStatus" />
            <asp:BoundField DataField="VolunteerFirstName" HeaderText="VolunteerFirstName" 
                SortExpression="VolunteerFirstName" />
            <asp:BoundField DataField="VolunteerLastName" HeaderText="VolunteerLastName" 
                SortExpression="VolunteerLastName" />
            <asp:HyperLinkField DataNavigateUrlFields="MeetingID" 
                DataNavigateUrlFormatString="TaxMeetingDetails.aspx?MeetingID={0}" 
                HeaderText="Details" Text="View Details" />
        </Columns>
    </asp:GridView>
<br />
</asp:Content>

