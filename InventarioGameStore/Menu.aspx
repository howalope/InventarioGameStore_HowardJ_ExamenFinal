<%@ Page Title="" Language="C#" MasterPageFile="~/InventarioMaster.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="InventarioGameStore.Menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;Menu de Opciones</p>
    <div class="dropdown">
  <button class="dropbtn" id="BDropdownC">Catálogos</button>
  <div class="dropdown-content">
    <a href="CatalogoArticulos.aspx">Catálogo de Artículos</a>
    <a href="CatalogoUsuarios.aspx">Catálogo de Usuarios</a>
    <a href="CatalogoTipoArticulos.aspx">Catálogo de Tipos de Artículos</a>
  </div>
</div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div class="dropdown">
  <button class="dropbtn" id="BDropdownR">Reportes</button>
  <div class="dropdown-content">
    <a href="CostoInventarios.aspx">Costo de Inventarios</a>
    <a href="ProyeccionGanancias.aspx">Proyección de Ganancias</a>
    <a href="ReporteArticulos.aspx">Reporte de Artículos</a>
  </div>
</div>
    <br />
    <br />
    <asp:Button ID="BCerrarS" runat="server" OnClick="BCerrarS_Click" Text="Cerrar Sesión" />
</asp:Content>
