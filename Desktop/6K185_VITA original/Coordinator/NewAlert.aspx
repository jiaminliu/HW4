<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

<br />
<br />
<br />

<br />
<br />
<h1>Update Weekly Alert</h1>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:fk185_ClassConnectionString %>" 
        DeleteCommand="DELETE FROM [Alert] WHERE [WeekID] = @WeekID" 
        InsertCommand="INSERT INTO [Alert] ([Date], [Subject], [Alert]) VALUES (@Date, @Subject, @Alert)" 
        SelectCommand="SELECT * FROM [Alert]" 
        UpdateCommand="UPDATE [Alert] SET [Date] = @Date, [Subject] = @Subject, [Alert] = @Alert WHERE [WeekID] = @WeekID">
        <DeleteParameters>
            <asp:Parameter Name="WeekID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Date" Type="DateTime" />
            <asp:Parameter Name="Subject" Type="String" />
            <asp:Parameter Name="Alert" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Date" Type="DateTime" />
            <asp:Parameter Name="Subject" Type="String" />
            <asp:Parameter Name="Alert" Type="String" />
            <asp:Parameter Name="WeekID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" 
        AllowPaging="True" AutoGenerateRows="False" DataSourceID="SqlDataSource1" 
        DefaultMode="Insert">
        <Fields>
            <asp:BoundField DataField="WeekID" HeaderText="WeekID" InsertVisible="False" 
                ReadOnly="True" SortExpression="WeekID" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="Subject" HeaderText="Subject" 
                SortExpression="Subject" />
            <asp:BoundField DataField="Alert" HeaderText="Alert" SortExpression="Alert">
            <ControlStyle Height="300px" Width="500px" />
            </asp:BoundField>
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
</asp:Content>

