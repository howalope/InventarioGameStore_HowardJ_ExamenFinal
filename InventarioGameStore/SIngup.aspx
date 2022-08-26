<%@ Page Title="" Language="C#" MasterPageFile="~/InventarioMaster.Master" AutoEventWireup="true" CodeBehind="Singup.aspx.cs" Inherits="InventarioGameStore.SIngup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Registro de Usuarios</p>
    <p>
        Codigo Usuario:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TCodigoUsuario" runat="server"></asp:TextBox>
    </p>
    <p>
        Nombre Usuario:&nbsp;&nbsp;
        <asp:TextBox ID="TNombreUsuario" runat="server"></asp:TextBox>
    </p>
    <p>
        Clave:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TClaveUsuario" runat="server"></asp:TextBox>
    </p>
    <p>
        Tipo de Usuario: <asp:DropDownList ID="DDTipoUsuario" runat="server" DataSourceID="SqlInventarioDB" DataTextField="Codigo_TipoUsuario" DataValueField="Codigo_TipoUsuario">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlInventarioDB" runat="server" ConnectionString="<%$ ConnectionStrings:INVENTARIODBConnectionString %>" SelectCommand="SELECT [Codigo_TipoUsuario] FROM [Tipo_Usuario]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:Button ID="BRegistrarse" runat="server" Text="Registrarse" OnClick="BRegistrarse_Click" />
    </p>
    <a href="Login.aspx">¿Ya tengo cuenta? Iniciar Sesión </a>
</asp:Content>
