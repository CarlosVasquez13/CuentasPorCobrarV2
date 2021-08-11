
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistroCliente.aspx.cs" Inherits="CuentasPorCobrar.RegistroCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main>


    
    <div class="container">

        <h1>Registra Cliente</h1>
        <div class="row mt-5">

            <div class="col-lg-4">
                <label for="inputEmail4">Id Cliente</label>
                <input type="number" class="form-control" name="IdClientenum" id="IdClientenum" runat="server"
                    placeholder="Ingrese Id Cliente" value="">
            </div>
            <div class="col-lg-4">
                <label for="inputEmail4">Primer Nombre</label>
                <input type="text" class="form-control" id="primerNombreClienteText" runat="server"
                    placeholder="Ingrese Primer Nombre" value="">
            </div>
            <div class="col-lg-4">
                <label for="inputEmail4">Segundo Nombre</label>
                <input type="text" class="form-control" id="segundoNombreClienteText" runat="server"
                    placeholder="Segundo Nombre" value="">
            </div>
            <div class="col-lg-4">
                <label for="inputEmail4">Primer Apellido</label>
                <input type="text" class="form-control" id="primerApellidoClienteText" runat="server"
                    placeholder="Ingrese Primer Apellido" value="">
            </div>
            <div class="col-lg-4">
                <label for="inputEmail4">Segundo Apellido</label>
                <input type="text" class="form-control" id="segundoApellidoClienteText" runat="server"
                    placeholder="Ingrese Segundo Apellido" value="">
            </div>
            <div class="w-100 mt-2"></div>

            <!-- Tabla Perteneciente a Telefono -->
            <div class="col-lg-4">
                <label for="inputEmail4">Id Telefono</label>
                <input type="number" class="form-control" id="IdTelefononum" runat="server"
                    placeholder="Ingrese Id Telefono" value="">
            </div>
            <div class="col-lg-4">
                <label for="inputEmail4">Numero Telefonico</label>
                <input type="text" class="form-control" id="numeroTelText" runat="server"
                    placeholder="Ingrese numero Telefonico" value="">
            </div>
            <div class="col-lg-4">
                <label for="inputEmail4">descripcion del Telefono</label>
                <input type="text" class="form-control" id="DescripcionTelText" runat="server"
                    placeholder="Ingrese descripcion acerca del Telefono" value="">
            </div>
            <div class="w-100 mt-2"></div>
            <button type="submit" class="btn btn-outline-success ml-3" id="btnAgregarTelCliente" onserverclick=" btn_AgregarTelCliente" runat="server">Agregar otro Telefono</button>
            <div class="w-100 mt-2"></div>

            <div class="col-lg-4">
                <label for="inputEmail4">Correo</label>
                <input type="email" class="form-control" id="correoText" runat="server" placeholder="Correo electronico"
                    value="">
            </div>

            <div class="col-lg-4">
                <label for="inputEmail4">DNI</label>
                <input type="text" class="form-control" id="DNIText" runat="server" placeholder="Ingrese DNI" value="">
            </div>
            <div class="col-lg-4">
                <label for="inputEmail4">RTN</label>
                <input type="text" class="form-control" id="RTNText" runat="server" placeholder="Ingrese RTN" value="">
            </div>
            <div class="col-lg-4">
                <label for="inputEmail4">Pasaporte</label>
                <input type="text" class="form-control" id="PasaporteText" runat="server"
                    placeholder="Ingrese Pasaporte" value="">
            </div>

            <div class="w-100"></div>

            <div class="col-lg-4">
                <label for="inputEmail4">Numero de Casa</label>
                <input type="number" class="form-control" id="numCasaNum" runat="server"
                    placeholder="Ingrese numero de Casa" value="">
            </div>
            <div class="col-lg-4">
                <label for="inputEmail4">Detalles de Direccion</label>
                <input type="text" class="form-control" id="DetaDireccionText" runat="server"
                    placeholder="Ingrese una descripion de Direccion" value="">
            </div>

            <div class="w-100"></div>

            <div class="col-lg-4">
                <label for="inputEmail4">Barrio o Colonia</label>
                <div class="dropdown">
                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Barrio/Colonia
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <a class="dropdown-item" href="#">Action</a>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <label for="inputEmail4">Municipio</label>
                <div class="dropdown">
                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMuniMenuButton"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Municipio
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMuniMenuButton">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <a class="dropdown-item" href="#">Action</a>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <label for="inputEmail4">Departamento</label>
                <div class="dropdown">
                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownDepaMenuButton"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Departamento
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownDepaMenuButton">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <a class="dropdown-item" href="#">Action</a>
                    </div>
                </div>
            </div>

        </div>
 

        <h2> Datos Laborales</h2>
        <div class="row mt-2">
            
            <div class="col-lg-4">
                <label for="inputEmail4">Id Trabajo del Cliente</label>
                <input type="number" class="form-control" name="IdReferenciaNum" id="IdTrabajoNum" runat="server"
                    placeholder="Ingrese Id Trabajo" value="">
            </div>
            <div class="col-lg-4">
                <label for="exampleInputNombreEmpresa">Nombre de la Empresa</label>
                <input type="text" class="form-control" id="primerNombreEmpresaCText" runat="server"
                    placeholder="Ingrese Nombre de Empresa" value="">
            </div>
            <div class="col-lg-4">
                <label for="inputEmail4">Cargo</label>
                <input type="text" class="form-control" id="cargoText" runat="server"
                    placeholder="Ingrese nombre de Cargo" value="">
            </div>
            <!-- Pasar el Id de cliente automaicamente  -->
            <div class="col-lg-4">
                <label for="inputEmail4">Id Cliente</label>
                <input type="text" class="form-control" id="IdClienteTrabajoText" runat="server"
                    placeholder="Ingrese Id" value="">
            </div>

            <div class="col-lg-4">
                <label for="inputEmail4">Barrio o Colonia</label>
                <div class="dropdown">
                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuReferenciaCButton"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Barrio/Colonia
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuReferenciaCButton">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <a class="dropdown-item" href="#">Action</a>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <label for="inputEmail4">Municipio</label>
                <div class="dropdown">
                    <button class="btn btn-secondary dropdown-toggle" type="button"
                        id="dropdownMuniReferenciaMenuButton" data-toggle="dropdown" aria-haspopup="true"
                        aria-expanded="false">
                        Municipio
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMuniReferenciaMenuButton">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <a class="dropdown-item" href="#">Action</a>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <label for="inputEmail4">Departamento</label>
                <div class="dropdown">
                    <button class="btn btn-secondary dropdown-toggle" type="button"
                        id="dropdownDepaReferenciaMenuButton" data-toggle="dropdown" aria-haspopup="true"
                        aria-expanded="false">
                        Departamento
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownDepaReferenciaMenuButton">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <a class="dropdown-item" href="#">Action</a>
                    </div>
                </div>
            </div>

            <%--<div class="w-100"></div>
        <div class="row mt-2">
            <button type="submit" class="btn btn-primary" id="btnGuardarRegReferencia" onserverclick=" btn_GuardarRegReferencia" runat="server">Guardar</button>
        </div>
        <div class="w-100"></div>--%>

        </div>
        
        <div class="w-100 mt-5"></div>
        <!-- Referencia Personal -->
        <h2> Referencia Personal</h2>
        <div class="row">
            
            <div class="col-lg-4">
                <label for="inputEmail4">Id Referencia Personal</label>
                <input type="number" class="form-control" name="IdReferenciaNum" id="IdReferenciaNum" runat="server"
                    placeholder="Ingrese Id para Referencia Personal" value="">
            </div>
            <div class="col-lg-4">
                <label for="inputEmail4">Primer Nombre</label>
                <input type="text" class="form-control" id="primerNombreReferenciaText" runat="server"
                    placeholder="Ingrese Primer Nombre" value="">
            </div>
            <div class="col-lg-4">
                <label for="inputEmail4">Segundo Nombre</label>
                <input type="text" class="form-control" id="segundoNombreReferenciaText" runat="server"
                    placeholder="Segundo Nombre" value="">
            </div>
            <div class="col-lg-4">
                <label for="inputEmail4">Segundo Apellido</label>
                <input type="text" class="form-control" id="primerApellidoReferenciaText" runat="server"
                    placeholder="Ingrese Primer Apellido" value="">
            </div>
            <div class="col-lg-4">
                <label for="inputEmail4">Segundo Apellido</label>
                <input type="text" class="form-control" id="segundoApellidoReferenciaText" runat="server"
                    placeholder="Ingrese Segundo Apellido" value="">
            </div>



            <div class="col-lg-4">
                <label for="inputEmail4">Correo</label>
                <input type="email" class="form-control" id="correoReferenciaText" runat="server"
                    placeholder="Correo electronico" value="">
            </div>
          
            <div class="col-lg-4">
                <label for="inputEmail4">DNI</label>
                <input type="text" class="form-control" id="DNIReferenciaText" runat="server" placeholder="Ingrese DNI"
                    value="">
            </div>

            <div class="col-lg-4">
                <label for="inputEmail4">Numero de Casa</label>
                <input type="number" class="form-control" id="Number1" runat="server"
                    placeholder="Ingrese numero de Casa" value="">
            </div>

            <div class="w-100"></div>

            <div class="col-lg-4">
                <label for="inputEmail4">Barrio o Colonia</label>
                <div class="dropdown">
                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuReferenciaButton"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Barrio/Colonia
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuReferenciaButton">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <a class="dropdown-item" href="#">Action</a>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <label for="inputEmail4">Municipio</label>
                <div class="dropdown">
                    <button class="btn btn-secondary dropdown-toggle" type="button"
                        id="dropdownMunReferenciaMenuButton" data-toggle="dropdown" aria-haspopup="true"
                        aria-expanded="false">
                        Municipio
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMunReferenciaMenuButton">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <a class="dropdown-item" href="#">Action</a>
                    </div>
                </div>
            </div>


            <div class="col-lg-4">
                <label for="inputEmail4">Departamento</label>

                 <asp:Label Id="Prueba" runat="server" Text="Prueba "></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" datavaluefield="id" datatextfield="Prueba"></asp:DropDownList>
                <div class="w-100"></div>
                <div class="dropdown">
                    <button class="btn btn-secondary dropdown-toggle" type="button"
                        id="dropdownDepReferenciaMenuButton" data-toggle="dropdown" aria-haspopup="true"
                        aria-expanded="false">
                        Departamento
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownDepReferenciaMenuButton">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <a class="dropdown-item" href="#">Action</a>
                    </div>
                </div>
            </div>


          






            
        <div class="w-100"></div>
        </div>

        <!-- Tabla Perteneciente a Telefono -->
        <!-- Seria bueno que este apartado de telefono se guarde por aparte, por si se quiere agregar otro telefono -->

        <div class="row">

            <div class="col-lg-4">
                <label for="inputEmail4">Id Telefono</label>
                <input type="number" class="form-control" id="IdTelefonoRef" runat="server"
                    placeholder="Ingrese Id Telefono" value="">
            </div>
            <div class="col-lg-4">
                <label for="inputEmail4">Numero Telefonico</label>
                <input type="text" class="form-control" id="NumeroTelefonoRef" runat="server"
                    placeholder="Ingrese numero Telefonico" value="">
            </div>
            <div class="col-lg-4">
                <label for="inputEmail4">descripcion del Telefono</label>
                <input type="text" class="form-control" id="DescripcionTelefonoRef" runat="server"
                    placeholder="Ingrese descripcion acerca del Telefono" value="">
            </div>
            <div class="w-100 mt-2" ></div>
            <button type="submit" class="btn btn-outline-success ml-3" id="btnAgregarTelReferencia" onserverclick=" btn_AgregarTelReferencia" runat="server">Agregar otro Telefono</button>

        </div>

        <div class="w-100 mt-4"></div>
        <div class="row mt-2">
            <button type="submit" class="btn btn-primary ml-3" id="Button1" onserverclick=" btn_GuardarRegCliente" runat="server">Guardar</button>
        </div>



    </div>
    </main>

    
</asp:Content>
