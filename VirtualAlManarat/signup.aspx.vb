Public Partial Class signup
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub ButtonLogin_Click(ByVal sender As Object, ByVal e As EventArgs) Handles ButtonLogin.Click
        'AccessDataSourceStudent.InsertParameters("").DefaultValue = TextBoxUser.Text
        'AccessDataSourceStudent.InsertParameters("").DefaultValue = TextBoxPass.Text
        AccessDataSourceStudent.InsertParameters("studentName").DefaultValue = TextBoxName.Text
        AccessDataSourceStudent.InsertParameters("Birth").DefaultValue = CalendarBirth.SelectedDate.ToShortDateString()
        AccessDataSourceStudent.InsertParameters("Qualification").DefaultValue = DropDownListQualification.SelectedValue.ToString()
        AccessDataSourceStudent.InsertParameters("Job").DefaultValue = TextBoxJob.Text
        AccessDataSourceStudent.InsertParameters("Phone").DefaultValue = TextBoxPhone.Text
        AccessDataSourceStudent.InsertParameters("Mobile").DefaultValue = TextBoxMobile.Text
        AccessDataSourceStudent.InsertParameters("Email").DefaultValue = TextBoxEmail.Text
        Try
            AccessDataSourceStudent.Insert()
            LabelMsg.ForeColor = Drawing.Color.Green
            LabelMsg.Text = "تم التسجيل بنجاح"
        Catch ex As OleDb.OleDbException
            LabelMsg.ForeColor = Drawing.Color.Red
            LabelMsg.Text = "error: " & ex.Message
        Finally
            LabelMsg.Visible = True
        End Try

    End Sub
End Class