<%@ Page Title="" Language="C#" MasterPageFile="~/InventarioMaster.Master" AutoEventWireup="true" CodeBehind="ProyeccionGanancias.aspx.cs" Inherits="InventarioGameStore.ProyeccionGanancias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Bienvenido:
        <asp:Label ID="LUsuario" runat="server" BorderStyle="None"></asp:Label>
    </p>
    <p>
        Proyección de Ganancias</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Codigo_Articulo" DataSourceID="ProyeccionDB">
            <Columns>
                <asp:BoundField DataField="Codigo_Articulo" HeaderText="Codigo_Articulo" ReadOnly="True" SortExpression="Codigo_Articulo" />
                <asp:BoundField DataField="Descripcion_Articulo" HeaderText="Descripcion_Articulo" SortExpression="Descripcion_Articulo" />
                <asp:BoundField DataField="Codigo_Tipo" HeaderText="Codigo_Tipo" SortExpression="Codigo_Tipo" />
                <asp:BoundField DataField="Precio_Articulo" HeaderText="Precio_Articulo" SortExpression="Precio_Articulo" />
                <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
                <asp:BoundField DataField="Costo_Articulo" HeaderText="Costo_Articulo" SortExpression="Costo_Articulo" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="ProyeccionDB" runat="server" ConnectionString="<%$ ConnectionStrings:INVENTARIODBConnectionString %>" SelectCommand="SELECT * FROM [Mae_Articulo]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:Button ID="BReporte" runat="server" OnClick="BReporte_Click" Text="Generar Reporte" />
&nbsp;&nbsp;
        <asp:Button ID="BRegresar" runat="server" OnClick="BRegresar_Click" Text="Regresar" />
    </p>
</asp:Content>
