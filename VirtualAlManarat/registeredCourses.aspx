<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/Student.Master" CodeBehind="registeredCourses.aspx.vb" Inherits="VirtualAlManarat.registeredCourses" 
    title="الدورات المسجل بها" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridViewStudentCourses" runat="server" 
        AutoGenerateColumns="False" DataSourceID="AccessDataSourceStudentCourses">
        <Columns>
            <asp:BoundField DataField="courseID" HeaderText="معرف الدورة" 
                SortExpression="courseID" />
            <asp:BoundField DataField="categoryName" HeaderText="فئة الدورة" 
                SortExpression="categoryName" />
            <asp:BoundField DataField="courseName" HeaderText="اسم الدورة" 
                SortExpression="courseName" />
            <asp:BoundField DataField="StartDate" HeaderText="تبدأ في" 
                SortExpression="StartDate" DataFormatString="{0:d}" />
            <asp:BoundField DataField="EndDate" HeaderText="تنتهي في" 
                SortExpression="EndDate" DataFormatString="{0:d}" />
            <asp:BoundField DataField="Sessions" HeaderText="عدد الجلسات" 
                SortExpression="Sessions" />
            <asp:BoundField DataField="courseTime" HeaderText="التوقيت" 
                SortExpression="courseTime" DataFormatString="{0:t}" />
            <asp:BoundField DataField="Price" HeaderText="الرسوم" SortExpression="Price" />
            <asp:BoundField DataField="Teacher" HeaderText="المدرس" 
                SortExpression="Teacher" />
            <asp:CheckBoxField DataField="Certificate" HeaderText="توجد شهادة" 
                SortExpression="Certificate" />
            <asp:CheckBoxField DataField="studentActive" HeaderText="دفعت الرسوم" 
                SortExpression="studentActive" />
        </Columns>
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSourceStudentCourses" runat="server" 
        DataFile="~/App_Data/manDB.mdb" 
        
        SelectCommand="SELECT course_student.courseID, Category.categoryName, Course.courseName, Course.StartDate, Course.EndDate, Course.Sessions, Course.courseTime, Course.Price, Course.Teacher, Course.Certificate, course_student.studentActive FROM ((Category INNER JOIN Course ON Category.category_ID = Course.Category) INNER JOIN course_student ON Course.course_ID = course_student.courseID) WHERE (course_student.studentID = ?)">
        <SelectParameters>
            <asp:QueryStringParameter Name="?" QueryStringField="stdID" />
        </SelectParameters>
    </asp:AccessDataSource>
</asp:Content>
