Imports System.Data.SqlClient
Partial Class Account_Register
    Inherits System.Web.UI.Page

    Protected Sub RegisterUser_ActiveStepChanged(sender As Object, e As System.EventArgs) Handles RegisterUser.ActiveStepChanged
        If RegisterUser.ActiveStep.Title = "Complete" Then
            ' Dim UserSettings As Label = CType(RegisterUserWizardStep.FindControl("UserNameLabel"), Label)


            ' Programmatically reference the TextBox controls           
            ' Dim FirstName As TextBox = CType(UserSettings.FindControl("tb_FirstName"), TextBox)
            ' Dim LastName As TextBox = CType(UserSettings.FindControl("tb_LastName"), TextBox)
            'Dim PhoneNum As TextBox = CType(UserSettings.FindControl("tb_phonenum"), TextBox)
            'Dim Email As TextBox = CType(UserSettings.FindControl("tb_email"), TextBox)

            'Dim Certification As String = ddl_certificate.SelectedItem.Text
            'Dim Status As String = ddl_status.SelectedItem.Text
            'Dim Agreement As String = ddl_agreement.SelectedItem.Text
            ' Update the UserProfiles record for this user           
            ' Get the UserId of the just-added user  
            Dim newlabel As Label = CType(VolunteerProfile.FindControl("Usernamelabel"), Label)

            'Dim newUser As MembershipUser = Membership.GetUser(newlabel.Text)
            labelMember.Text = newlabel.Text

            'Dim newUserID As Guid = CType(newUser.ProviderUserKey, Guid)

            'Add the newly created user to the "volunteer" role
            'Roles.AddUserToRole(newUser.UserName, "Volunteer")

            ' Insert a new record into UserProfiles           
            'Dim connectionString As String = ConfigurationManager.ConnectionStrings("fk185_ClassConnectionString").ConnectionString
            'Dim insertSql As String = "INSERT INTO Volunteer ([UserID], [VolunteerFirstName], [[VolunteerLastName], [VolunteerCertification], [VolunteerStatus],[VolunteerPhone],[VolunteerEmail],[VolunteerAgreement) VALUES (@UserId,  @FirstName,  @LastName,  @Certification, @Status, @PhoneNum, @Email, @Agreement)"


            ' Using myConnection As New SqlConnection(connectionString)
            '    myConnection.Open()
            '   Dim myCommand As New SqlCommand(insertSql, myConnection)
            '
            '   myCommand.Parameters.AddWithValue("@FirstName", tb_FirstName.Text.Trim())
            '  myCommand.Parameters.AddWithValue("@LastName", tb_LastName.Text.Trim())
            '    myCommand.Parameters.AddWithValue("@Email", tb_email.Text.Trim())
            ' myCommand.Parameters.AddWithValue("@PhoneNum", tb_phonenum.Text.Trim())

            '   myCommand.Parameters.AddWithValue("@UserId", newUserID)
            '  myCommand.Parameters.AddWithValue("@Certification", ddl_certificate.SelectedItem.Text)
            ' myCommand.Parameters.AddWithValue("@Status", ddl_status.SelectedItem.Text)
            'myCommand.Parameters.AddWithValue("@Agreement", ddl_agreement.SelectedItem.Text)
            'myCommand.ExecuteNonQuery()
            'myConnection.Close()
            'End Using
        End If
    End Sub

    
   

  
End Class
