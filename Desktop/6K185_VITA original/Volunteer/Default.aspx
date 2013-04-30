<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <h1> Alerts</h1>

         
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:fk185_ClassConnectionString %>" 
                SelectCommand="SELECT * FROM [Alert]"></asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
                AutoGenerateRows="False" DataSourceID="SqlDataSource2" 
                Height="164px" Width="319px">
                <Fields>
<asp:BoundField DataField="WeekID" HeaderText="WeekID" SortExpression="WeekID" 
                        InsertVisible="False" ReadOnly="True"></asp:BoundField>
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="Subject" HeaderText="Subject" 
                        SortExpression="Subject" />
                    <asp:BoundField DataField="Alert" HeaderText="Alert" SortExpression="Alert" />
                </Fields>
            </asp:DetailsView>
            <h1>Useful Links</h1>
        <ul>
  
             <li><a href="https://twonline.taxwise.com/User/Login.aspx?ReturnUrl=%2f">Start Preparing</a> Client ID: 1732288</li>
             <li><a href="https://icon.uiowa.edu/content/enforced/19894-actg001/VITA_2011_TaxYear/IRS_Publications/Iowa_SchoolDistrictCodes.pdf">School District Code</a></li>
             <li><a href="https://www.linklearncertification.com/d/"> Certification Test Website</a></li>

         </ul>
        <h1> Notification</h1>
             Please print and sign your volunteer agreement.
             <br />
             Please start and create an activity log for each shrift.
             <br />
             </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="ApplicationId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ApplicationName" HeaderText="ApplicationName" 
                    SortExpression="ApplicationName" />
                <asp:BoundField DataField="LoweredApplicationName" 
                    HeaderText="LoweredApplicationName" SortExpression="LoweredApplicationName" />
                <asp:BoundField DataField="ApplicationId" HeaderText="ApplicationId" 
                    ReadOnly="True" SortExpression="ApplicationId" />
                <asp:BoundField DataField="Description" HeaderText="Description" 
                    SortExpression="Description" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:fk185_ClassConnectionString %>" 
            SelectCommand="SELECT * FROM [vw_aspnet_Applications]"></asp:SqlDataSource>
    </p>
</asp:Content>

