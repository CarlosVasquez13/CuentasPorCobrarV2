<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistroData.aspx.cs" Inherits="CuentasPorCobrar.RegistroData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main>

        
    <div class="container">

        <h1>Registro Data </h1>

        <div class="row mt-3">

            <div class="w-100 "></div> 
            <h4>Registro de estado de Cuenta</h4>
            <div class="w-100 "></div> 

            <div class="col-lg-4">
                <label for="exampleInputIdEstadoCuenta">Id Estado de Cuenta</label>
                <input type="number" class="form-control" name="IdEstadoCuentanum" id="IdEstadoCuentanum" runat="server"
                    placeholder="Ingrese Id Estado" value="">
            </div>
            <div class="col-lg-4">
                <label for="exampleInputDescripcion">Descripcion</label>
                <input type="text" class="form-control" id="DescripcionText" runat="server"
                    placeholder="Ingrese Nombre de Estado Cuenta" value="">
            </div>
            <div class="w-100 mt-2"></div> 
            <button type="button" class="btn btn-primary">Guardar</button>

        </div>

        <div class="row">

            <div class="w-100 "></div> 
            <h4>Registro de estado de Pais</h4>
            <div class="w-100 "></div> 

            <div class="col-lg-4">
                <label for="exampleInputIdPais">Id Estado de Pais</label>
                <input type="number" class="form-control" name="IdPaisnum" id="IdPaisnum" runat="server"
                    placeholder="Ingrese Id Pais" value="">
            </div>
            <div class="col-lg-4">
                <label for="exampleInputNombre">Nombre de Pais</label>
                <input type="text" class="form-control" id="PaisText" runat="server"
                    placeholder="Ingrese Nombre de Pais" value="">
            </div>
            <div class="w-100 mt-2"></div> 
            <button type="button" class="btn btn-primary">Guardar</button>
        
        </div>
        <div class="row ">

            <div class="w-100 "></div> 
            <h3>Registro de estado de Cuenta</h3>
            <div class="w-100 "></div> 

            <div class="col-lg-4">
                <label for="exampleInputIdDepa">Id Estado de Departamento</label>
                <input type="number" class="form-control" name="IdDepanum" id="IdDepanum" runat="server"
                    placeholder="Ingrese Id Departamento" value="">
            </div>
            <div class="col-lg-4">
                <label for="exampleInputDepartamento">Nombre de Departamento</label>
                <input type="text" class="form-control" id="DepartamentoText" runat="server"
                    placeholder="Ingrese Nombre de Departamento" value="">
            </div>
           
            <div class="col-lg-4">
                <label for="inputEmail4">Seleccione Pais </label>
                <div class="dropdown">
                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownSelPaisPMenuButton"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Seleccione Pais                                                                               
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownSelPaisPMenuButton">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <a class="dropdown-item" href="#">Action</a>
                    </div>
                </div>
            </div>
            <div class="w-100 mt-2 "></div> 
            <button type="button" class="btn btn-primary">Guardar</button>
        
        </div>
        <div class="row">

            <div class="w-100 "></div> 
            <h3>Registro de Municipio</h3>
            <div class="w-100 "></div> 

            <div class="col-lg-4">
                <label for="exampleInputIdMunicipio">Id de Municipio</label>
                <input type="number" class="form-control" name="IdMunisnum" id="IdMunisnum" runat="server"
                    placeholder="Ingrese Id" value="">
            </div>
            <div class="col-lg-4">
                <label for="exampleInputNombreMuni">Nombre de Municipio</label>
                <input type="text" class="form-control" id="nombremuniText" runat="server"
                    placeholder="Ingrese Nombre de Municipio" value="">
            </div>
            <div class="w-100 mt-2"></div> 
            <button type="button" class="btn btn-primary">Guardar</button>
        
        </div>




    </div>

    </main>



</asp:Content>
