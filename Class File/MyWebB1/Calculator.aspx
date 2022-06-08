<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster/CalSite.Master" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="MyWebB1.SiteMaster.Calculator" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6 breadcrumb">
                <div class="card">
                    <div class="card-body">

                        <table>
                            <tr>
                                <td colspan="4">
                                    <asp:TextBox ID="TextBox1" CssClass="form-control cal_scr" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button CssClass="btn btn-primary" Text="7" runat="server" />
                                </td>
                                <td>
                                    <asp:Button CssClass="btn btn-primary" Text="8" runat="server" />
                                </td>
                                <td>
                                    <asp:Button CssClass="btn btn-primary" Text="9" runat="server" />
                                </td>
                                <td>
                                    <asp:Button CssClass="btn btn-danger" Text="%" runat="server" />
                                </td>
                            </tr>


                            <tr>

                                <td>
                                    <asp:Button CssClass="btn btn-primary" Text="4" runat="server" />
                                </td>
                                <td>
                                    <asp:Button CssClass="btn btn-primary" Text="5" runat="server" />
                                </td>
                                <td>
                                    <asp:Button CssClass="btn btn-primary" Text="6" runat="server" />
                                </td>
                                <td>
                                    <asp:Button CssClass="btn btn-danger" Text="-" runat="server" />
                                </td>
                            </tr>

                            <tr>

                                <td>
                                    <asp:Button CssClass="btn btn-primary" Text="1" runat="server" />
                                </td>
                                <td>
                                    <asp:Button CssClass="btn btn-primary" Text="2" runat="server" />
                                </td>
                                <td>
                                    <asp:Button CssClass="btn btn-primary" Text="3" runat="server" />
                                </td>
                                <td>
                                    <asp:Button CssClass="btn btn-danger" Text="*" runat="server" />
                                </td>
                            </tr>
                            <tr>

                                <td>
                                    <asp:Button CssClass="btn btn-danger" Text="+" runat="server" />
                                </td>
                                <td>
                                    <asp:Button CssClass="btn btn-danger" Text="=" runat="server" />
                                </td>
                                <td>
                                    <asp:Button CssClass="btn btn-danger" Text="c" runat="server" />
                                </td>
                                <td>
                                    <asp:Button CssClass="btn btn-danger" Text="Back" runat="server" />
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
