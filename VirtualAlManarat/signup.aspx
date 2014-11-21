<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="signup.aspx.vb" Inherits="VirtualAlManarat.signup" 
    title="تسجيل مستخدم جديد" %>
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
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TextBoxUser"></asp:RequiredFieldValidator>&nbsp;</td>
        </tr>
        <tr>
            <td>
               كلمة المرور:
            </td>
            <td>
                <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextBoxPass"></asp:RequiredFieldValidator>&nbsp;</td>
        </tr>
        <tr>
            <td>
            الاسم الكامل:
            </td>
            <td>
                <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="*" ControlToValidate="TextBoxName"></asp:RequiredFieldValidator>&nbsp;</td>
        </tr>
        <tr>
            <td>
               تاريخ الميلاد:
            </td>
            <td>
                <asp:Calendar ID="CalendarBirth" runat="server"
                    ShowDayHeader="False" VisibleDate="1995-01-01" ShowGridLines="True"></asp:Calendar>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
               المؤهلات:
            </td>
            <td>
                <asp:DropDownList ID="DropDownListQualification" runat="server">
                    <asp:ListItem>لا يوجد</asp:ListItem>
                    <asp:ListItem>طالب إعدادي</asp:ListItem>
                    <asp:ListItem>طالب ثانوي</asp:ListItem>
                    <asp:ListItem>طالب جامعي</asp:ListItem>
                    <asp:ListItem>طالب معهد</asp:ListItem>
                    <asp:ListItem>خريج جامعي</asp:ListItem>
                    <asp:ListItem>خريج معهد</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                العمل الحالي:    </td>
            <td>
                <asp:TextBox ID="TextBoxJob" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
              رقم الهاتف:
            </td>
            <td>
                <asp:TextBox ID="TextBoxPhone" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
               الموبايل:
            </td>
            <td>
                <asp:TextBox ID="TextBoxMobile" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
               البريد الالكتروني:
            </td>
            <td>
                <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="TextBoxEmail"></asp:RequiredFieldValidator>&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="قم بإدخال بريد الكتروني صالح" ControlToValidate="TextBoxEmail" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="ButtonLogin" runat="server" Text="طلب إنشاء الحساب" CssClass="art-button" />
            </td>
            <td>
                <asp:Label ID="LabelMsg" runat="server" Text="حدث خطأ، حاول مرة أخرى"
                    Visible="False" ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>لديك حساب؟ <a href="login.aspx"> قم بتسجيل الدخول</a></td>
        </tr>
    </table>
    <asp:AccessDataSource ID="AccessDataSourceStudent" runat="server" 
        DataFile="~/App_Data/manDB.mdb" 
        DeleteCommand="DELETE FROM [Student] WHERE [student_ID] = ?" 
        InsertCommand="INSERT INTO [Student] ([studentName], [Birth], [Qualification], [Job], [Phone], [Mobile], [Email]) VALUES (?, ?, ?, ?, ?, ?, ?)" 
        SelectCommand="SELECT * FROM [Student]" 
        UpdateCommand="UPDATE [Student] SET [studentName] = ?, [Birth] = ?, [Qualification] = ?, [Job] = ?, [Phone] = ?, [Mobile] = ?, [Email] = ? WHERE [student_ID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="student_ID" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="studentName" Type="String" />
            <asp:Parameter Name="Birth" Type="DateTime" />
            <asp:Parameter Name="Qualification" Type="String" />
            <asp:Parameter Name="Job" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Mobile" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="student_ID" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="studentName" Type="String" />
            <asp:Parameter Name="Birth" Type="DateTime" />
            <asp:Parameter Name="Qualification" Type="String" />
            <asp:Parameter Name="Job" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Mobile" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
        </InsertParameters>
    </asp:AccessDataSource>
</asp:Content>
