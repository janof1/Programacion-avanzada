<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MedidoresWeb.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPrincipal" runat="server">
    <div class="row mt-5">
        <div class="col-lg-6 mx-auto">
            <div class="card">
                <div class="card-header bg-primary text-white">
                    <h3>Login de Usuario</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                         <label for="emailTxt">Email</label>
                        <asp:TextBox ID="emailTxt" TextMode="Email" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="emailTxt" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Debe ingresar Email"></asp:RequiredFieldValidator>
                        </div>
                    <div class="form-group">
                        <label for="passwordTxt">Password</label>
                        <asp:TextBox ID="passwordTxt" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="passwordTxt" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Debe ingresar su Password"></asp:RequiredFieldValidator>
                    </div>
                    <asp:Button OnClick="ingresarBtn_Click" runat="server" CssClass="btn btn-secondary float-right" ID="ingresarBtn" Text="Ingresar" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
