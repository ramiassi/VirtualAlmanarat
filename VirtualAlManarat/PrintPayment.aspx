<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PrintPayment.aspx.vb" Inherits="VirtualAlManarat.PrintPayment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>طباعة الإشعار</title>
</head>
<body>
    <form id="form1" runat="server" >
    <div>
        <table style="width: 50%;border: solid 1px;direction: rtl;" align="center">
            <tr>
                <td colspan="2" style="text-align: center">
                    <h1>إلى المصرف</h1>
                </td>
            </tr>
            <tr>
                <td>للتحويل إلى الحساب رقم:</td>
                <td>
                    MAN121323456789</td>
            </tr>
            <tr>
                <td>بتاريخ:
                    &nbsp;
                </td>
                <td>
                    <% Response.Write(Date.Now.ToShortDateString())%>
                </td>
            </tr>
            <tr>
                <td>يرجى قبض مبلغ وقدره                 
                    <asp:Repeater ID="Repeater1" runat="server" 
                        DataSourceID="AccessDataSourceTotal">
                        <ItemTemplate>
                            <b><%#Eval("Total")%></b>
                        </ItemTemplate>
                    </asp:Repeater>
                    </td>
                <td>من الطالب: 
                    <asp:Repeater ID="Repeater2" runat="server" 
                        DataSourceID="AccessDataSourceStudentName">
                        <ItemTemplate>
                            <b><%#Eval("studentName")%></b>
                        </ItemTemplate>
                    </asp:Repeater>
                    </td>                
            </tr>
            <tr>
            <td>
                    وذلك لقاء التسجيل في الدورات التالية:</td>
                <td>
                    <asp:GridView ID="GridViewCourses" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="AccessDataSourceCourses">
                        <Columns>
                            <asp:BoundField DataField="courseName" HeaderText="اسم الدورة" 
                                SortExpression="courseName" />
                            <asp:BoundField DataField="StartDate" DataFormatString="{0:d}" 
                                HeaderText="تبدأ في" SortExpression="StartDate" />
                            <asp:BoundField DataField="EndDate" DataFormatString="{0:d}" 
                                HeaderText="تنتهي في" SortExpression="EndDate" />
                            <asp:BoundField DataField="courseTime" DataFormatString="{0:t}" 
                                HeaderText="التوقيت" SortExpression="courseTime" />
                        </Columns>
                    </asp:GridView>
                </td>                
            </tr>
            <tr>
                <td>
                    <input id="ButtonPrint" type="button" value="طباعة" onclick='window.print()' /></td>
                <td>
                    <input id="ButtonBack" type="button" value="العودة" onclick='window.history.back()' /></td>
            </tr>
        </table>
    </div>
    <asp:AccessDataSource ID="AccessDataSourceTotal" runat="server" 
            DataFile="~/App_Data/manDB.mdb" 
            
            
        SelectCommand="SELECT SUM(Course.Price) AS Total FROM (Course INNER JOIN course_student ON Course.course_ID = course_student.courseID) WHERE (course_student.studentID = ?) AND (course_student.studentActive = False) GROUP BY course_student.ID">
            <SelectParameters>
                <asp:SessionParameter Name="?" SessionField="studentID" />
            </SelectParameters>
        </asp:AccessDataSource>
    <asp:AccessDataSource ID="AccessDataSourceStudentName" runat="server" 
        DataFile="~/App_Data/manDB.mdb" 
        SelectCommand="SELECT [studentName] FROM [Student] WHERE ([student_ID] = ?)">
        <SelectParameters>
            <asp:SessionParameter Name="student_ID" SessionField="studentID" Type="Int32" />
        </SelectParameters>
    </asp:AccessDataSource>
    <asp:AccessDataSource ID="AccessDataSourceCourses" runat="server" 
                        DataFile="~/App_Data/manDB.mdb" 
                        SelectCommand="SELECT Course.courseName, Course.StartDate, Course.EndDate, Course.courseTime FROM (Course INNER JOIN course_student ON Course.course_ID = course_student.courseID) WHERE (course_student.studentID = ?) AND (course_student.studentActive = False)">
                        <SelectParameters>
                            <asp:SessionParameter Name="?" SessionField="studentID" />
                        </SelectParameters>
                    </asp:AccessDataSource>
    </form>
</body>
</html>
