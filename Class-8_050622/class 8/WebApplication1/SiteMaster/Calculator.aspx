<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster/Calculator.Master" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="WebApplication1.SiteMaster.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <script>
        function abc(z) {
            alert(z.value);
            var x = document.getElementById('<%=txtabc.ClientID %>');

            if (z == "=") {
                x.value = eval(x.value)
            }
            else {

                x.value = x.value + z;
            }
        }
    </script>

    <div class="container">
        <div class="row">
            <div class="col-md-3">

            </div>
            <div class="col-md-6 breadcrumb">
                <div class="card">
                    <div class="card-body">
                        <table>
                            <tr>  
                                <td colspan="4">
                                    <asp:TextBox ID="txtabc" runat="server">
                                        0
                                    </asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button CssClass="btn btn-primary" Text ="7" runat="server" OnClientClick=abc(7) ID="b7"  />
                                </td>
                                <td>
                                    <asp:Button CssClass="btn btn-primary" Text ="8" runat="server" ID="b8" OnClientClick="abc(8)" />
                                </td>
                                <td>
                                    <asp:Button CssClass="btn btn-primary" Text ="9" runat="server" ID="b9" OnClientClick="abc(9)" />
                                </td>
                                <td>
                                    <asp:Button CssClass="btn btn-danger" Text ="/" runat="server" ID="bDividation" OnClientClick="abc('/')"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button CssClass="btn btn-primary" Text ="4" runat="server" ID="b4" OnClientClick="abc(4)"/>
                                </td>
                                <td>
                                    <asp:Button CssClass="btn btn-primary" Text ="5" runat="server" ID="b5" OnClientClick="abc(5)"/>
                                </td>
                                <td>
                                    <asp:Button CssClass="btn btn-primary" Text ="6" runat="server" ID="b6" OnClientClick="abc(6)"/>
                                </td>
                                <td>
                                    <asp:Button CssClass="btn btn-danger" Text ="*" runat="server" ID="bMultiplication" OnClientClick="abc('*')"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button CssClass="btn btn-primary" Text ="1" runat="server" ID="b1" OnClientClick="abc(1)"/>
                                </td>
                                <td>
                                    <asp:Button CssClass="btn btn-primary" Text ="2" runat="server" ID="b2" OnClientClick="abc(2)"/>
                                </td>
                                <td>
                                    <asp:Button CssClass="btn btn-primary" Text ="3" runat="server" ID="b3" OnClientClick="abc(3)"/>
                                </td>
                                <td>
                                    <asp:Button CssClass="btn btn-danger" Text ="-" runat="server" ID="bMinus" OnClientClick="abc('-')"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button CssClass="btn btn-primary" Text ="0" runat="server" ID="b0" OnClientClick="abc(0)"/>
                                </td>
                                <td>
                                    <asp:Button CssClass="btn btn-primary" Text ="." runat="server" ID="bDot" OnClientClick="abc(7)"/>
                                </td>
                                <td>
                                    <asp:Button CssClass="btn btn-danger" Text ="=" runat="server" ID="bEqual" OnClientClick="abc('=')"/>
                                </td>
                                <td>
                                    <asp:Button CssClass="btn btn-danger" Text ="+" runat="server" ID="bPlus" OnClientClick="abc(7)"/>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="col-md-3">

            </div>
        </div>
    </div>
</asp:Content>
