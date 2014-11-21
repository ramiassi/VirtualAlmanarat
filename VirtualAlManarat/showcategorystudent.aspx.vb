Public Partial Class showcategorystudent
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Protected Sub DetailsViewCourses_ItemCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewCommandEventArgs) Handles DetailsViewCourses.ItemCommand

        If Not Session("studentID") Is Nothing Then
            Dim courseID As Integer = Convert.ToInt32(DetailsViewCourses.SelectedValue)
            Dim studentID As Integer = Convert.ToInt32(Session("studentID"))

            AccessDataSourceCourse_Student.InsertParameters("courseID").DefaultValue = courseID
            AccessDataSourceCourse_Student.InsertParameters("studentID").DefaultValue = studentID
            AccessDataSourceCourse_Student.InsertParameters("studentActive").DefaultValue = False

            Try
                AccessDataSourceCourse_Student.Insert()
                Response.Write("<script>alert('تم تسجيلك بالدورة، عليك دفع المبلغ المترتب عليك')</script>")
            Catch ex As Exception
                Response.Write("<script>alert('حدث خطأ يرجى إعادة المحاولة')</script>")
            End Try

        Else
            Response.Redirect("Login.aspx")
        End If

    End Sub
End Class