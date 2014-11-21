Public Partial Class payment
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub ButtonPrintPayment_Click(ByVal sender As Object, ByVal e As EventArgs) Handles ButtonPrintPayment.Click
        Response.Redirect("PrintPayment.aspx")
    End Sub
End Class