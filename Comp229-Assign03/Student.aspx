<%@ Page Title="Student" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="comp.Student" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        .jumbotron {
           
            background-repeat: no-repeat;
            background-size: cover;
        }
           body
           {
               background-color:floralwhite;
           }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h2 style="text-align: center">Student Page</h2>
            
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="StudentID" DataSourceID="SqlDataSource1" CellPadding="10" ForeColor="#1d1c5e" GridLines="None" Width="850px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="StudentID" HeaderText="Student ID" InsertVisible="False" ReadOnly="True" SortExpression="StudentID" />
                <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                <asp:BoundField DataField="FirstMidName" HeaderText="First Middle Name" SortExpression="FirstMidName" />
                <asp:BoundField DataField="EnrollmentDate" HeaderText="Enrollment Date" SortExpression="EnrollmentDate" />
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="true"  />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
            
        
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="CourseID" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="CourseID" HeaderText="CourseID" InsertVisible="False" ReadOnly="True" SortExpression="CourseID" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Comp229Assign03ConnectionString %>" SelectCommand="SELECT [Title], [CourseID] FROM [Courses]"></asp:SqlDataSource>
            
        
    <div style="text-align: center">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Comp229Assign03ConnectionString %>" SelectCommand="SELECT * FROM [Students]" UpdateCommand="update students set [LastName]=@LastName ,[FirstMidName]=@FirstMidName,[EnrollmentDate]=@EnrollmentDate where [StudentID]=@StudentID"
             DeleteCommand="Delete from [Enrollments] where [StudentID]=@StudentID">
        <UpdateParameters>
            <asp:Parameter  Name="StudentID" Type="Int32"/>
            <asp:Parameter  Name="LastName" Type="String"/>
            <asp:Parameter  Name="FirstMidName" Type="String"/>
            <asp:Parameter  Name="EnrollmentDate" Type="DateTime"/>
        </UpdateParameters>    
            <DeleteParameters>
                <asp:Parameter Name="StudentID" Type="Int32" />
            </DeleteParameters>
        </asp:SqlDataSource>
        <br />
        </div>
    <div>

    </div>  


    <div style="text-align: center"> 
        <br />
    </div>  
            

<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="UpdatePage.aspx">Go to Update Page</asp:HyperLink>
</asp:Content>
