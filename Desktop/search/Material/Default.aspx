<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" 
        SelectCommand="SELECT * FROM [slpl_allMaterial]"></asp:SqlDataSource>
        <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" style="margin-top: 0px">
        <Columns>
            <asp:BoundField DataField="bookID" HeaderText="bookID" 
                SortExpression="bookID" />
            <asp:BoundField DataField="callNumber" HeaderText="callNumber" 
                SortExpression="callNumber" />
            <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:BoundField DataField="author" HeaderText="author" 
                SortExpression="author" />
            <asp:BoundField DataField="publisher" HeaderText="publisher" 
                SortExpression="publisher" />
            <asp:BoundField DataField="publishYear" HeaderText="publishYear" 
                SortExpression="publishYear" />
            <asp:BoundField DataField="description" HeaderText="description" 
                SortExpression="description" />
            <asp:BoundField DataField="availability" HeaderText="availability" 
                SortExpression="availability" />
            <asp:BoundField DataField="materialPic" HeaderText="materialPic" 
                SortExpression="materialPic" />
        </Columns>
    </asp:GridView>
    <a href="Default.aspx">Back</a>
</asp:Content>

