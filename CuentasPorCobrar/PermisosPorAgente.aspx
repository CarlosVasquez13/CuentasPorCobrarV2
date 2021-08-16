<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PermisosPorAgente.aspx.cs" Inherits="CuentasPorCobrar.PermisosPorAgente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row" style="margin-top: 3rem;">
        <div class="col-lg-12">
            <h5>Asignar Permiso por Agente</h5>
        </div>
        <div class="col-lg-4">
            <div>
                <h4>Selecciona el agente</h4>
            </div>
            <label for="DropDownListAgentes">Agente</label>
            <asp:DropDownList ID="DropDownListAgentes" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownListAgentes_SelectedIndexChanged"></asp:DropDownList>
        </div>

        <div class="col-lg-6">
            <div>
                <h5>Selecciona el Permiso</h5>
            </div>
            <label for="DropDownListPermisos">Permiso</label>
            <asp:DropDownList ID="DropDownListPermisos" runat="server"></asp:DropDownList>
        </div>
        <div class="col-lg-12 mt-3">
            <button type="button" class="btn btn-success" id="btnAgregarPermiso" onserverclick="btnAgregarPermiso_ServerClick" runat="server">Asiganar Permiso</button>
        </div>
    </div>
    <div class="row" style="margin-top: 3rem;" runat="server" id="permisosAgenteDiv">
        <div class="col-lg-12">
            <h4>Permisos del Agente</h4>
            <div class="col-lg-6">
                <div class="alert alert-danger" id="alertaMensaje" runat="server" role="alert">
                    El agente aún no cuenta con permisos asignados. 
                </div>
            </div>
        </div>
        <asp:GridView
            ID="GridPermisosAgente" runat="server" CssClass="table table-striped">
        </asp:GridView>
    </div>
    <hr class="style18">
    <%--<p>
        <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">Link with href
        </a>
        <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
            Permisos por Agente
        </button>
    </p>
    <div class="collapse" id="collapseExample">
        <div class="card card-body">
            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.
        </div>
    </div>--%>

</asp:Content>
