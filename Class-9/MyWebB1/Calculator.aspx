<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster/SiteMain.Master" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="MyWebB1.Calculator" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>
        function xyz(x, x) {

        }
    </script>
      <script>
          function txtValidate() {
              var re = /^[-+]?[0-9]+\.[0-9]+$/;
              var found = str.match(re);
              if (found) {
                  alert("fhg");
              }
          }

          function abc(z) {
            
              var x = document.getElementById('<%=txtMonitor.ClientID %>');

              if (z == "=") {
                  x.value = eval(x.value);
              }
              else if (z == "C") {
                  x.value = "0";
              }
              else if (z=="B") {
                  var strLength = (x.value).length;
                  x.value = x.value.substring(0, strLength - 1);
                 
              }
              else {
                  if (x.value == "0") {
                      x.value = z;
                  }
                  else {
                      x.value = x.value + z;
                  }
                 
              }

          }
      </script>
    <div class="container">
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6 breadcrumb">
                <div class="card">
                    <div class="card-body">
                        <table>
                            <tr>
                                <td colspan="4">
                                    <asp:TextBox ID="txtMonitor" CssClass="form-control" runat="server">0</asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button CssClass="btn btn-primary" OnClientClick="abc(7)" Text="7" runat="server" ID="b7"/>
                                </td>
                                <td>
                                    <asp:Button CssClass="btn btn-primary" OnClientClick="abc(8)" Text="8" runat="server" ID="b8"/>
                                </td>
                                <td>
                                    <asp:Button CssClass="btn btn-primary" OnClientClick="abc(9)" Text="9" runat="server" ID="b9"/>
                                </td>
                                <td>
                                    <asp:Button CssClass="btn btn-danger"  OnClientClick="abc('/')" Text="/" runat="server" ID="bDividation"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button CssClass="btn btn-primary" OnClientClick="abc(4)" Text="4" runat="server" ID="b4"/>
                                </td>
                                <td>
                                    <asp:Button CssClass="btn btn-primary"  OnClientClick="abc(5)" Text="5" runat="server" ID="b5"/>
                                </td>
                                <td>
                                    <asp:Button CssClass="btn btn-primary"  OnClientClick="abc(6)" Text="6" runat="server" ID="b6"/>
                                </td>
                                <td>
                                    <asp:Button CssClass="btn btn-danger" OnClientClick="abc('-')"  Text="-" runat="server" ID="bMinus"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button CssClass="btn btn-primary" OnClientClick="abc(1)"  Text="1" runat="server" ID="b1"/>
                                </td>
                                <td>
                                    <asp:Button CssClass="btn btn-primary" OnClientClick="abc(2)"  Text="2" runat="server" ID="b2"/>
                                </td>
                                <td>
                                    <asp:Button CssClass="btn btn-primary" OnClientClick="abc(3)"  Text="3" runat="server" ID="b3"/>
                                </td>
                                <td>
                                    <asp:Button CssClass="btn btn-danger" OnClientClick="abc('*')"  Text="*" runat="server" ID="bMultiply"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button CssClass="btn btn-danger" OnClientClick="abc('+')"  Text="+" runat="server" ID="bAdd"/>
                                </td>
                                <td>
                                    <asp:Button CssClass="btn btn-danger" OnClientClick="abc('=')"  Text="=" runat="server" ID="bEqual"/>
                                </td>
                                <td>
                                    <asp:Button CssClass="btn btn-danger" OnClientClick="abc('C')"   Text="C" runat="server" ID="bCut"/>
                                </td>
                                <td>
                                    <asp:Button CssClass="btn btn-danger" OnClientClick="abc('B')"   Text="Back" runat="server" ID="bBack"/>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="col-md-3"></div>
        </div>
    </div>
</asp:Content>
