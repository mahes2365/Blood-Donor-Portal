<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <%--<link rel="stylesheet" href="be a donor.css" />--%>

    <title></title>
    <style type="text/css">
*{
    padding:0px;
    margin:0px;
    box-sizing:border-box;
}
        .auto-style1 {
            width: 159px;
        }
        .auto-style2 {
            width: 339px;
        }
        .auto-style9 {
            width: 159px;
            height: 34px;
        }
        .auto-style11 {
            height: 34px;
        }
        .auto-style12 {
            width: 159px;
            height: 40px;
        }
        .auto-style14 {
            height: 40px;
        }
        .auto-style15 {
            width: 159px;
            height: 39px;
        }
        .auto-style17 {
            height: 39px;
        }
        .auto-style18 {
            width: 18px;
        }
    </style>
</head>
<body>
  <div class="container">
    <form id="form1" runat="server">
    <div class="form-container">
        <table style="width: 100%;">
            <tr>
                <td class="auto-style1">
        <asp:Label ID="lblname" runat="server" Text="Name"></asp:Label> </td>
                <td> :&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtname" runat="server" Height="31px" Width="251px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="rvfname" runat="server" ErrorMessage="Field could not be empty" ForeColor="Red" ControlToValidate="txtname" ValidationGroup="form"></asp:RequiredFieldValidator>
                </td>
                <td> &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">
            <asp:Label ID="lblage" runat="server" Text="Age"></asp:Label></td>
                <td class="auto-style14" colspan="2">:&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtage" runat="server" Height="30px" Width="250px" MaxLength="2" ></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RangeValidator ID="rangevage" runat="server" ControlToValidate="txtage" ErrorMessage="Age must be above 18 and below 55" ForeColor="Red" MaximumValue="55" MinimumValue="18" ValidationGroup="form"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">

            <asp:Label ID="lblgender" runat="server" Text="Gender"></asp:Label>
            &nbsp;</td>
                <td class="auto-style14" colspan="2">:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="rbtmale" runat="server" GroupName="gender" OnCheckedChanged="rbtmale_CheckedChanged" Text="Male" />
&nbsp;
                    <asp:RadioButton ID="rbtfemale" runat="server" GroupName="gender" OnCheckedChanged="rbtfemale_CheckedChanged" Text="Female" />
&nbsp;
                    <asp:RadioButton ID="rbtothers" runat="server" GroupName="gender" OnCheckedChanged="rbtothers_CheckedChanged" Text="Others" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
            <asp:Label ID="lblbloodgroup" runat="server" Text="Blood Group"></asp:Label> 
                </td>
                <td class="auto-style14" colspan="2">
                    :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddlbloodgroup" runat="server" Height="30px" Width="249px">
                <asp:ListItem>--Select--</asp:ListItem>
                <asp:ListItem>A+Ve</asp:ListItem>
                <asp:ListItem>B+Ve</asp:ListItem>
                <asp:ListItem>O+ve</asp:ListItem>
                <asp:ListItem>AB+Ve</asp:ListItem>
                <asp:ListItem>A-Ve</asp:ListItem>
                <asp:ListItem>B-Ve</asp:ListItem>
                <asp:ListItem>O-Ve</asp:ListItem>
                <asp:ListItem>AB-Ve</asp:ListItem>
                <asp:ListItem>Bombay Blood Group</asp:ListItem>
            </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="rvfbloodgroup" runat="server" ControlToValidate="ddlbloodgroup" ErrorMessage="Choose the Blood Group" ForeColor="Red" ValidationGroup="form"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">
            <asp:Label ID="lblmobileno1" runat="server" Text="Mobile Number 1"></asp:Label></td>
                <td class="auto-style17" colspan="2">:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtmobileno1" runat="server" Height="30px" Width="250px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="rvfmobileno1" runat="server" ControlToValidate="txtmobileno1" ErrorMessage="Field could not be empty" ForeColor="Red" ValidationGroup="form"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
            <asp:Label ID="lblmobileno2" runat="server" Text="Mobile Number 2"></asp:Label></td>
                <td colspan="2">:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtmobileno2" runat="server" Height="30px" Width="250px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="rvfmobileno2" runat="server" ControlToValidate="txtmobileno2" ErrorMessage="Field could not be empty" ForeColor="Red" ValidationGroup="form"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
            <asp:Label ID="lblmail" runat="server" Text="E-Mail ID"></asp:Label></td>
                <td colspan="2">:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtmail" runat="server" Height="30px" Width="250px" TextMode="Email" ></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="regxmail" runat="server" ControlToValidate="txtmail" ErrorMessage="Mail format is wrong" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="form"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
            <asp:Label ID="lblarea" runat="server" Text="Area"></asp:Label></td>
                <td colspan="2">:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtarea2" runat="server" Height="30px" Width="250px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="rvfarea" runat="server" ControlToValidate="txtarea" ErrorMessage="Field could not be empty" ForeColor="Red" ValidationGroup="form"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
            <asp:Label ID="lblpincode" runat="server" Text="Pin Code"></asp:Label></td>
                <td colspan="2">:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtpincode" runat="server" Height="31px" Width="250px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="rvfpincode" runat="server" ControlToValidate="txtpincode" ErrorMessage="Field could not be empty" ForeColor="Red" ValidationGroup="form"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
            <asp:Label ID="lblproof" runat="server" Text="Photo Identity Proof"></asp:Label></td>
                <td class="auto-style11" colspan="2">:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:FileUpload ID="fileuploadproof" runat="server" Height="30px" Width="250px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="rvffileupload" runat="server" ForeColor="Red" ValidationGroup="form" ControlToValidate="fileuploadproof">File name must be your name</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                            <asp:Button ID="btregister" runat="server" Text="Be a Donor" OnClick="btregister_Click" ValidateRequestMode="Enabled" ValidationGroup="form" />
                       
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ShowMessageBox="True" ShowSummary="False" ValidationGroup="form" />
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
        </table>
    </div>
 </form>
</div>
</body>
</html>
