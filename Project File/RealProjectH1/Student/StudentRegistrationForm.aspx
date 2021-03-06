<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdminLayout.Master" AutoEventWireup="true" CodeBehind="StudentRegistrationForm.aspx.cs" Inherits="RealProjectH1.StudentRegistrationForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Student Registration Form</h1>
        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
            class="fas fa-download fa-sm text-white-50"></i>Generate Report</a>
    </div>

    <div class="card">
        <div class="card-header bg-gradient-primary text-light">
            Personal Details
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-md-6">
                    <label class="form-label">First Name</label>
                    <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <label clas="form-label">Last Name</label>
                    <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <label class="form-label">Date of Birth</label>
                    <asp:TextBox ID="txtDateOfBirth" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <label class="form-label">Gender</label>
                    <asp:DropDownList ID="ddlGender" runat="server">
                        <asp:ListItem Value="0">Select...</asp:ListItem>
                        <asp:ListItem Value="1">Male</asp:ListItem>
                        <asp:ListItem Value="2">Female</asp:ListItem>
                        <asp:ListItem Value="3">Others</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <label class="form-label">Contact Number</label>
                    <asp:TextBox ID="txtContactNumber" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <label class="form-label">Contact Number</label>
                    <asp:TextBox ID="txtAltContactNumber" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <label class="form-label">Email</label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                </div>
            </div>

        </div>

</asp:Content>
