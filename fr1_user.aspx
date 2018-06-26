<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fr1_user.aspx.cs" Inherits="school_book_fr1.fr1_user" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous"/>

    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            height: 34px;
            width: 180px;
        }
        .auto-style2 {
            height: 34px;
        }
        </style>
</head>
<body style="background:url(BestHDWallpapersPack269_39_bender777post.jpg); font-family: Calibri;">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
    <form id="form2" runat="server">
        <div style=" background-color:#097e7e; opacity:0.6; filter: alpha(opacity=60); ">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style2" style="text-align: right">
                        <asp:Label ID="Label1" runat="server" Font-Names="Brush Script MT" Font-Size="24pt" Text="Hi User!"></asp:Label>
                        <asp:Button ID="Button1" runat="server" Text="Logout" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="alert-success" rowspan="9">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                            <asp:ListItem>Personal Details</asp:ListItem>
                            <asp:ListItem>Regular Time Table</asp:ListItem>
                            <asp:ListItem>Exams</asp:ListItem>
                            <asp:ListItem>Books</asp:ListItem>
                            <asp:ListItem>Reports</asp:ListItem>
                            <asp:ListItem>Events</asp:ListItem>
                            <asp:ListItem>Activities</asp:ListItem>
                            <asp:ListItem>Messages</asp:ListItem>
                            <asp:ListItem>Archives</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>
                        <asp:Panel ID="Panel1" runat="server">
                            <table class="auto-style1">
                                <tr>
                                    <td style="margin-left: 40px">
                                        <asp:Label ID="Label2" runat="server" Text="ID Number"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label20" runat="server" Text="Class"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label21" runat="server" Text="Section"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label5" runat="server" Text="DOB"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label6" runat="server" Text="Joined"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label7" runat="server" Text="Gender"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label8" runat="server" Text="Email ID"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label9" runat="server" Text="Phone Number"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label10" runat="server" Text="Address"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label11" runat="server" Text="Pincode"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Panel ID="Panel2" runat="server">
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style5">
                                        <asp:GridView ID="GridView1" runat="server">
                                        </asp:GridView>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label12" runat="server" Text="Regular Time Table"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Panel ID="Panel3" runat="server">
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style5">
                                        <asp:GridView ID="GridView2" runat="server">
                                        </asp:GridView>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label13" runat="server" Text="Exam Time Table"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Panel ID="Panel4" runat="server">
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style7">
                                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="subject_id" DataSourceID="SqlDataSource4">
                                            <Columns>
                                                <asp:BoundField DataField="subject_id" HeaderText="subject_id" ReadOnly="True" SortExpression="subject_id" />
                                                <asp:BoundField DataField="subject_name" HeaderText="subject_name" SortExpression="subject_name" />
                                                <asp:BoundField DataField="author" HeaderText="author" SortExpression="author" />
                                                <asp:BoundField DataField="publications" HeaderText="publications" SortExpression="publications" />
                                                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                                                <asp:BoundField DataField="book_pdf" HeaderText="book_pdf" SortExpression="book_pdf" />
                                                <asp:BoundField DataField="book_pdf_size" HeaderText="book_pdf_size" SortExpression="book_pdf_size" />
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:school_book_dbConnectionString %>" SelectCommand="SELECT * FROM [books]"></asp:SqlDataSource>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label14" runat="server" Text="Books"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Panel ID="Panel5" runat="server">
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style7">
                                        <asp:Label ID="Label24" runat="server" Text="Time Table ID"></asp:Label>
                                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="examtimetable_id" DataValueField="examtimetable_id">
                                        </asp:DropDownList>
                                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Go&gt;" />
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:school_book_dbConnectionString %>" SelectCommand="SELECT * FROM [exam_timetable]"></asp:SqlDataSource>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style7">
                                        <asp:Label ID="Label22" runat="server" Text="Marks"></asp:Label>
                                        <asp:GridView ID="GridView4" runat="server">
                                        </asp:GridView>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label23" runat="server" Text="Total"></asp:Label>
                                        <asp:GridView ID="GridView9" runat="server">
                                        </asp:GridView>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label15" runat="server" Text="Reports"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Panel ID="Panel6" runat="server">
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style7">
                                        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="event_id" DataSourceID="SqlDataSource2">
                                            <Columns>
                                                <asp:BoundField DataField="event_id" HeaderText="Id" ReadOnly="True" SortExpression="event_id" />
                                                <asp:BoundField DataField="event_name" HeaderText="Name" SortExpression="event_name" />
                                                <asp:BoundField DataField="role" HeaderText="Role" SortExpression="role" />
                                                <asp:BoundField DataField="event_description" HeaderText="Description" SortExpression="event_description" />
                                                <asp:BoundField DataField="participants_limits" HeaderText="Limits" SortExpression="participants_limits" />
                                                <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:school_book_dbConnectionString %>" SelectCommand="SELECT * FROM [school_events]"></asp:SqlDataSource>
                                        <table class="auto-style1">
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label25" runat="server" Text="Event ID"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource5" DataTextField="event_id" DataValueField="event_id">
                                                    </asp:DropDownList>
                                                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Go&gt;" />
                                                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:school_book_dbConnectionString %>" SelectCommand="SELECT * FROM [school_events]"></asp:SqlDataSource>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label26" runat="server" Text="Event Name"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label29" runat="server" Text="---Event Name---"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label27" runat="server" Text="Seats"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label28" runat="server" Text="---Seats---"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label30" runat="server" Text="Date"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label31" runat="server" Text="---Date---"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Apply" />
                                                </td>
                                                <td>&nbsp;</td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td class="auto-style7">
                                        <asp:Label ID="Label76" runat="server" Text="Availability"></asp:Label>
                                        <br />
                                        <table class="auto-style1">
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label78" runat="server" Text="Event ID"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList25" runat="server" DataSourceID="SqlDataSource12" DataTextField="event_id" DataValueField="event_id">
                                                    </asp:DropDownList>
                                                    <asp:Button ID="Button12" runat="server" OnClick="Button12_Click" Text="Go&gt;" />
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label77" runat="server" Text="---Availability---"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                        <br />
                                        <asp:Label ID="Label75" runat="server" Text="Participants"></asp:Label>
                                        <asp:GridView ID="GridView11" runat="server" AutoGenerateColumns="False" DataKeyNames="event_id" DataSourceID="SqlDataSource12">
                                            <Columns>
                                                <asp:TemplateField HeaderText="Id" SortExpression="event_id">
                                                    <EditItemTemplate>
                                                        <asp:Label ID="Label79" runat="server" Text='<%# Eval("event_id") %>'></asp:Label>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label80" runat="server" Text='<%# Bind("event_id") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Name" SortExpression="particpant_name">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("particpant_name") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label81" runat="server" Text='<%# Bind("particpant_name") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                </Columns>
                                        </asp:GridView>
                                        <br />
                                        <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:school_book_dbConnectionString %>" SelectCommand="SELECT * FROM [event_participants]"></asp:SqlDataSource>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label16" runat="server" Text="Events"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Panel ID="Panel7" runat="server">
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style7">
                                        <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataKeyNames="activity_id" DataSourceID="SqlDataSource3">
                                            <Columns>
                                                <asp:BoundField DataField="activity_id" HeaderText="Id" ReadOnly="True" SortExpression="activity_id" />
                                                <asp:BoundField DataField="activity_name" HeaderText="Name" SortExpression="activity_name" />
                                                <asp:BoundField DataField="coordinator" HeaderText="Coordinator" SortExpression="coordinator" />
                                                <asp:BoundField DataField="trainer" HeaderText="Trainer" SortExpression="trainer" />
                                                <asp:BoundField DataField="session" HeaderText="Session" SortExpression="session" />
                                                <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
                                            </Columns>
                                        </asp:GridView>
                                        <table class="auto-style1">
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label82" runat="server" Text="Event ID"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList26" runat="server" DataSourceID="SqlDataSource3" DataTextField="activity_id" DataValueField="activity_id">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Button ID="Button13" runat="server" OnClick="Button13_Click" Text="Apply" />
                                                </td>
                                                <td>&nbsp;</td>
                                            </tr>
                                        </table>
                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:school_book_dbConnectionString %>" SelectCommand="SELECT * FROM [school_activity]"></asp:SqlDataSource>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label17" runat="server" Text="Activities"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Panel ID="Panel8" runat="server">
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style7">
                                        <asp:GridView ID="GridView8" runat="server">
                                        </asp:GridView>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label18" runat="server" Text="Messages"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Panel ID="Panel9" runat="server">
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style5">
                                        <asp:GridView ID="GridView7" runat="server">
                                        </asp:GridView>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label19" runat="server" Text="Archives"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
