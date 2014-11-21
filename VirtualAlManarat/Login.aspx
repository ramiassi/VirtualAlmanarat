<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="Login.aspx.vb" Inherits="VirtualAlManarat.Login" 
    title="تسجيل الدخول" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="form">
        <tr>
            <td>
               اسم المستخدم:
            </td>
            <td>
                <asp:TextBox ID="TextBoxUser" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
               كلمة المرور:
            </td>
            <td>
                <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="ButtonLogin" runat="server" Text="تسجيل دخول" CssClass="art-button" />
            </td>
            <td>
                <asp:Label ID="LabelMsg" runat="server" Text="محاولة دخول خاطئة" 
                    Visible="False" ForeColor="Red"></asp:Label>
            </td>
            <td><a href="signup.aspx">تسجيل مستخدم جديد</a></td>
        </tr>
    </table>
    <asp:AccessDataSource ID="AccessDataSourceStudents" runat="server" 
        DataFile="~/App_Data/manDB.mdb" 
        
        SelectCommand="SELECT [username], [password], [student_ID] FROM [Student] WHERE (([username] = ?) AND ([password] = ?))">
        <SelectParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>
</asp:Content>
