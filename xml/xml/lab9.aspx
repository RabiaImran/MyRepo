<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lab9.aspx.cs" Inherits="xml.lab9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title></title>
 <style type="text/css">
 .style1
 {
 width: 40%;
 border-style: solid;
 border-width: 1px;
 background-color:Silver;
 height: 152px;
 }
 .style2
 {
 width: 295px;
 }
 .style3
 {
 width: 754px;
 }
 </style>
</head>
<body>
 <form id="form1" runat="server">
 <div>
 <table class="style1">
 <tr>
 <td class="style2">
 &nbsp;</td>
 <td class="style3">
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Employee_Information</td>
 </tr>
 <tr>
 <td class="style2">
 Name:</td>
 <td class="style3">
 <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
 </td>
 </tr>
 <tr>
 <td class="style2">
 Emp_Id:</td>
 <td class="style3">
 <asp:TextBox ID="TextBox2"runat="server"></asp:TextBox>
 </td>
 </tr>
 <tr>
 <td class="style2">
 Qualification:</td>

<td class="style3">
 <asp:DropDownList ID="DropDownList2" runat="server" Height="22px" Width="132px">
 <asp:ListItem>--SELECT--</asp:ListItem>
 <asp:ListItem>MCA</asp:ListItem>
 <asp:ListItem>BCA</asp:ListItem>
 <asp:ListItem>MBA</asp:ListItem>
 <asp:ListItem>BBA</asp:ListItem>
 <asp:ListItem>BTech</asp:ListItem>
 <asp:ListItem>MTech</asp:ListItem>
 </asp:DropDownList>
 </td>
 </tr>
 <tr>
 <td class="style2">
 &nbsp;</td>
 <td class="style3">
 <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click"/>
 <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Show"/>
 </td>
 </tr>
 </table>
 <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84"
BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" GridLines="Both" RepeatDirection="
Horizontal"
style="margin-right: 32px">
 <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510"/>
 <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White"/>
 <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510"/>
 <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White"/>
 <ItemTemplate>
 <hrsize=0 />
 Name:<%#DataBinder.Eval(Container.DataItem,"name")%><br/>
 Emp_id:<%#DataBinder.Eval(Container.DataItem,"Emp_id")%></a><br/>
 Qualification:<%#DataBinder.Eval(Container.DataItem,"Qualification")%><br/>
 </ItemTemplate>
 </asp:DataList>
 <br />
 </div>
 </form>
</body>
</html>
