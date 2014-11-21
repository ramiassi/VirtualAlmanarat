<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/Student.Master" CodeBehind="showcategorystudent.aspx.vb" Inherits="VirtualAlManarat.showcategorystudent" 
    title="الدورات المفتتحة للتسجيل" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2><% Response.Write(Request("catName").ToString())%></h2>
    <asp:DetailsView ID="DetailsViewCourses" runat="server" Height="100%" 
        Width="100%" AutoGenerateRows="False" CssClass="art-box" 
        DataKeyNames="course_ID" DataSourceID="AccessDataSourceCourses">
        <Fields>
            <asp:BoundField DataField="course_ID" HeaderText="معرف الدورة" 
                InsertVisible="False" ReadOnly="True" SortExpression="course_ID" />
            <asp:BoundField DataField="courseName" HeaderText="اسم الدورة" 
                SortExpression="courseName" />
            <asp:BoundField DataField="courseDesc" HeaderText="وصف الدورة" 
                SortExpression="courseDesc" />
            <asp:BoundField DataField="StartDate" DataFormatString="{0:d}" 
                HeaderText="تبدأ في" SortExpression="StartDate" />
            <asp:BoundField DataField="EndDate" DataFormatString="{0:d}" 
                HeaderText="تننتهي في" SortExpression="EndDate" />
            <asp:BoundField DataField="Sessions" HeaderText="عدد الجلسات" 
                SortExpression="Sessions" />
            <asp:BoundField DataField="courseTime" DataFormatString="{0:t}" 
                HeaderText="التوقيت" SortExpression="courseTime" />
            <asp:BoundField DataField="Price" HeaderText="الرسوم" SortExpression="Price" />
            <asp:BoundField DataField="Teacher" HeaderText="المدرس" 
                SortExpression="Teacher" />
            <asp:CheckBoxField DataField="Certificate" HeaderText="توجد شهادة" 
                SortExpression="Certificate" />
            <asp:CheckBoxField DataField="Open" HeaderText="التسجيل مفتوح" 
                SortExpression="Open" />
            <asp:ButtonField Text="التسجيل في الدورة" ButtonType="Button" 
                InsertVisible="False" >
                <ControlStyle CssClass="art-button" />
            </asp:ButtonField>
        </Fields>
    </asp:DetailsView>
    <asp:AccessDataSource ID="AccessDataSourceCourses" runat="server" 
        DataFile="~/App_Data/manDB.mdb" 
        SelectCommand="SELECT * FROM [Course] WHERE ([Category] = ?)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Category" QueryStringField="catID" 
                Type="Int32" />
        </SelectParameters>
    </asp:AccessDataSource>
    <asp:AccessDataSource ID="AccessDataSourceCourse_Student" runat="server" 
        DataFile="~/App_Data/manDB.mdb" 
        DeleteCommand="DELETE FROM [course_student] WHERE [ID] = ?" 
        InsertCommand="INSERT INTO [course_student] ([courseID], [studentID], [studentActive]) VALUES (?, ?, ?)" 
        SelectCommand="SELECT * FROM [course_student]" 
        UpdateCommand="UPDATE [course_student] SET [courseID] = ?, [studentID] = ?, [studentActive] = ? WHERE [ID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="courseID" Type="Int32" />
            <asp:Parameter Name="studentID" Type="Int32" />
            <asp:Parameter Name="studentActive" Type="Boolean" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="courseID" Type="Int32" />
            <asp:Parameter Name="studentID" Type="Int32" />
            <asp:Parameter Name="studentActive" Type="Boolean" />
        </InsertParameters>
    </asp:AccessDataSource>
</asp:Content>
