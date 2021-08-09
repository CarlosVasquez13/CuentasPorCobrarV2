<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MostrarUsuarios.aspx.cs" Inherits="CuentasPorCobrar.MostrarUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <%-- <asp:SqlDataSource ID="dataClientes" runat="server" ConnectionString="<%$ ConnectionStrings:MySQLConnectionString %>"
        SelectCommand="SELECT Id_Usuarios, P_Nombre, P_Apellido, Nombre_Usuario, Correo, Fecha_Creado, Activo  FROM base_cuentas_cobrar.usuarios;"
        ></asp:SqlDataSource>--%>
    <div>
        <h2>
            Usuarios
        </h2>
    </div>
    <div>
    <asp:GridView
        ID="GridUsuarios" runat="server" CssClass="table table-striped">
      <%--  <Columns>
            <asp:BoundField DataField="Id_Usuarios" AccessibleHeaderText="ID" />
            <asp:BoundField DataField="P_Nombre" AccessibleHeaderText="Nombre" />
            <asp:BoundField DataField="P_Apellido" AccessibleHeaderText="Apellido" />
            <asp:BoundField DataField="Nombre_Usuario" AccessibleHeaderText="Usuario" />
            <asp:BoundField DataField="Correo" AccessibleHeaderText="Correo" />
            <asp:BoundField DataField="Fecha_Creado" AccessibleHeaderText="Fecha Creado" />
            <asp:BoundField DataField="Activo" AccessibleHeaderText="Activo" />
        </Columns>--%>

    </asp:GridView>
    </div>

</asp:Content>
