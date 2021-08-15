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
    
  <%--  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
        
        <Columns>
            <asp:BoundField ItemStyle-Width="150px" DataField="ID" HeaderText="Customer ID" />
            <asp:BoundField ItemStyle-Width="150px" DataField="Nombre" HeaderText="Customer ID" />
            <asp:BoundField ItemStyle-Width="150px" DataField="Apellido" HeaderText="Customer ID" />
            <asp:BoundField ItemStyle-Width="150px" DataField="Usuario" HeaderText="Customer ID" />
            <asp:BoundField ItemStyle-Width="150px" DataField="Correo" HeaderText="Customer ID" />
            <asp:BoundField ItemStyle-Width="150px" DataField="F.Creado" HeaderText="Customer ID" />
            <asp:BoundField ItemStyle-Width="150px" DataField="Activo" HeaderText="Customer ID" />
        </Columns>
    </asp:GridView>--%>

</asp:Content>
