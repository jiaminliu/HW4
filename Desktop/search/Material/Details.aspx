<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Details.aspx.vb" Inherits="Default2" %>
<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
        <div class="search">
             
             </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" 
        SelectCommand="SELECT * FROM [slpl_allMaterial] WHERE ([bookID] = @bookID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="bookID" QueryStringField="bookID" 
                    Type="String" />
            </SelectParameters>
     </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="SqlDataSource1" 
        Height="50px" Width="125px">
  
    </asp:DetailsView>
      <a runat = "server"  href="Default.aspx">Back</a>
</asp:Content>


