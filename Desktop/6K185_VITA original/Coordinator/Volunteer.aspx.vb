
Partial Class About
    Inherits System.Web.UI.Page

    Protected Sub btnSearch_Click(sender As Object, e As System.EventArgs) Handles btnSearch.Click
        Dim searchWord As String
        searchWord = "SELECT * FROM Volunteer WHERE (VolunteerID Like '%" + tbSearch.Text.ToString() + "%') OR (VolunteerFirstName Like '%" + tbSearch.Text.ToString() + "%') OR (VolunteerLastName Like '%" + tbSearch.Text.ToString + "%') "
        SqlDataSource1.SelectCommand = searchWord
    End Sub



End Class
