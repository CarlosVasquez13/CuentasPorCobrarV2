<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CrearPermisos.aspx.cs" Inherits="CuentasPorCobrar.CrearPermisos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row" style="margin-top: 3rem;">
        <div class="col-lg-12">
            <h5>Crear Permisos</h5>
        </div>
        <div class="col-lg-12 my-2">
            <label for="inputEmail4">Descripción del Permiso</label>
            <input type="text" class="form-control" style="max-width: none;" name="descripcion" id="descripcionText" runat="server" placeholder="Descripción" value="">
        </div>
        <div class="col-lg-12 my-1">
            <button type="submit" class="btn btn-primary" id="btnRegistrarPermiso" onserverclick="btnRegistrarPermiso_ServerClick" runat="server">Registrar Permiso</button>
        </div>
        <div class="col-lg-12">
            <asp:GridView
                ID="GridPermisos" runat="server" CssClass="table table-striped">
            </asp:GridView>
        </div>
    </div>
</asp:Content>
