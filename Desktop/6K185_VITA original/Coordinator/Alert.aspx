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

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:fk185_ClassConnectionString %>" 
        SelectCommand="SELECT * FROM [Alert]" 
        DeleteCommand="DELETE FROM [Alert] WHERE [WeekID] = @WeekID" 
        InsertCommand="INSERT INTO [Alert] ([Date], [Subject], [Alert]) VALUES (@Date, @Subject, @Alert)" 
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
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="WeekID" 
        DataSourceID="SqlDataSource1" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="WeekID" HeaderText="Week" InsertVisible="False" 
                ReadOnly="True" SortExpression="WeekID" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="Subject" HeaderText="Subject" 
                SortExpression="Subject" />
            <asp:BoundField DataField="Alert" HeaderText="Alert" SortExpression="Alert" />
        </Columns>
    </asp:GridView>
</asp:Content>

