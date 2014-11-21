<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="AdminCategories.aspx.vb" Inherits="VirtualAlManarat.AdminCategories" 
    title="إدارة فئات الدورات" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DetailsView ID="DetailsViewCategories" runat="server" Height="50px" 
        Width="100%" AllowPaging="True" AutoGenerateRows="False" 
        DataKeyNames="category_ID" DataSourceID="AccessDataSourceCategories">
        <Fields>
            <asp:BoundField DataField="category_ID" HeaderText="م" 
                InsertVisible="False" ReadOnly="True" SortExpression="category_ID" >
                <ControlStyle Font-Bold="False" />
                <HeaderStyle Font-Bold="True" />
            </asp:BoundField>
            <asp:BoundField DataField="categoryName" HeaderText="اسم الفئة" 
                SortExpression="categoryName" >
                <ControlStyle Font-Bold="True" />
                <HeaderStyle Font-Bold="True" />
            </asp:BoundField>
            <asp:BoundField DataField="categoryDesc" HeaderText="التوصيف" 
                SortExpression="categoryDesc" >
                <ControlStyle Font-Bold="True" />
                <HeaderStyle Font-Bold="True" />
            </asp:BoundField>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowInsertButton="True" CancelText="إلغاء الأمر" DeleteText="حذف" 
                EditText="تعديل" InsertText="إضافة" NewText="جديد" SelectText="اختيار" 
                UpdateText="تحديث" />
        </Fields>
    </asp:DetailsView>
    <asp:AccessDataSource ID="AccessDataSourceCategories" runat="server" 
        DataFile="~/App_Data/manDB.mdb" 
        DeleteCommand="DELETE FROM [Category] WHERE [category_ID] = ?" 
        InsertCommand="INSERT INTO [Category] ([category_ID], [categoryName], [categoryDesc]) VALUES (?, ?, ?)" 
        SelectCommand="SELECT * FROM [Category]" 
        UpdateCommand="UPDATE [Category] SET [categoryName] = ?, [categoryDesc] = ? WHERE [category_ID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="category_ID" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="categoryName" Type="String" />
            <asp:Parameter Name="categoryDesc" Type="String" />
            <asp:Parameter Name="category_ID" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="category_ID" Type="Int32" />
            <asp:Parameter Name="categoryName" Type="String" />
            <asp:Parameter Name="categoryDesc" Type="String" />
        </InsertParameters>
    </asp:AccessDataSource>
</asp:Content>
