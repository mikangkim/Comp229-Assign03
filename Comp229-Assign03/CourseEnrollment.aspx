<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CourseEnrollment.aspx.cs" Inherits="comp.CourseEnrollment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .jumbotron 
        {
            background-repeat: no-repeat;
            background-size: cover;
        }
        body
        {
            background-color:floralwhite;
        }
    </style>

</asp:Content>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="text-align: center">Courses Enrollment Page</h2>
    <p>&nbsp;</p>

<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="StudentID" DataSourceID="SqlDataSource1" CellPadding="10" ForeColor="#1d1c5e" GridLines="None" Width="850px">
    <AlternatingRowStyle BackColor="White" />

    <Columns>
    <asp:BoundField DataField="StudentID" HeaderText="Student ID" SortExpression="StudentID" />
    <asp:BoundField DataField="EnrollmentID" HeaderText="Enrollment ID" InsertVisible="False" ReadOnly="True" SortExpression="EnrollmentID" />
    <asp:BoundField DataField="CourseID" HeaderText="Course ID" SortExpression="CourseID" />
    <asp:BoundField DataField="Grade" HeaderText="Grade" SortExpression="Grade" />
    <asp:CommandField ShowDeleteButton="true"  />
    </Columns>

    <EditRowStyle BackColor="#7C6F57" />
    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#1d1c5e" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#E3EAEB" />
    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F8FAFA" />
    <SortedAscendingHeaderStyle BackColor="#246B61" />
    <SortedDescendingCellStyle BackColor="#D4DFE1" />
    <SortedDescendingHeaderStyle BackColor="#15524A" />
</asp:GridView>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Comp229Assign03ConnectionString %>" SelectCommand="SELECT * FROM [Enrollments]"></asp:SqlDataSource>
     
</asp:Content>
