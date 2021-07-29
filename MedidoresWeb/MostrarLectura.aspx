<%@ Page Title="" Language="C#" MasterPageFile="~/Navegador.Master" AutoEventWireup="true" CodeBehind="MostrarLectura.aspx.cs" Inherits="MedidoresWeb.MostrarLectura" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentNavegador" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="row">
                   <div class="row mt-5">
                        <asp:GridView ID="grillaLectura" 
                            CssClass="table table-hover table-bordered"
                            AutoGenerateColums="false"
                            ShowHeaderWhenEmpty="True"
                            EmptyDataText="No hay registros"
                            OnRowCommand="grillaLectura_RowCommand"
                            runat="server">
                            <Columns>
                                <asp:BoundField HeaderText="Id Lectura"  DataField="Id" />
                                <asp:BoundField HeaderText="Medidor"  DataField="Medidor.Nombre" />
                                <asp:BoundField HeaderText="Fecha"  DataField="Fecha" />
                                <asp:BoundField HeaderText="Valor"  DataField="Valor" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </ContentTemplate>
       </asp:UpdatePanel>
</asp:Content>

