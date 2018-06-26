<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fr1_admin.aspx.cs" Inherits="school_book_fr1.fr1_admin" %>

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
        .auto-style4 {
            height: 23px;
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
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" Font-Names="Calibri">
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
                                        <asp:Label ID="Label4" runat="server" Text="Designation"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
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
                                        <asp:Label ID="Label6" runat="server" Text="Join Date"></asp:Label>
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
                                        <table class="auto-style1">
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label22" runat="server" Text="Time Table ID"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label20" runat="server" Text="Class"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList1" runat="server">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label21" runat="server" Text="Section"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList2" runat="server">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label23" runat="server" Text="Day"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList3" runat="server">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label24" runat="server" Text="Period 1"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList4" runat="server">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label25" runat="server" Text="Period 2"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList5" runat="server">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label26" runat="server" Text="Period 3"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList6" runat="server">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style4">
                                                    <asp:Label ID="Label27" runat="server" Text="Period 4"></asp:Label>
                                                </td>
                                                <td class="auto-style4">
                                                    <asp:DropDownList ID="DropDownList7" runat="server">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                        </table>
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="timetable_id" DataSourceID="SqlDataSource1">
                                            <Columns>
                                                <asp:TemplateField HeaderText="timetable_id" SortExpression="timetable_id">
                                                    <EditItemTemplate>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("timetable_id") %>'></asp:Label>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("timetable_id") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="class" SortExpression="class">
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddl1" runat="server" Text='<%# Bind("class") %>'>
                                                            <asp:ListItem Text="1"/>
                                                            <asp:ListItem Text="2"/>
                                                            <asp:ListItem Text="3"/>
                                                            <asp:ListItem Text="4"/>
                                                            <asp:ListItem Text="5"/>
                                                            <asp:ListItem Text="6"/>
                                                            <asp:ListItem Text="7"/>
                                                            <asp:ListItem Text="8"/>
                                                            <asp:ListItem Text="9"/>
                                                            <asp:ListItem Text="10"/>
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("class") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="section" SortExpression="section">
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddl2" runat="server" Text='<%# Bind("section") %>'>
                                                            <asp:ListItem Text="A"/>
                                                            <asp:ListItem Text="B"/>
                                                            <asp:ListItem Text="C"/>
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("section") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="ttday" SortExpression="ttday">
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddl3" runat="server" Text='<%# Bind("ttday") %>'>
                                                            <asp:ListItem Text="Monday" />
                                                            <asp:ListItem Text="Tuesday" />
                                                            <asp:ListItem Text="Wednesday" />
                                                            <asp:ListItem Text="Thursday" />
                                                            <asp:ListItem Text="Friday" />
                                                            <asp:ListItem Text="Saturday" />
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("ttday") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="period1" SortExpression="period1">
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddl4" runat="server" Text='<%# Bind("period1") %>'>
                                                            <asp:ListItem Text="Tamil" />
                                                            <asp:ListItem Text="English" />
                                                            <asp:ListItem Text="Maths" />
                                                            <asp:ListItem Text="Science" />
                                                            <asp:ListItem Text="Social" />
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("period1") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="period2" SortExpression="period2">
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddl5" runat="server" Text='<%# Bind("period2") %>'>
                                                            <asp:ListItem Text="Tamil" />
                                                            <asp:ListItem Text="English" />
                                                            <asp:ListItem Text="Maths" />
                                                            <asp:ListItem Text="Science" />
                                                            <asp:ListItem Text="Social" />
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("period2") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="period3" SortExpression="period3">
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddl6" runat="server" Text='<%# Bind("period3") %>'>
                                                            <asp:ListItem Text="Tamil" />
                                                            <asp:ListItem Text="English" />
                                                            <asp:ListItem Text="Maths" />
                                                            <asp:ListItem Text="Science" />
                                                            <asp:ListItem Text="Social" />
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("period3") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="period4" SortExpression="period4">
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddl7" runat="server" Text='<%# Bind("period4") %>'>
                                                            <asp:ListItem Text="Tamil" />
                                                            <asp:ListItem Text="English" />
                                                            <asp:ListItem Text="Maths" />
                                                            <asp:ListItem Text="Science" />
                                                            <asp:ListItem Text="Social" />
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("period4") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Edit">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID ="lkb1" runat="server" CommandName ="edit">Edit</asp:LinkButton>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:LinkButton ID ="lkb2" runat="server" CommandName="update" >Update</asp:LinkButton>
                                                        <asp:LinkButton ID ="lkb3" runat="server" CommandName="delete">Delete</asp:LinkButton>
                                                        <asp:LinkButton ID ="lkb4" runat ="server" CommandName ="cancel">Cancel</asp:LinkButton>
                                                    </EditItemTemplate>
                                            </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:school_book_dbConnectionString %>" SelectCommand="SELECT * FROM [class_timetable]" DeleteCommand="delete_class_timetable" DeleteCommandType="StoredProcedure" UpdateCommand="update_class_timetable" UpdateCommandType="StoredProcedure"></asp:SqlDataSource>
                                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Add" />
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
                                        <table class="auto-style1">
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label28" runat="server" Text="Time Table ID"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label33" runat="server" Text="Class"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList11" runat="server">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label34" runat="server" Text="Section"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList12" runat="server">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label29" runat="server" Text="Exam Type"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList8" runat="server">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label30" runat="server" Text="Date"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox16" runat="server" TextMode="Date"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label31" runat="server" Text="Subject Name"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList9" runat="server">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label32" runat="server" Text="Session"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList10" runat="server">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                        </table>
                                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="examtimetable_id" DataSourceID="SqlDataSource2">
                                            <Columns>
                                                <asp:TemplateField HeaderText="examtimetable_id" SortExpression="examtimetable_id">
                                                    <EditItemTemplate>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("examtimetable_id") %>'></asp:Label>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("examtimetable_id") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="class" SortExpression="class">
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="eddl1" runat="server" Text='<%# Bind("class") %>'>
                                                            <asp:ListItem Text="1"/>
                                                            <asp:ListItem Text="2"/>
                                                            <asp:ListItem Text="3"/>
                                                            <asp:ListItem Text="4"/>
                                                            <asp:ListItem Text="5"/>
                                                            <asp:ListItem Text="6"/>
                                                            <asp:ListItem Text="7"/>
                                                            <asp:ListItem Text="8"/>
                                                            <asp:ListItem Text="9"/>
                                                            <asp:ListItem Text="10"/>
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("class") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="section" SortExpression="section">
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="eddl2" runat="server" Text='<%# Bind("section") %>'>
                                                            <asp:ListItem Text="A"/>
                                                            <asp:ListItem Text="B"/>
                                                            <asp:ListItem Text="C"/>
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("section") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="examtype" SortExpression="examtype">
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="eddl3" runat="server" Text='<%# Bind("examtype") %>'>
                                                            <asp:ListItem Text="Cycle Exam"/>
                                                            <asp:ListItem Text="1st Exam"/>
                                                            <asp:ListItem Text="2nd Exam"/>
                                                            <asp:ListItem Text="3rd Exam"/>
                                                            <asp:ListItem Text="Final Exam"/>
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("examtype") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="examdate" SortExpression="examdate">
                                                    <EditItemTemplate>
                                                        <asp:TextBox TextMode="Date" ID="TextBox4" runat="server" Text='<%# Bind("examdate") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("examdate") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="subjectname" SortExpression="subjectname">
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="eddl6" runat="server" Text='<%# Bind("subjectname") %>'>
                                                            <asp:ListItem Text="Tamil"/>
                                                            <asp:ListItem Text="English"/>
                                                            <asp:ListItem Text="Maths"/>
                                                            <asp:ListItem Text="Science"/>
                                                            <asp:ListItem Text="Social"/>
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("subjectname") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="subjectsession" SortExpression="subjectsession">
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="eddl7" runat="server" Text='<%# Bind("subjectsession") %>'>
                                                            <asp:ListItem Text="FN"/>
                                                            <asp:ListItem Text="AN"/>
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("subjectsession") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Edit">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID ="lkb1" runat="server" CommandName ="edit" >Edit</asp:LinkButton>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:LinkButton ID ="lkb2" runat="server" CommandName="update" >Update</asp:LinkButton>
                                                        <asp:LinkButton ID ="lkb3" runat="server" CommandName="delete">Delete</asp:LinkButton>
                                                        <asp:LinkButton ID ="lkb4" runat ="server" CommandName ="cancel">Cancel</asp:LinkButton>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:school_book_dbConnectionString %>" SelectCommand="SELECT * FROM [exam_timetable]" UpdateCommand="update_examtimetable" UpdateCommandType="StoredProcedure" DeleteCommand="delete_examtimetable" DeleteCommandType="StoredProcedure"></asp:SqlDataSource>
                                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Add" />
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
                                        <table class="auto-style1">
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label35" runat="server" Text="Subject ID"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="margin-left: 40px">
                                                    <asp:Label ID="Label36" runat="server" Text="Subject Name"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="margin-left: 40px">
                                                    <asp:Label ID="Label37" runat="server" Text="Author"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="margin-left: 40px">
                                                    <asp:Label ID="Label38" runat="server" Text="Publication"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="margin-left: 40px">
                                                    <asp:Label ID="Label39" runat="server" Text="Date"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox21" runat="server" TextMode="Date"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="margin-left: 40px">
                                                    <asp:Label ID="Label40" runat="server" Text="Book PDF"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="margin-left: 40px">
                                                    <asp:Button ID="Button4" runat="server" Text="Add" OnClick="Button4_Click" />
                                                </td>
                                                <td>&nbsp;</td>
                                            </tr>
                                        </table>
                                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="subject_id" DataSourceID="SqlDataSource3">
                                            <Columns>
                                                <asp:TemplateField HeaderText="subject_id" SortExpression="subject_id">
                                                    <EditItemTemplate>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("subject_id") %>'></asp:Label>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("subject_id") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="subject_name" SortExpression="subject_name">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("subject_name") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("subject_name") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="author" SortExpression="author">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("author") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("author") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="publications" SortExpression="publications">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("publications") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("publications") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="date" SortExpression="date">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("date") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("date") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="book_pdf" SortExpression="book_pdf">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("book_pdf") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("book_pdf") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="book_pdf_size" SortExpression="book_pdf_size">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("book_pdf_size") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("book_pdf_size") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Download Books">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="lkbl5" runat="server">Download Book</asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Edit">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="lkbl1" runat="server" CommandName="edit">Edit</asp:LinkButton>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:LinkButton ID="lkbl2" runat="server" CommandName="update">Update</asp:LinkButton>
                                                        <asp:LinkButton ID="lkbl3" runat="server" CommandName="delete">Delete</asp:LinkButton>
                                                        <asp:LinkButton ID="lkbl4" runat="server" CommandName="cancel">Cancel</asp:LinkButton>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:school_book_dbConnectionString %>" SelectCommand="SELECT * FROM [books]" UpdateCommand="update_books" UpdateCommandType="StoredProcedure" DeleteCommand="delete_books" DeleteCommandType="StoredProcedure"></asp:SqlDataSource>
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
                                        <table class="auto-style1">
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label41" runat="server" Text="Student ID"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList13" runat="server" DataSourceID="SqlDataSource8" DataTextField="id_number" DataValueField="id_number">
                                                    </asp:DropDownList>
                                                    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:school_book_dbConnectionString %>" SelectCommand="SELECT * FROM [student_account]"></asp:SqlDataSource>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label42" runat="server" Text="Student Name"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList14" runat="server" DataSourceID="SqlDataSource8" DataTextField="first_name" DataValueField="first_name">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label43" runat="server" Text="Class"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList15" runat="server" DataSourceID="SqlDataSource8" DataTextField="class" DataValueField="class">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label44" runat="server" Text="Section"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList16" runat="server" DataSourceID="SqlDataSource8" DataTextField="section" DataValueField="section">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label45" runat="server" Text="Time Table ID"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList17" runat="server" DataSourceID="SqlDataSource2" DataTextField="examtimetable_id" DataValueField="examtimetable_id">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label46" runat="server" Text="Exam Type"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList18" runat="server" DataSourceID="SqlDataSource2" DataTextField="examtype" DataValueField="examtype">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label47" runat="server" Text="Date"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox23" runat="server" TextMode="Date"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label51" runat="server" Text="Session"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList21" runat="server" DataSourceID="SqlDataSource2" DataTextField="subjectsession" DataValueField="subjectsession">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label48" runat="server" Text="Subject ID"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList19" runat="server" DataSourceID="SqlDataSource3" DataTextField="subject_id" DataValueField="subject_id">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label49" runat="server" Text="Subject Name"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList20" runat="server" DataSourceID="SqlDataSource3" DataTextField="subject_name" DataValueField="subject_name">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label50" runat="server" Text="Mark"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Button ID="Button5" runat="server" Text="Add" OnClick="Button5_Click" />
                                                </td>
                                                <td>&nbsp;</td>
                                            </tr>
                                        </table>
                                        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="student_id" DataSourceID="SqlDataSource7">
                                            <Columns>
                                                <asp:TemplateField HeaderText="student_id" SortExpression="student_id">
                                                    <EditItemTemplate>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("student_id") %>'></asp:Label>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("student_id") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="student_name" SortExpression="student_name">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("student_name") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("student_name") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="class" SortExpression="class">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("class") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("class") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="section" SortExpression="section">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("section") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("section") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="timetable_id" SortExpression="timetable_id">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("timetable_id") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("timetable_id") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="examtype" SortExpression="examtype">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("examtype") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("examtype") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="date" SortExpression="date">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("date") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("date") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="session" SortExpression="session">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("session") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("session") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="subject_id" SortExpression="subject_id">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("subject_id") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label9" runat="server" Text='<%# Bind("subject_id") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="subject_name" SortExpression="subject_name">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("subject_name") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label10" runat="server" Text='<%# Bind("subject_name") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="mark" SortExpression="mark">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("mark") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label11" runat="server" Text='<%# Bind("mark") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Edit">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="lkbl1" runat="server" CommandName="edit">Edit</asp:LinkButton>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:LinkButton ID="lkbl2" runat="server" CommandName="update">Update</asp:LinkButton>
                                                        <asp:LinkButton ID="lkbl3" runat="server" CommandName="delete">Delete</asp:LinkButton>
                                                        <asp:LinkButton ID="lkbl4" runat="server" CommandName="cancel">Cancel</asp:LinkButton>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:school_book_dbConnectionString %>" SelectCommand="SELECT * FROM [student_mark]" UpdateCommand="edit_student_mark" UpdateCommandType="StoredProcedure" DeleteCommand="delete_student_mark" DeleteCommandType="StoredProcedure"></asp:SqlDataSource>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label73" runat="server" Font-Size="14pt" style="font-weight: 700" Text="Total Marks"></asp:Label>
                                        <br />
                                        <table class="auto-style1">
                                            <tr>
                                                <td style="margin-left: 40px">
                                                    <asp:Label ID="Label69" runat="server" Text="StudentID"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList23" runat="server" DataSourceID="SqlDataSource8" DataTextField="id_number" DataValueField="id_number">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label71" runat="server" Text="TimetableID"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList24" runat="server" DataSourceID="SqlDataSource2" DataTextField="examtimetable_id" DataValueField="examtimetable_id">
                                                    </asp:DropDownList>
                                                    <asp:Button ID="Button11" runat="server" OnClick="Button11_Click" Text="Go&gt;" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label70" runat="server" Text="Total"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label72" runat="server" Text="total mark"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                        <asp:Button ID="Button10" runat="server" Text="Add" OnClick="Button10_Click" />
                                        <asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource10">
                                            <Columns>
                                                <asp:TemplateField HeaderText="Student ID" SortExpression="sender">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("student_id") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("student_id") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Timetable ID" SortExpression="receiver">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("timetable_id") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("timetable_id") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Total Mark" SortExpression="r_message">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("total_mark") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("total_mark") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Edit">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="lkbl1" runat="server" CommandName="edit">Edit</asp:LinkButton>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:LinkButton ID="lkbl2" runat="server" CommandName="update">Update</asp:LinkButton>
                                                        <asp:LinkButton ID="lkbl3" runat="server" CommandName="delete">Delete</asp:LinkButton>
                                                        <asp:LinkButton ID="lkbl4" runat="server" CommandName="cancel">Cancel</asp:LinkButton>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:school_book_dbConnectionString %>" SelectCommand="SELECT * FROM [total_mark]" UpdateCommand="edit_total_mark" UpdateCommandType="StoredProcedure" DeleteCommand="delete_total_mark" DeleteCommandType="StoredProcedure"></asp:SqlDataSource>
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
                                        <table class="auto-style1">
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label52" runat="server" Text="Event ID"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label53" runat="server" Text="Event Name"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox25" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label54" runat="server" Text="Role"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox26" runat="server" TextMode="MultiLine"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label55" runat="server" Text="Event Description"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox27" runat="server" TextMode="MultiLine"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label56" runat="server" Text="Partcipants Limit"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox28" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label57" runat="server" Text="Date"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox29" runat="server" TextMode="Date"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Button ID="Button6" runat="server" Text="Add" OnClick="Button6_Click" />
                                                </td>
                                                <td>&nbsp;</td>
                                            </tr>
                                        </table>
                                        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="event_id" DataSourceID="SqlDataSource4">
                                            <Columns>
                                                <asp:TemplateField HeaderText="event_id" SortExpression="event_id">
                                                    <EditItemTemplate>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("event_id") %>'></asp:Label>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("event_id") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="event_name" SortExpression="event_name">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("event_name") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("event_name") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="role" SortExpression="role">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("role") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("role") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="event_description" SortExpression="event_description">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("event_description") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("event_description") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="participants_limits" SortExpression="participants_limits">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("participants_limits") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("participants_limits") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="date" SortExpression="date">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("date") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("date") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Edit">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="lkbl1" runat="server" CommandName="edit">Edit</asp:LinkButton>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:LinkButton ID="lkbl2" runat="server" CommandName="update">Update</asp:LinkButton>
                                                        <asp:LinkButton ID="lkbl3" runat="server" CommandName="delete">Delete</asp:LinkButton>
                                                        <asp:LinkButton ID="lkbl4" runat="server" CommandName="cancel">Cancel</asp:LinkButton>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:school_book_dbConnectionString %>" SelectCommand="SELECT * FROM [school_events]" UpdateCommand="update_school_events" UpdateCommandType="StoredProcedure" DeleteCommand="delete_school_events" DeleteCommandType="StoredProcedure"></asp:SqlDataSource>
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
                                        <br />
                                        <asp:GridView ID="GridView11" runat="server" AutoGenerateColumns="False" DataKeyNames="event_id" DataSourceID="SqlDataSource12">
                                            <Columns>
                                                <asp:TemplateField HeaderText="event_id" SortExpression="event_id">
                                                    <EditItemTemplate>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("event_id") %>'></asp:Label>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("event_id") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="particpant_name" SortExpression="particpant_name">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("particpant_name") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("particpant_name") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Edit">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="lkbl1" runat="server" CommandName="edit">Edit</asp:LinkButton>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:LinkButton ID="lkbl3" runat="server" CommandName="delete">Delete</asp:LinkButton>
                                                        <asp:LinkButton ID="lkbl4" runat="server" CommandName="cancel">Cancel</asp:LinkButton>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:school_book_dbConnectionString %>" SelectCommand="SELECT * FROM [event_participants]" DeleteCommand="delete_event_participants" DeleteCommandType="StoredProcedure"></asp:SqlDataSource>
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
                                        <table class="auto-style1">
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label58" runat="server" Text="Acitvity ID"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox30" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label59" runat="server" Text="Activity Name"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox31" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label60" runat="server" Text="Coordinator"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox32" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label61" runat="server" Text="Trainer"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox33" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label62" runat="server" Text="Session"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList26" runat="server">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label63" runat="server" Text="Date"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox35" runat="server" TextMode="Date"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Button ID="Button7" runat="server" Text="Add" OnClick="Button7_Click" />
                                                </td>
                                                <td>&nbsp;</td>
                                            </tr>
                                        </table>
                                        <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataKeyNames="activity_id" DataSourceID="SqlDataSource5">
                                            <Columns>
                                                <asp:TemplateField HeaderText="activity_id" SortExpression="activity_id">
                                                    <EditItemTemplate>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("activity_id") %>'></asp:Label>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("activity_id") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="activity_name" SortExpression="activity_name">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("activity_name") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("activity_name") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="coordinator" SortExpression="coordinator">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("coordinator") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("coordinator") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="trainer" SortExpression="trainer">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("trainer") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("trainer") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="session" SortExpression="session">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("session") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("session") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="date" SortExpression="date">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("date") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("date") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Edit">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="lkbl1" runat="server" CommandName="edit">Edit</asp:LinkButton>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:LinkButton ID="lkbl2" runat="server" CommandName="update">Update</asp:LinkButton>
                                                        <asp:LinkButton ID="lkbl3" runat="server" CommandName="delete">Delete</asp:LinkButton>
                                                        <asp:LinkButton ID="lkbl4" runat="server" CommandName="cancel">Cancel</asp:LinkButton>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:school_book_dbConnectionString %>" SelectCommand="SELECT * FROM [school_activity]"></asp:SqlDataSource>
                                    </td>
                                    <td class="auto-style7">
                                        <asp:Label ID="Label79" runat="server" Text="Participants"></asp:Label>
                                        <asp:GridView ID="GridView12" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource11">
                                            <Columns>
                                                <asp:BoundField DataField="activity_id" HeaderText="activity_id" SortExpression="activity_id" />
                                                <asp:BoundField DataField="particpant_ID" HeaderText="particpant_ID" SortExpression="particpant_ID" />
                                                <asp:BoundField DataField="paticipant_name" HeaderText="paticipant_name" SortExpression="paticipant_name" />
                                                <asp:TemplateField HeaderText="Delete">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="lkbl3" runat="server" CommandName="delete">Delete</asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:school_book_dbConnectionString %>" SelectCommand="SELECT * FROM [activity_participants]" DeleteCommand="delete_activity_participants" DeleteCommandType="StoredProcedure"></asp:SqlDataSource>
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
                                        <table class="auto-style1">
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label64" runat="server" Text="From"></asp:Label>
                                                </td>
                                                <td colspan="3">
                                                    <asp:Label ID="Label68" runat="server" Text="My Name"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label65" runat="server" Text="To"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList22" runat="server" DataSourceID="SqlDataSource6" DataTextField="id_number" DataValueField="id_number">
                                                    </asp:DropDownList>
                                                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:school_book_dbConnectionString %>" SelectCommand="SELECT * FROM [student_account]"></asp:SqlDataSource>
                                                </td>
                                                <td>
                                                    <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" Text="Find Name" />
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label67" runat="server" Text="Receiver Name"></asp:Label>
                                                    <asp:GridView ID="GridView13" runat="server">
                                                    </asp:GridView>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label80" runat="server" Text="Country"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList27" runat="server">
                                                    </asp:DropDownList>
                                                </td>
                                                <td>&nbsp;</td>
                                                <td>
                                                    <asp:Label ID="Label83" runat="server" Text="Timetable ID"></asp:Label>
                                                    <asp:DropDownList ID="DropDownList28" runat="server" DataSourceID="SqlDataSource2" DataTextField="examtimetable_id" DataValueField="examtimetable_id">
                                                    </asp:DropDownList>
                                                    <asp:Button ID="Button13" runat="server" OnClick="Button13_Click" Text="Get Report" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label81" runat="server" Text="Phone Number"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox39" runat="server"></asp:TextBox>
                                                </td>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label66" runat="server" Text="Message"></asp:Label>
                                                </td>
                                                <td colspan="3">
                                                    <asp:TextBox ID="TextBox38" runat="server" TextMode="MultiLine"></asp:TextBox>
                                                    <asp:Label ID="Label82" runat="server" Text="  "></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Button ID="Button8" runat="server" Text="Send" OnClick="Button8_Click" />
                                                </td>
                                                <td colspan="3">&nbsp;</td>
                                            </tr>
                                        </table>
                                        <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource9">
                                            <Columns>
                                                <asp:BoundField DataField="sender" HeaderText="sender" SortExpression="sender" />
                                                <asp:BoundField DataField="receiver" HeaderText="receiver" SortExpression="receiver" />
                                                <asp:BoundField DataField="r_message" HeaderText="r_message" SortExpression="r_message" />
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:school_book_dbConnectionString %>" SelectCommand="SELECT * FROM [student_messages]"></asp:SqlDataSource>
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
