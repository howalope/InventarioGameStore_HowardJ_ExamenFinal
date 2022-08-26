<%@ Page Title="" Language="C#" MasterPageFile="~/InventarioMaster.Master" AutoEventWireup="true" CodeBehind="CostoInventarios.aspx.cs" Inherits="InventarioGameStore.CostoInventarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Bienvenido:
        <asp:Label ID="LUsuario" runat="server" BorderStyle="None"></asp:Label>
        <br />
    </p>
    <p>
    </p>
    <p>
        <asp:Button ID="BRegresar" runat="server" OnClick="BRegresar_Click" Text="Regresar" />
    </p>
</asp:Content>
