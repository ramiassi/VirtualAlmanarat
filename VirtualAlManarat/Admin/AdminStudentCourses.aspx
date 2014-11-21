<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="AdminStudentCourses.aspx.vb" Inherits="VirtualAlManarat.AdminStudentCourses" 
    title="إدارة تسجيل الطلاب" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridViewStudentCourses" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" 
        DataSourceID="AccessDataSourceStudentCourses" DataKeyNames="ID">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="م" ReadOnly="True" 
                SortExpression="ID" />
            <asp:BoundField DataField="courseName" HeaderText="اسم الدورة" ReadOnly="True" 
                SortExpression="courseName" />
            <asp:BoundField ApplyFormatInEditMode="True" DataField="StartDate" 
                DataFormatString="{0:d}" HeaderText="تبدأ في" ReadOnly="True" 
                SortExpression="StartDate" />
            <asp:BoundField ApplyFormatInEditMode="True" DataField="EndDate" 
                DataFormatString="{0:d}" HeaderText="تنتهي في" ReadOnly="True" 
                SortExpression="EndDate" />
            <asp:BoundField DataField="Price" HeaderText="الرسوم" ReadOnly="True" 
                SortExpression="Price" />
            <asp:CheckBoxField DataField="Open" HeaderText="مفتتحة للتسجيل" ReadOnly="True" 
                SortExpression="Open" />
            <asp:BoundField DataField="studentName" HeaderText="اسم الطالب" ReadOnly="True" 
                SortExpression="studentName" />
            <asp:BoundField DataField="Phone" HeaderText="الهاتف" ReadOnly="True" 
                SortExpression="Phone" />
            <asp:BoundField DataField="Mobile" HeaderText="الموبايل" ReadOnly="True" 
                SortExpression="Mobile" />
            <asp:BoundField DataField="Email" HeaderText="بريد الكتروني" 
                InsertVisible="False" ReadOnly="True" SortExpression="Email" />
            <asp:CheckBoxField DataField="studentActive" HeaderText="تثبيت التسجيل" 
                SortExpression="studentActive" />
            <asp:CommandField CancelText="إلغاء الأمر" DeleteText="حذف" EditText="تعديل" 
                ShowDeleteButton="True" ShowEditButton="True" UpdateText="تحديث" />
        </Columns>
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSourceStudentCourses" runat="server" 
        DataFile="~/App_Data/manDB.mdb" 
        SelectCommand="SELECT Course.courseName, Course.StartDate, Course.EndDate, Course.Price, Course.[Open], Student.studentName, Student.Phone, Student.Mobile, course_student.studentActive, Student.Email, course_student.ID FROM ((Student INNER JOIN course_student ON Student.student_ID = course_student.studentID) INNER JOIN Course ON course_student.courseID = Course.course_ID)" 
        UpdateCommand="UPDATE course_student SET studentActive = ? WHERE (ID = ?)" 
        DeleteCommand="DELETE FROM course_student WHERE (ID = ?)">
        <UpdateParameters>
            <asp:Parameter Name="ID" DbType="Int32" />
        </UpdateParameters>
        <DeleteParameters>
            <asp:Parameter Name="ID" DbType="Int32" />
        </DeleteParameters>
    </asp:AccessDataSource>
</asp:Content>
