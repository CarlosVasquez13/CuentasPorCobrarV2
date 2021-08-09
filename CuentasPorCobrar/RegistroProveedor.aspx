<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistroProveedor.aspx.cs" Inherits="CuentasPorCobrar.RegistroProveedor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <main>

        <div class="container-fluid">
    <h1>Registra Proveedor </h1>
    <div class="row">

        <div class="col-lg-4">
            <label for="exampleInputIdProveedor">Id Proveedor</label>
            <input type="number" class="form-control" name="IdProveedorum" id="IdProveedorum" runat="server"
                placeholder="Ingrese Id Proveedor" value="">
        </div>
        <div class="col-lg-4">
            <label for="exampleInputNombreEmpresa">Nombre de la Empresa</label>
            <input type="text" class="form-control" id="primerNombreEmpresaText" runat="server"
                placeholder="Ingrese Nombre de Empresa" value="">
        </div>

       
        <div class="col-lg-4">
            <label for="inputEmail4">RTN de la Empresa</label>
            <input type="text" class="form-control" id="RTNEmpresaText" runat="server" placeholder="Ingrese RTN"
                value="">
        </div>
        <div class="col-lg-4">
            <label for="exampleInputNumSucur">num Sucursal de Proveedor</label>
            <input type="number" class="form-control" name="numSucursalProveedorum" id="numSucursalProveedorum"
                runat="server" placeholder="Ingrese numero de Sucursal" value="">
        </div>

        <div class="col-lg-4">
            <label for="inputEmail4">Sucursal</label>
            <div class="dropdown">
                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownSucuMenuButton"
                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Sucursal
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownSucuMenuButton">
                    <a class="dropdown-item" href="#">Action</a>
                    <a class="dropdown-item" href="#">Another action</a>
                    <a class="dropdown-item" href="#">Action</a>
                </div>
            </div>
        </div>

        <div class="col-lg-4">
            <label for="inputEmail4">Barrio o Colonia</label>
            <div class="dropdown">
                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownColoPMenuButton"
                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Barrio/Colonia
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownColoPMenuButton">
                    <a class="dropdown-item" href="#">Action</a>
                    <a class="dropdown-item" href="#">Another action</a>
                    <a class="dropdown-item" href="#">Action</a>
                </div>
            </div>
        </div>

        <div class="col-lg-4">
            <label for="inputEmail4">Municipio</label>
            <div class="dropdown">
                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMuniPMenuButton"
                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Municipio
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMuniPMenuButton">
                    <a class="dropdown-item" href="#">Action</a>
                    <a class="dropdown-item" href="#">Another action</a>
                    <a class="dropdown-item" href="#">Action</a>
                </div>
            </div>
        </div>

        <div class="col-lg-4">
            <label for="inputEmail4">Departamento</label>
            <div class="dropdown">
                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownDepaPMenuButton"
                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Departamento
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownDepaPMenuButton">
                    <a class="dropdown-item" href="#">Action</a>
                    <a class="dropdown-item" href="#">Another action</a>
                    <a class="dropdown-item" href="#">Action</a>
                </div>
            </div>
        </div>

         <div class="w-100 m-2"></div>
        <h5>    Responsable de Proveedor</h5>
         <div class="w-100 m-2"></div> 
                                                                                                          
        <div class="col-lg-4">
            <label for="inputEmail4">Primer Nombre </label>
            <input type="text" class="form-control" id="primerNombreProveedorText" runat="server"
                placeholder="Ingrese Primer Nombre" value="">
        </div>
        <div class="col-lg-4">
            <label for="inputEmail4">Segundo Nombre </label>
            <input type="text" class="form-control" id="segundoNombreProveedorText" runat="server"
                placeholder="Segundo Nombre" value="">
        </div>
        <div class="col-lg-4">
            <label for="inputEmail4">Segundo Apellido</label>
            <input type="text" class="form-control" id="primerApellidoProveedorText" runat="server"
                placeholder="Ingrese Primer Apellido" value="">
        </div>
        <div class="col-lg-4">
            <label for="inputEmail4">Segundo Apellido</label>
            <input type="text" class="form-control" id="segundoApellidoProveedorText" runat="server"
                placeholder="Ingrese Segundo Apellido" value="">
        </div>

    </div>

    <!-- Tabla Perteneciente a Telefono -->
        <!-- Seria bueno que este apartado de telefono se guarde por aparte, por si se quiere agregar otro telefono -->
        <div class="row">

            <div class="col-lg-4">
                <label for="inputEmail4">Id Telefono</label>
                <input type="number" class="form-control" id="IdTelefonoPnum" runat="server"
                    placeholder="Ingrese Id Telefono" value="">
            </div>
            <div class="col-lg-4">
                <label for="inputEmail4">Numero Telefonico Empresa</label>
                <input type="text" class="form-control" id="numeroTelPText" runat="server"
                    placeholder="Ingrese numero Telefonico" value="">
            </div>
            <div class="col-lg-4">
                <label for="inputEmail4">descripcion del Telefono</label>
                <input type="text" class="form-control" id="DescripcionPTelText" runat="server"
                    placeholder="Ingrese descripcion acerca del Telefono" value="">
            </div>
             <div class="w-100 m-2"></div> 
            <button type="button" class="btn btn-outline-success">Agregar otro telefono</button>
            

        </div>

            <div class="w-100 m-2"></div> 

            <button type="button" class="btn btn-primary">Guardar </button>
</div>



    </main>





</asp:Content>
