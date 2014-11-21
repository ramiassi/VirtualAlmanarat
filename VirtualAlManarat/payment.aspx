<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/Student.Master" CodeBehind="payment.aspx.vb" Inherits="VirtualAlManarat.payment" 
    title="الدفع والمحاسبة" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridViewPayment" runat="server" 
    AutoGenerateColumns="False" DataKeyNames="ID" 
    DataSourceID="AccessDataSourcePayment">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" CancelText="إلغاء الأمر" 
                DeleteText="حذف" UpdateText="تحديث" />
            <asp:BoundField DataField="categoryName" HeaderText="فئة الدورة" 
                SortExpression="categoryName" />
            <asp:BoundField DataField="courseName" HeaderText="اسم الدورة" 
                SortExpression="courseName" />
            <asp:BoundField DataField="StartDate" DataFormatString="{0:d}" 
                HeaderText="تبدأ في" SortExpression="StartDate" />
            <asp:BoundField DataField="EndDate" DataFormatString="{0:d}" 
                HeaderText="تنتهي في" SortExpression="EndDate" />
            <asp:BoundField DataField="courseTime" DataFormatString="{0:t}" 
                HeaderText="التوقيت" SortExpression="courseTime" />
            <asp:BoundField DataField="Price" HeaderText="الرسوم" SortExpression="Price" />
            <asp:BoundField DataField="ID" HeaderText="م" InsertVisible="False" 
                SortExpression="ID" Visible="False" />
        </Columns>
    </asp:GridView>
<asp:AccessDataSource ID="AccessDataSourcePayment" runat="server" 
    DataFile="~/App_Data/manDB.mdb" 
    DeleteCommand="DELETE FROM course_student WHERE (ID = ?)" 
    SelectCommand="SELECT Category.categoryName, Course.courseName, Course.StartDate, Course.EndDate, Course.courseTime, Course.Price, course_student.ID FROM ((Course INNER JOIN course_student ON Course.course_ID = course_student.courseID) INNER JOIN Category ON Course.Category = Category.category_ID) WHERE (course_student.studentID = ?)">
    <SelectParameters>
        <asp:QueryStringParameter Name="?" QueryStringField="stdID" />
    </SelectParameters>
</asp:AccessDataSource>
    <p>المجموع: 
        <asp:Repeater ID="RepeaterTotal" runat="server" 
            DataSourceID="AccessDataSourceTotal">
            <ItemTemplate>
                <b><%#Eval("Total")%></b>
            </ItemTemplate>
        </asp:Repeater>
        <asp:AccessDataSource ID="AccessDataSourceTotal" runat="server" 
            DataFile="~/App_Data/manDB.mdb" 
            
            SelectCommand="SELECT SUM(Course.Price) AS Total, course_student.ID AS PaymentID FROM (Course INNER JOIN course_student ON Course.course_ID = course_student.courseID) WHERE (course_student.studentID = ?) AND (course_student.studentActive = False) GROUP BY course_student.ID">
            <SelectParameters>
                <asp:QueryStringParameter Name="?" QueryStringField="stdID" />
            </SelectParameters>
        </asp:AccessDataSource>
    </p>
    <asp:Button ID="ButtonPrintPayment" runat="server" Text="طباعة إشعار للدفع" CssClass="art-button" />
</asp:Content>
