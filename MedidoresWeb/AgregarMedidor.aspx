<%@ Page Title="" Language="C#" MasterPageFile="~/Navegador.Master" AutoEventWireup="true" CodeBehind="AgregarMedidor.aspx.cs" Inherits="MedidoresWeb.AgregarMedidor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentNavegador" runat="server">
    <div class="row mt-5">
        <div class="col-lg-6 mx-auto">
            <div class="card">
                <div class="card-header bg-primary text-white">
                    <h3>Ingresar Medidor</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="nombreTxt">NroMedidor</label>
                        <asp:TextBox ID="nromedidorTxt" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="nromedidorTxt" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Debe Ingresar Nro Medidor"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="nombreTxt">Nombre</label>
                        <asp:TextBox ID="nombreTxt" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="nombreTxt" ID="RequiredFieldValidator" runat="server" ErrorMessage="Debe Ingresar Nombre"></asp:RequiredFieldValidator>
                    </div>
                    <asp:Button OnClick="ingresarBtn_Click" runat="server" CssClass="btn btn-secondary float-right" ID="ingresarBtn" Text="Ingresar" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
