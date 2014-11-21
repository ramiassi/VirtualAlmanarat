Public Partial Class Student
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Protected Sub LinkButtonLogout_Click(ByVal sender As Object, ByVal e As EventArgs) Handles LinkButtonLogout.Click, LinkButtonLogout1.Click, LinkButton2.Click
        Session.RemoveAll()
    End Sub
End Class