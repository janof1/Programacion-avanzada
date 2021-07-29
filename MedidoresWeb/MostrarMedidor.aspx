<%@ Page Title="" Language="C#" MasterPageFile="~/Navegador.Master" AutoEventWireup="true" CodeBehind="MostrarMedidor.aspx.cs" Inherits="MedidoresWeb.MostrarMedidor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentNavegador" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="row">
                   <div class="row mt-5">
                        <asp:GridView ID="grillaMedidor" 
                            CssClass="table table-hover table-bordered"
                            AutoGenerateColums="false"
                            ShowHeaderWhenEmpty="True"
                            EmptyDataText="No hay registros"
                            OnRowCommand="grillaMedidor_RowCommand"
                            runat="server">
                            <Columns>
                                <asp:BoundField HeaderText="Nro Medidor"  DataField="NroMedidor" />
                                <asp:BoundField HeaderText="Nombre"  DataField="Nombre" />
                                <asp:BoundField HeaderText="Fecha Creación"  DataField="FechaCreacion" />
                                <asp:BoundField HeaderText="Valor"  DataField="Valor" />
                                <asp:TemplateField HeaderText="Acciones">
                                    <ItemTemplate>
                                        <asp:Button CssClass="btn btn-danger" runat="server"
                                             CommandName="eliminar" Text="Eliminar"
                                             CommandArgument='<%# Eval("Id")%>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </ContentTemplate>
       </asp:UpdatePanel>
</asp:Content>

