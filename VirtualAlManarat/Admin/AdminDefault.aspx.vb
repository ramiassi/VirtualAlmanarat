Public Partial Class AdminDefault
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Protected Sub ButtonLogin_Click(ByVal sender As Object, ByVal e As EventArgs) Handles ButtonLogin.Click
        AccessDataSourceAdmins.SelectParameters("username").DefaultValue = TextBoxUser.Text
        AccessDataSourceAdmins.SelectParameters("password").DefaultValue = TextBoxPass.Text
        Dim dv As DataView = AccessDataSourceAdmins.Select(DataSourceSelectArguments.Empty)
        If dv.Count > 0 Then

            If Session("adminID") Is Nothing Then
                Session.Add("adminID", dv(0)("Admin_ID"))
                Session.Add("username", dv(0)("username"))
            Else
                Session.Add("adminID", dv(0)("Admin_ID"))
                Session("username") = dv(0)("username")
            End If

            Response.Redirect("AdminStudentCourses.aspx")
        Else
            Response.Write("<script>alert('محاولة دخول خاطئة، يرجى إعادة المحاولة')</script>")
        End If
    End Sub

End Class