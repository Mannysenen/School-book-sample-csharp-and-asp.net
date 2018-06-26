<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="create_fr1user.aspx.cs" Inherits="school_book_fr1.create_fr1user" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">

    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 332px;
        }
        .auto-style5 {
            width: 332px;
            font-family: Calibri;
        }
        .auto-style4 {
            font-family: Calibri;
        }
        </style>
</head>
<body>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
    <form id="form2" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td style="text-align: center">
                        <asp:Label ID="Label15" runat="server" Font-Names="Brush Script MT" style="font-size: 30pt" Text="Create Student Account"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label2" runat="server" CssClass="auto-style4" Text="ID Number"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style4"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label3" runat="server" CssClass="auto-style4" Text="First Name"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style4"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label4" runat="server" CssClass="auto-style4" Text="Last Name"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style4"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label32" runat="server" CssClass="auto-style4" Text="Class"></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList2" runat="server">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label33" runat="server" CssClass="auto-style4" Text="Section"></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList3" runat="server">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label27" runat="server" CssClass="auto-style4" Text="Photo"></asp:Label>
                                </td>
                                <td>
                                    <asp:Image ID="Image1" runat="server" Height="150px" />
                                    <br />
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                    <asp:Button ID="Button5" runat="server" Height="27px" Text="Upload" OnClick="Button5_Click" />
                                    <asp:Label ID="Label28" runat="server" Text="-----"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label29" runat="server" CssClass="auto-style4" Text="DOB"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox22" runat="server" CssClass="auto-style4" TextMode="Date"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label30" runat="server" CssClass="auto-style4" Text="Date"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox23" runat="server" CssClass="auto-style4" TextMode="Date"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label31" runat="server" CssClass="auto-style4" Text="Gender"></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList1" runat="server">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label21" runat="server" CssClass="auto-style4" Font-Names="Brush Script MT" Font-Size="18pt" Text="Family Details"></asp:Label>
                                    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style4">
                                        <table class="auto-style1">
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label16" runat="server" Text="Fathers Name"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label17" runat="server" Text="Mothers Name"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label18" runat="server" Text="Father's Occupation"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label19" runat="server" Text="Mother's Occupation"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                </td>
                                <td>
                                    <asp:Label ID="Label22" runat="server" CssClass="auto-style4" Font-Names="Brush Script MT" Font-Size="18pt" Text="Parent's Contacts"></asp:Label>
                                    <asp:Panel ID="Panel4" runat="server" CssClass="auto-style4">
                                        <table class="auto-style1">
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label23" runat="server" Text="Father's Phone"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label24" runat="server" Text="Mother's Phone"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label25" runat="server" Text="Father's Email ID"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label26" runat="server" Text="Mother's Email ID"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label5" runat="server" CssClass="auto-style4" Font-Names="Brush Script MT" Font-Size="18pt" Text="Contacts"></asp:Label>
                                    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style4">
                                        <table class="auto-style1">
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label10" runat="server" Text="Address"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label6" runat="server" Text="City"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label7" runat="server" Text="State"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label8" runat="server" Text="Country"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label9" runat="server" Text="Pincode"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>Phone Number</td>
                                                <td>
                                                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Email ID</td>
                                                <td>
                                                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                </td>
                                <td>
                                    <asp:Label ID="Label11" runat="server" CssClass="auto-style4" Font-Names="Brush Script MT" Font-Size="18pt" Text="Account"></asp:Label>
                                    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style4">
                                        <table class="auto-style1">
                                            <tr>
                                                <td class="auto-style3">
                                                    <asp:Label ID="Label12" runat="server" Text="Username"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style6" style="margin-left: 80px">
                                                    <asp:Label ID="Label13" runat="server" Text="Password"></asp:Label>
                                                </td>
                                                <td class="auto-style7">
                                                    <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style3" style="margin-left: 80px">
                                                    <asp:Label ID="Label14" runat="server" Text="Retype Password"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                                                    <asp:Button ID="Button4" runat="server" Text="Validate" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style3" style="margin-left: 80px">&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style3" style="margin-left: 80px">&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style3" style="margin-left: 80px">&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style3" style="margin-left: 80px">&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">&nbsp;</td>
                                <td>
                                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Sign Up" OnClick="Button1_Click" />
                                    <span class="auto-style4">&nbsp; </span>
                                    <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" Text="Sign In" />
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
