Public Partial Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub ButtonLogin_Click(ByVal sender As Object, ByVal e As EventArgs) Handles ButtonLogin.Click
        AccessDataSourceStudents.SelectParameters("username").DefaultValue = TextBoxUser.Text
        AccessDataSourceStudents.SelectParameters("password").DefaultValue = TextBoxPass.Text
        Dim dv As DataView = AccessDataSourceStudents.Select(DataSourceSelectArguments.Empty)
        If dv.Count > 0 Then

            If Session("studentID") Is Nothing Then
                Session.Add("studentID", dv(0)("student_ID"))
                Session.Add("username", dv(0)("username"))
            Else
                Session("studentID") = dv(0)("student_ID")
                Session("username") = dv(0)("username")
            End If

            Response.Redirect("DefaultStudent.aspx")
        Else
            Response.Write("<script>alert('محاولة دخول خاطئة، يرجى إعادة المحاولة')</script>")
        End If

    End Sub
End Class