<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="AdminCourses.aspx.vb" Inherits="VirtualAlManarat.AdminCourses" 
    title="إدارة الدورات" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DetailsView ID="DetailsViewCourses" runat="server" Height="50px" 
        Width="100%" AllowPaging="True" AutoGenerateRows="False" 
        DataKeyNames="course_ID" DataSourceID="AccessDataSourceCourses">
        <Fields>
            <asp:BoundField DataField="course_ID" HeaderText="معرف الدورة" 
                InsertVisible="False" SortExpression="course_ID">
                <HeaderStyle Font-Bold="True" />
            </asp:BoundField>
            <asp:BoundField DataField="Category" HeaderText="فئة الدورة" 
                SortExpression="Category">
                <HeaderStyle Font-Bold="True" />
            </asp:BoundField>
            <asp:BoundField DataField="courseName" HeaderText="اسم الدورة" 
                SortExpression="courseName">
                <HeaderStyle Font-Bold="True" />
            </asp:BoundField>
            <asp:BoundField DataField="courseDesc" HeaderText="وصف الدورة" 
                SortExpression="courseDesc">
                <HeaderStyle Font-Bold="True" />
            </asp:BoundField>
            <asp:BoundField ApplyFormatInEditMode="True" DataField="StartDate" 
                DataFormatString="{0:d}" HeaderText="تبدأ في" SortExpression="StartDate">
                <HeaderStyle Font-Bold="True" />
            </asp:BoundField>
            <asp:BoundField ApplyFormatInEditMode="True" DataField="EndDate" 
                DataFormatString="{0:d}" HeaderText="تنتهي في" SortExpression="EndDate">
                <HeaderStyle Font-Bold="True" />
            </asp:BoundField>
            <asp:BoundField DataField="Sessions" HeaderText="عدد الجلسات" 
                SortExpression="Sessions">
                <HeaderStyle Font-Bold="True" />
            </asp:BoundField>
            <asp:BoundField ApplyFormatInEditMode="True" DataField="courseTime" 
                DataFormatString="{0:t}" HeaderText="التوقيت" SortExpression="courseTime">
                <HeaderStyle Font-Bold="True" />
            </asp:BoundField>
            <asp:BoundField DataField="Price" HeaderText="الرسوم" SortExpression="Price">
                <HeaderStyle Font-Bold="True" />
            </asp:BoundField>
            <asp:BoundField DataField="Teacher" HeaderText="المدرس" 
                SortExpression="Teacher">
                <HeaderStyle Font-Bold="True" />
            </asp:BoundField>
            <asp:CheckBoxField DataField="Certificate" HeaderText="توجد شهادة" 
                SortExpression="Certificate">
                <HeaderStyle Font-Bold="True" />
            </asp:CheckBoxField>
            <asp:CheckBoxField DataField="Open" HeaderText="مفتوحة للتسجيل" 
                SortExpression="Open">
                <HeaderStyle Font-Bold="True" />
            </asp:CheckBoxField>
            <asp:CommandField CancelText="إلغاء الأمر" DeleteText="حذف" EditText="تعديل" 
                InsertText="إضافة" NewText="جديد" SelectText="اختيار" ShowDeleteButton="True" 
                ShowEditButton="True" ShowInsertButton="True" UpdateText="تحديث" />
        </Fields>
    </asp:DetailsView>
    <asp:AccessDataSource ID="AccessDataSourceCourses" runat="server" 
        DataFile="~/App_Data/manDB.mdb" 
        DeleteCommand="DELETE FROM [Course] WHERE [course_ID] = ?" 
        SelectCommand="SELECT * FROM [Course]" 
        
        UpdateCommand="UPDATE [Course] SET [courseName] = ?, [courseDesc] = ?, [Category] = ?, [StartDate] = ?, [EndDate] = ?, [Sessions] = ?, [courseTime] = ?, [Price] = ?, [Teacher] = ?, [Certificate] = ?, [Open] = ? WHERE [course_ID] = ?" 
        InsertCommand="INSERT INTO [Course] ([course_ID], [courseName], [courseDesc], [Category], [StartDate], [EndDate], [Sessions], [courseTime], [Price], [Teacher], [Certificate], [Open]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)">
        <DeleteParameters>
            <asp:Parameter Name="course_ID" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="courseName" Type="String" />
            <asp:Parameter Name="courseDesc" Type="String" />
            <asp:Parameter Name="Category" Type="Int32" />
            <asp:Parameter Name="StartDate" Type="DateTime" />
            <asp:Parameter Name="EndDate" Type="DateTime" />
            <asp:Parameter Name="Sessions" Type="Int32" />
            <asp:Parameter Name="courseTime" Type="DateTime" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="Teacher" Type="String" />
            <asp:Parameter Name="Certificate" Type="Boolean" />
            <asp:Parameter Name="Open" Type="Boolean" />
            <asp:Parameter Name="course_ID" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="course_ID" Type="Int32" />
            <asp:Parameter Name="courseName" Type="String" />
            <asp:Parameter Name="courseDesc" Type="String" />
            <asp:Parameter Name="Category" Type="Int32" />
            <asp:Parameter Name="StartDate" Type="DateTime" />
            <asp:Parameter Name="EndDate" Type="DateTime" />
            <asp:Parameter Name="Sessions" Type="Int32" />
            <asp:Parameter Name="courseTime" Type="DateTime" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="Teacher" Type="String" />
            <asp:Parameter Name="Certificate" Type="Boolean" />
            <asp:Parameter Name="Open" Type="Boolean" />
        </InsertParameters>
    </asp:AccessDataSource>
</asp:Content>
