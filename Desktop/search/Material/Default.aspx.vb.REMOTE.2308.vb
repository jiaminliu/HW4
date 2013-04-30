
Partial Class Default2
    Inherits System.Web.UI.Page

    Protected Sub SearchBTN_Click(sender As Object, e As System.EventArgs) Handles SearchBTN.Click
        Dim Keyword As String
        Dim isnum As Boolean
        Dim searchword As String

        Keyword = SearchTB.Text
        'Check to see if the text entered are all numbers


        'Check to see if the keyword is number
        isnum = IsNumeric(Keyword)
        'Search with text and in book

        If isnum = False Then
            searchword = "SELECT * FROM slpl_allMaterial WHERE ( title Like '%" + Keyword + "%') OR (author Like '%" + Keyword + "%') OR (publisher like '%" + Keyword + "%') OR (callNumber like '%" + Keyword + "%')"
            SqlDataSource1.SelectCommand = searchword
            'Search by numeric values in book DB
        ElseIf isnum = True Then
            searchword = "SELECT * FROM slpl_allMaterial WHERE ( bookID Like '%" + Keyword + "%') OR (ISBN Like '%" + Keyword + "%') "
            SqlDataSource1.SelectCommand = searchword
        End If
    End Sub
End Class
