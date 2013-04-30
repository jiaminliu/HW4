
Partial Class Default2
    Inherits System.Web.UI.Page

<<<<<<< HEAD
   
    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If Not Page.PreviousPage Is Nothing Then

            'Find the search content from master page
            'Dim placeHolder1 As Control = PreviousPage.Controls(0).FindControl("SourceTB")

            Dim SourceTextBox As TextBox = CType(PreviousPage.Controls(0).FindControl("SourceTB"), TextBox)

            'Read the content as String
            Dim Keyword As String
            Keyword = SourceTextBox.Text.ToString

            Dim isnum As Boolean
            Dim searchword As String
            'Check to see if the text entered are all numbers
            isnum = IsNumeric(Keyword)

            If isnum = False Then
                searchword = "SELECT * FROM slpl_allMaterial WHERE ( title Like '%" + Keyword + "%') OR (author Like '%" + Keyword + "%') OR (publisher like '%" + Keyword + "%') OR (callNumber like '%" + Keyword + "%')"
                SqlDataSource1.SelectCommand = searchword
            Else
                searchword = "SELECT * FROM slpl_allMaterial WHERE ( bookID Like '%" + Keyword + "%') OR (ISBN Like '%" + Keyword + "%') OR (publishYear like '%" + Keyword + "%')"
                SqlDataSource1.SelectCommand = searchword
            End If


        ElseIf Page.PreviousPage Is Nothing Then
            Dim searchword As String
            searchword = "SELECT * FROM slpl_allMaterial"
            SqlDataSource1.SelectCommand = searchword

=======
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
>>>>>>> a331eb50eae7ed0b5c69132ee28e497079d25242
        End If
    End Sub
End Class
