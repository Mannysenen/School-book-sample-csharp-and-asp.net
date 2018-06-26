<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fr1_login.aspx.cs" Inherits="school_book_fr1.fr1_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous"/>

    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
  <style>
  /* Make the image fully responsive */
  .carousel-inner img {
      width: 100%;
      height: 100%;
  }
  </style>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="form-control" style="background-color: #3366FF">
        <table class="auto-style1">
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Label ID="Label7" runat="server" Font-Names="Brush Script MT" style="font-size: 40pt; color: #FFFFFF;" Text="School Book"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Panel ID="Panel1" runat="server" style="text-align: center">
                        <asp:Label ID="Label1" runat="server" style="font-size: 18pt; color: #FFFFFF; font-family: 'Segoe UI'; font-weight: 700;" Text="Admin"></asp:Label>
                        <br />
                        <br />
                        <table class="auto-style1">
                            <tr>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text="Username" style="color: #FFFFFF; font-family: 'Segoe UI'"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Text="Password" style="color: #FFFFFF; font-family: 'Segoe UI'"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" CssClass="btn-primary" />
                                    <asp:Button ID="Button3" runat="server" Text="Create Account" OnClick="Button3_Click" CssClass="btn-secondary" />
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
                <td>
                    <asp:Panel ID="Panel2" runat="server" style="text-align: center">
                        <asp:Label ID="Label2" runat="server" style="font-size: 18pt; color: #FFFFFF; font-family: 'Segoe UI'; font-weight: 700;" Text="Student"></asp:Label>
                        <br />
                        <br />
                        <table class="auto-style1">
                            <tr>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Text="Username" style="color: #FFFFFF; font-family: 'Segoe UI'"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label6" runat="server" Text="Password" style="color: #FFFFFF; font-family: 'Segoe UI'"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <asp:Button ID="Button2" runat="server" Text="Login" OnClick="Button2_Click" CssClass="btn-primary"/>
                                    <asp:Button ID="Button4" runat="server" Text="Create Account" OnClick="Button4_Click" CssClass="btn-secondary"/>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
        </table>
    </form>
    <div id="caro" class="carousel slide" data-ride="carousel">
  <ul class="carousel-indicators">
    <li data-target="#caro" data-slide-to="0" class="active"></li>
    <li data-target="#caro" data-slide-to="1"></li>
    <li data-target="#caro" data-slide-to="2"></li>
  </ul>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="programmer_coder_admin_administrator_5628_1366x768.jpg" alt="Knowledge" width="1366" height="768"/>
      <div class="carousel-caption">
        <h3>Knowledge</h3>
      </div>   
    </div>
    <div class="carousel-item">
      <img src="68516997-wall-e-wallpapers.jpg" alt="Growth" width="1366" height="768"/>
      <div class="carousel-caption">
        <h3>Growth</h3>
      </div>   
    </div>
    <div class="carousel-item">
      <img src="Spacex-4K.jpeg" alt="Explore" width="1366" height="768"/>
      <div class="carousel-caption">
        <h3>Explore</h3>
      </div>   
    </div>
  </div>
  <a class="carousel-control-prev" href="#caro" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#caro" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
</body>
</html>
