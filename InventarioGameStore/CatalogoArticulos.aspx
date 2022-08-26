<%@ Page Title="" Language="C#" MasterPageFile="~/InventarioMaster.Master" AutoEventWireup="true" CodeBehind="CatalogoArticulos.aspx.cs" Inherits="InventarioGameStore.CatalogoArticulos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="text-align: left">
        Bienvenido:
        <asp:Label ID="LUsuario" runat="server" BorderStyle="None"></asp:Label>
</p>
<p>
        Catálogo de Artículos</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Codigo_Articulo" DataSourceID="ARTICULOSDB">
            <Columns>
                <asp:BoundField DataField="Codigo_Articulo" HeaderText="Codigo_Articulo" ReadOnly="True" SortExpression="Codigo_Articulo" />
                <asp:BoundField DataField="Descripcion_Articulo" HeaderText="Descripcion_Articulo" SortExpression="Descripcion_Articulo" />
                <asp:BoundField DataField="Codigo_Tipo" HeaderText="Codigo_Tipo" SortExpression="Codigo_Tipo" />
                <asp:BoundField DataField="Precio_Articulo" HeaderText="Precio_Articulo" SortExpression="Precio_Articulo" />
                <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
                <asp:BoundField DataField="Costo_Articulo" HeaderText="Costo_Articulo" SortExpression="Costo_Articulo" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="ARTICULOSDB" runat="server" ConnectionString="<%$ ConnectionStrings:INVENTARIODBConnectionString %>" SelectCommand="SELECT * FROM [Mae_Articulo]" DeleteCommand="DELETE FROM Mae_Articulo WHERE Codigo_Articulo = @codigoA" InsertCommand="insert into Mae_Articulo (Codigo_Articulo, Descripcion_Articulo, Codigo_Tipo, Precio_Articulo, Cantidad, Costo_Articulo) values (@codigoA,@descripcionA,@tipoA,@precioA,@cantidadA,@costoA) " UpdateCommand="UPDATE Mae_Articulo set Descripcion_Articulo= @descripcionA, Codigo_Tipo = @tipoA, Precio_Articulo=@precioA, Cantidad= @cantidadA, Costo_Articulo =@costoA where Codigo_Articulo=@codigoA">
            <DeleteParameters>
                <asp:ControlParameter ControlID="TCodigoA" Name="codigoA" PropertyName="Text" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter />
                <asp:ControlParameter ControlID="TCodigoA" Name="codigoA" PropertyName="Text" />
                <asp:ControlParameter ControlID="TDescripcionA" Name="descripcionA" PropertyName="Text" />
                <asp:ControlParameter ControlID="TTipoA" Name="tipoA" PropertyName="Text" />
                <asp:ControlParameter ControlID="TPrecioA" Name="precioA" PropertyName="Text" />
                <asp:ControlParameter ControlID="TCantidadA" Name="cantidadA" PropertyName="Text" />
                <asp:ControlParameter ControlID="TCostoA" Name="costoA" PropertyName="Text" />
            </InsertParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="TDescripcionA" Name="descripcionA" PropertyName="Text" />
                <asp:ControlParameter ControlID="TCodigoA" Name="codigoA" PropertyName="Text" />
                <asp:ControlParameter ControlID="TPrecioA" Name="precioA" PropertyName="Text" />
                <asp:ControlParameter ControlID="TCantidadA" Name="cantidadA" PropertyName="Text" />
                <asp:ControlParameter ControlID="TCostoA" Name="costoA" PropertyName="Text" />
                <asp:ControlParameter ControlID="TTipoA" Name="tipoA" PropertyName="Text" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <br />
    Modificar Articulos<br />
    <br />
    Código Artículo:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TCodigoA" runat="server"></asp:TextBox>
    <br />
    Descripción Artículo:&nbsp;
    <asp:TextBox ID="TDescripcionA" runat="server"></asp:TextBox>
    <br />
    Tipo Articulo:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TTipoA" runat="server"></asp:TextBox>
    <br />
    Precio Artículo:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TPrecioA" runat="server"></asp:TextBox>
    <br />
    Cantidad:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TCantidadA" runat="server"></asp:TextBox>
    <br />
    Costo:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TCostoA" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="BIngresarA" runat="server" OnClick="BIngresarA_Click" Text="Ingresar" />
&nbsp;<asp:Button ID="BEliminarA" runat="server" Text="Eliminar" OnClick="BEliminarA_Click" />
&nbsp;<asp:Button ID="BActualizarA" runat="server" Text="Actualizar" OnClick="BActualizarA_Click" />
    <br />
    <br />
    <asp:Button ID="BRegresar" runat="server" OnClick="BRegresar_Click" Text="Regresar" />
    <br />
</asp:Content>
