
Partial Class Default3
    Inherits System.Web.UI.Page


    Protected Sub btnSearch_Click(sender As Object, e As System.EventArgs) Handles btnSearch.Click
        Dim searchWord As String
        searchWord = "SELECT * FROM Taxpayer WHERE (TaxPayerLastName Like '%" + tbSearch.Text.ToString() + "%') OR (TaxPayerFirstName Like '%" + tbSearch.Text.ToString() + "%') OR (TaxpayerID Like '%" + tbSearch.Text.ToString + "%')"
        SqlDataSource1.SelectCommand = searchWord
    End Sub
End Class
