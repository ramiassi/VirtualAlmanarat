<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="AdminUsers.aspx.vb" Inherits="VirtualAlManarat.AdminUsers" 
    title="إدارة المستخدمين" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListView ID="ListViewStudent" runat="server" DataKeyNames="student_ID" 
        DataSourceID="AccessDataSourceUsers" InsertItemPosition="LastItem">
        <ItemTemplate>
            <td runat="server" style="">
                معرف الطالب:
                <asp:Label ID="student_IDLabel" runat="server" 
                    Text='<%# Eval("student_ID") %>' />
                <br />
                اسم المستخدم:
                <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
                <br />
               كلمة المرور:
                <asp:Label ID="passwordLabel" runat="server" Text='<%# Eval("password") %>' />
                <br />
                اسم الطالب:
                <asp:Label ID="studentNameLabel" runat="server" 
                    Text='<%# Eval("studentName") %>' />
                <br />
                تاريخ الميلاد:
                <asp:Label ID="BirthLabel" runat="server" Text='<%# Eval("Birth") %>' />
                <br />
               المؤهلات:
                <asp:Label ID="QualificationLabel" runat="server" 
                    Text='<%# Eval("Qualification") %>' />
                <br />
                العمل الحالي:
                <asp:Label ID="JobLabel" runat="server" Text='<%# Eval("Job") %>' />
                <br />
               الهاتف:
                <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
                <br />
               الموبايل:
                <asp:Label ID="MobileLabel" runat="server" Text='<%# Eval("Mobile") %>' />
                <br />
                البريد الالكتروني:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="تعديل" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                   Text="حذف" />
            </td>
        </ItemTemplate>
        <AlternatingItemTemplate>
            <td runat="server" style="">
                معرف الطالب:
                <asp:Label ID="student_IDLabel" runat="server" 
                    Text='<%# Eval("student_ID") %>' />
                <br />
                اسم المستخدم:
                <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
                <br />
               كلمة المرور:
                <asp:Label ID="passwordLabel" runat="server" Text='<%# Eval("password") %>' />
                <br />
                اسم الطالب:
                <asp:Label ID="studentNameLabel" runat="server" 
                    Text='<%# Eval("studentName") %>' />
                <br />
                تاريخ الميلاد:
                <asp:Label ID="BirthLabel" runat="server" Text='<%# Eval("Birth") %>'  />
                <br />
               المؤهلات:
                <asp:Label ID="QualificationLabel" runat="server" 
                    Text='<%# Eval("Qualification") %>' />
                <br />
                العمل الحالي:
                <asp:Label ID="JobLabel" runat="server" Text='<%# Eval("Job") %>' />
                <br />
               الهاتف:
                <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
                <br />
               الموبايل:
                <asp:Label ID="MobileLabel" runat="server" Text='<%# Eval("Mobile") %>' />
                <br />
                البريد الالكتروني:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="تعديل" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                   Text="حذف" />
            </td>
        </AlternatingItemTemplate>
        <EmptyDataTemplate>
            <table style="">
                <tr>
                    <td>
                        No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <td runat="server" style="">
                اسم المستخدم:
                <br />
                <asp:TextBox ID="usernameTextBox" runat="server" 
                    Text='<%# Bind("username") %>' />
                <br />
               كلمة المرور:
               <br />
                <asp:TextBox ID="passwordTextBox" runat="server" 
                    Text='<%# Bind("password")  %>' TextMode="Password" />
                <br />
                اسم الطالب:
                <br />
                <asp:TextBox ID="studentNameTextBox" runat="server" 
                    Text='<%# Bind("studentName") %>' />
                <br />
                تاريخ الميلاد:
                <br />
                <asp:TextBox ID="BirthTextBox" runat="server" Text='<%# Bind("Birth") %>' />
                <br />
               المؤهلات:
               <br />
                <asp:TextBox ID="QualificationTextBox" runat="server" 
                    Text='<%# Bind("Qualification") %>' />
                <br />
                العمل الحالي:
                <br />
                <asp:TextBox ID="JobTextBox" runat="server" Text='<%# Bind("Job") %>' />
                <br />
               الهاتف:
               <br />
                <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                <br />
               الموبايل:
               <br />
                <asp:TextBox ID="MobileTextBox" runat="server" Text='<%# Bind("Mobile") %>' />
                <br />
                البريد الالكتروني:
                <br />
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                    Text="إضافة" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="إلغاء الأمر" />
            </td>
        </InsertItemTemplate>
        <LayoutTemplate>
            <table runat="server" border="0" style="">
                <tr ID="itemPlaceholderContainer" runat="server">
                    <td ID="itemPlaceholder" runat="server">
                    </td>
                </tr>
            </table>
            <div style="">
                <asp:DataPager ID="DataPager1" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                            ShowNextPageButton="False" ShowPreviousPageButton="False" />
                        <asp:NumericPagerField />
                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" 
                            ShowNextPageButton="False" ShowPreviousPageButton="False" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
        <EditItemTemplate>
            <td runat="server" style="">
                معرف الطالب:
                <asp:Label ID="student_IDLabel1" runat="server" 
                    Text='<%# Eval("student_ID") %>' />
                <br />
                اسم المستخدم:
                <asp:TextBox ID="usernameTextBox" runat="server" 
                    Text='<%# Bind("username") %>' />
                <br />
               كلمة المرور:
                <asp:TextBox ID="passwordTextBox" runat="server" 
                    Text='<%# Bind("password") %>' />
                <br />
                اسم الطالب:
                <asp:TextBox ID="studentNameTextBox" runat="server" 
                    Text='<%# Bind("studentName") %>' />
                <br />
                تاريخ الميلاد:
                <asp:TextBox ID="BirthTextBox" runat="server" Text='<%# Bind("Birth") %>' />
                <br />
               المؤهلات:
                <asp:TextBox ID="QualificationTextBox" runat="server" 
                    Text='<%# Bind("Qualification") %>' />
                <br />
                العمل الحالي:
                <asp:TextBox ID="JobTextBox" runat="server" Text='<%# Bind("Job") %>' />
                <br />
               الهاتف:
                <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                <br />
               الموبايل:
                <asp:TextBox ID="MobileTextBox" runat="server" Text='<%# Bind("Mobile") %>' />
                <br />
                البريد الالكتروني:
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                    Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Cancel" />
            </td>
        </EditItemTemplate>
        <SelectedItemTemplate>
            <td runat="server" style="">
                معرف الطالب:
                <asp:Label ID="student_IDLabel" runat="server" 
                    Text='<%# Eval("student_ID") %>' />
                <br />
                اسم المستخدم:
                <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
                <br />
               كلمة المرور:
                <asp:Label ID="passwordLabel" runat="server" Text='<%# Eval("password") %>' />
                <br />
                اسم الطالب:
                <asp:Label ID="studentNameLabel" runat="server" 
                    Text='<%# Eval("studentName") %>' />
                <br />
                تاريخ الميلاد:
                <asp:Label ID="BirthLabel" runat="server" Text='<%# Eval("Birth") %>' />
                <br />
               المؤهلات:
                <asp:Label ID="QualificationLabel" runat="server" 
                    Text='<%# Eval("Qualification") %>' />
                <br />
                العمل الحالي:
                <asp:Label ID="JobLabel" runat="server" Text='<%# Eval("Job") %>' />
                <br />
               الهاتف:
                <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
                <br />
               الموبايل:
                <asp:Label ID="MobileLabel" runat="server" Text='<%# Eval("Mobile") %>' />
                <br />
                البريد الالكتروني:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="تعديل" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                   Text="حذف" />
            </td>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:AccessDataSource ID="AccessDataSourceUsers" runat="server" 
        DataFile="~/App_Data/manDB.mdb" 
        DeleteCommand="DELETE FROM [Student] WHERE [student_ID] = ?" 
        InsertCommand="INSERT INTO [Student] ([student_ID], [username], [password], [studentName], [Birth], [Qualification], [Job], [Phone], [Mobile], [Email]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" 
        SelectCommand="SELECT * FROM [Student]" 
        UpdateCommand="UPDATE [Student] SET [username] = ?, [password] = ?, [studentName] = ?, [Birth] = ?, [Qualification] = ?, [Job] = ?, [Phone] = ?, [Mobile] = ?, [Email] = ? WHERE [student_ID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="student_ID" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
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
            <asp:Parameter Name="student_ID" Type="Int32" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
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
