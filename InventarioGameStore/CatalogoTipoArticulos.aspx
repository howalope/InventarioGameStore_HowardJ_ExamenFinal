<%@ Page Title="" Language="C#" MasterPageFile="~/InventarioMaster.Master" AutoEventWireup="true" CodeBehind="CatalogoTipoArticulos.aspx.cs" Inherits="InventarioGameStore.CatalogoTipoArticulos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Bienvenido:
        <asp:Label ID="LUsuario" runat="server" BorderStyle="None"></asp:Label>
    </p>
    <p>
        Catálogo Tipos de Articulos</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Codigo_Tipo" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Codigo_Tipo" HeaderText="Codigo_Tipo" ReadOnly="True" SortExpression="Codigo_Tipo" />
                <asp:BoundField DataField="Descripcion_Tipo" HeaderText="Descripcion_Tipo" SortExpression="Descripcion_Tipo" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:INVENTARIODBConnectionString %>" SelectCommand="SELECT * FROM [Tipo_Articulo]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:Button ID="BRegresar" runat="server" OnClick="BRegresar_Click" Text="Regresar" />
    </p>
</asp:Content>
