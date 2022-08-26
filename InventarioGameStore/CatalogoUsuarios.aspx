<%@ Page Title="" Language="C#" MasterPageFile="~/InventarioMaster.Master" AutoEventWireup="true" CodeBehind="CatalogoUsuarios.aspx.cs" Inherits="InventarioGameStore.CatalogoUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Bienvenido:
        <asp:Label ID="LUsuario" runat="server" BorderStyle="None"></asp:Label>
        <br />
    </p>
    <p>
        Catálogo Usuarios</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Codigo_Usuario" DataSourceID="USUARIOSDB">
            <Columns>
                <asp:BoundField DataField="Codigo_Usuario" HeaderText="Codigo_Usuario" ReadOnly="True" SortExpression="Codigo_Usuario" />
                <asp:BoundField DataField="Nombre_Usuario" HeaderText="Nombre_Usuario" SortExpression="Nombre_Usuario" />
                <asp:BoundField DataField="Clave_Usuario" HeaderText="Clave_Usuario" SortExpression="Clave_Usuario" />
                <asp:BoundField DataField="Tipo_Usuario" HeaderText="Tipo_Usuario" SortExpression="Tipo_Usuario" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="USUARIOSDB" runat="server" ConnectionString="<%$ ConnectionStrings:INVENTARIODBConnectionString %>" DeleteCommand="DELETE FROM Usuarios WHERE Codigo_Usuario = @codigoU" SelectCommand="SELECT * FROM [Usuarios]" UpdateCommand="UPDATE Usuarios set Nombre_Usuario=@nombreU, Clave_Usuario = @claveU, Tipo_Usuario=@tipoU where Codigo_Usuario=@codigoU">
            <DeleteParameters>
                <asp:ControlParameter ControlID="TCodigoU" Name="codigoU" PropertyName="Text" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="TNombreU" Name="nombreU" PropertyName="Text" />
                <asp:ControlParameter ControlID="TClaveU" Name="claveU" PropertyName="Text" />
                <asp:ControlParameter ControlID="DDTipoU" Name="tipoU" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="TCodigoU" Name="codigoU" PropertyName="Text" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        Modificar Usuarios</p>
    <p>
        Codigo:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TCodigoU" runat="server"></asp:TextBox>
    </p>
    <p>
        Nombre:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TNombreU" runat="server"></asp:TextBox>
    </p>
    <p>
        Clave:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TClaveU" runat="server"></asp:TextBox>
    </p>
    <p>
        Tipo:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DDTipoU" runat="server" DataSourceID="SqlDataSource1" DataTextField="Codigo_TipoUsuario" DataValueField="Codigo_TipoUsuario">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:INVENTARIODBConnectionString %>" SelectCommand="SELECT [Codigo_TipoUsuario] FROM [Tipo_Usuario]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:Button ID="BAgregarU" runat="server" OnClick="BAgregarU_Click" Text="Agregar" />
&nbsp;&nbsp;
        <asp:Button ID="BEliminarU" runat="server" OnClick="BEliminarU_Click" Text="Eliminar" />
&nbsp;&nbsp;
        <asp:Button ID="BActulizarU" runat="server" OnClick="BActulizarU_Click" Text="Actualizar" />
    </p>
    <p>
        <asp:Button ID="BRegresar" runat="server" OnClick="BRegresar_Click" Text="Regresar" />
    </p>
    <p>
    </p>
</asp:Content>
