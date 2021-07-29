<%@ Page Title="" Language="C#" MasterPageFile="~/Navegador.Master" AutoEventWireup="true" CodeBehind="AgregarUsuario.aspx.cs" Inherits="MedidoresWeb.AgregarUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentNavegador" runat="server">
    <div class="row mt-5">
        <div class="col-lg-6 mx-auto">
            <div class="card">
                <div class="card-header bg-primary text-white">
                    <h3>Ingresar Usuario</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="rutTxt">Rut</label>
                        <asp:TextBox ID="rutTxt" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="rutTxt" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Ingrese un Rut Valido"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="nombreTxt">Nombre</label>
                        <asp:TextBox ID="nombreTxt" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="nombreTxt" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Debe Ingresar Nombre"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="apellidoTxt">Apellido</label>
                        <asp:TextBox ID="apellidoTxt" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="apellidoTxt" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Debe Ingresar Apellido"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="passwordTxt">Password</label>
                        <asp:TextBox ID="passwordTxt" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="passwordTxt" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Debe ingresar su Password"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                         <label for="emailTxt">Email</label>
                        <asp:TextBox ID="emailTxt" TextMode="Email" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="emailTxt" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Debe ingresar Email"></asp:RequiredFieldValidator>
                        </div>
                    <asp:Button OnClick="ingresarBtn_Click" runat="server" CssClass="btn btn-secondary float-right" ID="ingresarBtn" Text="Ingresar" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
