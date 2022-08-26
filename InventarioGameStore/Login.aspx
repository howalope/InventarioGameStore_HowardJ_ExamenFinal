<%@ Page Title="" Language="C#" MasterPageFile="~/InventarioMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="InventarioGameStore.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        Iniciar Sesión</p>
    <p>
        <asp:TextBox ID="TNombre" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:TextBox ID="TClave" runat="server" OnTextChanged="TClave_TextChanged"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="BIniciar" runat="server" Text="Iniciar Sesión" OnClick="BIniciar_Click" />
    </p>
    <p>
        <a href="signup.aspx"> ¿No tengo cuenta? Registrarse </a></p>
</asp:Content>
