<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <div>

            <br />
            <table class="nav-justified">
                <tr>
                    <td style="height: 22px; width: 101px"></td>
                    <td style="height: 22px; width: 187px" align="center">Customer Data Center</td>
                    <td style="height: 22px"></td>
                </tr>
                <tr>
                    <td style="width: 101px">&nbsp;</td>
                    <td style="width: 187px">Customer ID</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;
                        <asp:Button ID="Button3" runat="server" BackColor="Fuchsia" BorderColor="Blue" BorderStyle="Dashed" Font-Size="Medium" ForeColor="#66FFFF" OnClick="Onclick_Button3" Text="GET" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 101px">&nbsp;</td>
                    <td style="width: 187px">Customer Name</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 101px">&nbsp;</td>
                    <td style="width: 187px">Address</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Select District</asp:ListItem>
                            <asp:ListItem>Erode</asp:ListItem>
                            <asp:ListItem>Coimbatore</asp:ListItem>
                            <asp:ListItem>Salem</asp:ListItem>
                            <asp:ListItem>Namakkal</asp:ListItem>
                            <asp:ListItem>Karur</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 101px">&nbsp;</td>
                    <td style="width: 187px">Contact</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 101px">&nbsp;</td>
                    <td style="width: 187px">Email ID</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 101px">&nbsp;</td>
                    <td style="width: 187px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 101px">&nbsp;</td>
                    <td style="width: 187px">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button4" runat="server" BackColor="Fuchsia" BorderColor="Blue" BorderStyle="Dashed" Font-Size="Medium" ForeColor="#66FFFF" OnClick="Onclick_Button4" Text="Save" />
&nbsp;&nbsp;
                        <asp:Button ID="Button5" runat="server" BackColor="Fuchsia" BorderColor="Blue" BorderStyle="Dashed" Font-Size="Medium" ForeColor="#66FFFF" OnClick="Onclick_Button5" Text="Update" />
&nbsp;&nbsp;
                        <asp:Button ID="Button6" runat="server" BackColor="Fuchsia" BorderColor="Blue" BorderStyle="Dashed" Font-Size="Medium" ForeColor="#66FFFF" OnClick="Onclick_Button6" OnClientClick="return confirm('Are you sure to delete?');" Text="Delete" />
&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button7" runat="server" BackColor="Fuchsia" BorderColor="Blue" BorderStyle="Dashed" Font-Size="Medium" ForeColor="#66FFFF" OnClick="Onclick_Button7" Text="Search" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" Height="199px" Width="736px">
            </asp:GridView>
            <br />
            <br />

        </div>
    </div>
    
</asp:Content>
