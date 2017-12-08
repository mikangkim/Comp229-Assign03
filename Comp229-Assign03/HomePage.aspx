<%@ Page Title="HomePage" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="comp.Home_Page" %>
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
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div>    <h2 style="text-align: center; height: 0px" id="Menu1">MIKA&#39;s KUNGFU SCHOOL</h2>
   </div> <p>&nbsp&nbsp;</p>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="10" ForeColor="#1d1c5e" GridLines="None" Width="600px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="white" />
        <Columns>
            <asp:BoundField DataField="FirstMidName" HeaderText="First Middle Name" SortExpression="FirstMidName" />
            <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
            
            <asp:HyperLinkField />
                
       
            <asp:BoundField DataField="StudentID" HeaderText="Student ID" ReadOnly="True" SortExpression="StudentID" />
                
       
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
    <div>
        <br />
        <br />
        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Comp229Assign03ConnectionString %>" SelectCommand="SELECT [FirstMidName], [LastName], [StudentID], [EnrollmentDate] FROM [Students]"></asp:SqlDataSource>
    Student ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtStudentID" runat="server"></asp:TextBox>
    <br />
    First Middle Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtFirstMidName" runat="server"></asp:TextBox>
    <br />
    Last Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtLastName" runat="server" style="margin-top: 0px"></asp:TextBox>
    <br />
     Enrollment Date:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtEnrollmentDate" runat="server" OnTextChanged="txtEnrollmentDate_TextChanged"></asp:TextBox>
     <br />
     <br />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ADD" Width="174px" />
 
    <br />
</asp:Content>

