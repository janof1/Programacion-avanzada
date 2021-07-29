<%@ Page Title="" Language="C#" MasterPageFile="~/Navegador.Master" AutoEventWireup="true" CodeBehind="AgregarLectura.aspx.cs" Inherits="MedidoresWeb.AgregarLectura" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentNavegador" runat="server">
    <div class="row mt-5">
        <div class="col-lg-6 mx-auto">
            <div class="card">
                <div class="card-header bg-primary text-white">
                    <h3>Ingresar Lectura</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="medidorDDL">Medidor</label>
                        <asp:DropDownList ID="medidorDDL" runat="server"></asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label for="fechaTxt">Fecha</label>
                        <asp:TextBox ID="fechaTxt" TextMode="Date" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="fechaTxt" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Debe Ingresar Fecha Lectura"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="valorTxt">Valor</label>
                        <asp:TextBox ID="valorTxt" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="valorTxt" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Debe Ingresar Valor Lectura"></asp:RequiredFieldValidator>
                    </div>
                    <asp:Button OnClick="ingresarBtn_Click" runat="server" CssClass="btn btn-secondary float-right" ID="ingresarBtn" Text="Ingresar" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
