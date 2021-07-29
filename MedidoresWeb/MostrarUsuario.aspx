<%@ Page Title="" Language="C#" MasterPageFile="~/Navegador.Master" AutoEventWireup="true" CodeBehind="MostrarUsuario.aspx.cs" Inherits="MedidoresWeb.MostrarUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentNavegador" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="row">
                   <div class="row mt-5">
                        <asp:GridView ID="grillaUsuario" 
                            CssClass="table table-hover table-bordered"
                            AutoGenerateColums="false"
                            ShowHeaderWhenEmpty="True"
                            EmptyDataText="No hay registros"
                            OnRowCommand="grillaUsuario_RowCommand"
                            runat="server">
                            <Columns>
                                <asp:BoundField HeaderText="Nombre"  DataField="Nombre" />
                                <asp:BoundField HeaderText="Apellido"  DataField="Apellido" />
                                <asp:BoundField HeaderText="Email"  DataField="Email" />
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

