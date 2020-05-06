<%@ Page Title="Datos de Proyecto" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Datos_del_Proyecto_Alum.aspx.cs" Inherits="GEIP_UPT.Datos_del_Proyecto_Alum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!DOCTYPE html>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>GEIP</title>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, minimum-scale=1.0">

    <!-- Latest compiled and minified CSS -->
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"> -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/estilos.css">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
     <script src="https://kit.fontawesome.com/68163644d5.js" crossorigin="anonymous"></script>
    <!-- Optional theme -->
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous"> -->
</head>

<body>

   <header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-light bg-UPT" style="background-image:  url(imagenes/head.png);  ">
            <a class="navbar-brand" href="#"> <img src="imagenes/logo.png" width="70" height="70" alt=""></a>
            <h2 id="centrar">GEIP-UPT</h2>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon">  <i class="fas fa-fish"></i></span>
              </button>
            <div class="collapse navbar-collapse" id="navbarNav">

                <ul class="nav navbar-nav navbar-right">

                    <li class="nav-item dropdown" style="font-size: 20px; padding-right: 50px;">
                        <a class="dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Usuario
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="Login_administrar.aspx">Cerrar sesión</a>
                           
                        </div>
                    </li>
                </ul>
            </div>

        </nav>
    </header>

    <main>
    	<h3 class="pt-8" align="center">Datos del Proyecto</h3>
        <div class="container-fluid p-50 mb-20">
           
<%--                             /////////////////////////////////////////////////////////////////////////////////////////////--%>
        <div class="row d-flex justify-content-center">
            <div class="col-10 mb-38">
           <div  class="table-responsive"> 
            <asp:Table ID="TablaProyectos"
            runat="server" 
            CellPadding="10"
            CellSpacing="10"
            BackColor="White"
            BorderColor="Black"
            GridLines="Both" Height="142px"
            >
            <asp:TableHeaderRow 
                runat="server" 
                BackColor="WhiteSmoke"
                > 
                <asp:TableHeaderCell>ID</asp:TableHeaderCell>
                <asp:TableHeaderCell>Nombre</asp:TableHeaderCell>
                <asp:TableHeaderCell>Descripcion</asp:TableHeaderCell>
                <asp:TableHeaderCell>Avance</asp:TableHeaderCell>
                <asp:TableHeaderCell>Asesor</asp:TableHeaderCell>
                <asp:TableHeaderCell>Fecha de finalización</asp:TableHeaderCell>
                <asp:TableHeaderCell>Estado administrativo</asp:TableHeaderCell>
                <asp:TableHeaderCell>Estado</asp:TableHeaderCell>
                <asp:TableHeaderCell>Ver más</asp:TableHeaderCell>

            </asp:TableHeaderRow>
            
        </asp:Table>
                 

        </div>
            
             <div id="alert" class="alert alert-warning text-center pt-30 " role="alert">
                     NO HAY REGISTROS
            </div>

            </div>            
                    <asp:TextBox ID="Label1" CssClass="d-none" runat="server"></asp:TextBox>
                   <asp:Button ID="btnView" class="btn-info d-none" runat="server" Text="Submit" OnClick="btnSubmit_Click"></asp:Button>
            </div>
            
<%--                             /////////////////////////////////////////////////////////////////////////////////////////////--%>
           

            </div>  

            <div class="col-xs-12 col-sm-12 col-md-12 pt-39">
			    <a href="Administracion_alumnos.aspx" class="btn btn-info">Regresar</a>
		    </div>        	
	
		
    </main>

    <asp:HiddenField ID="hf_matricula"  runat="server" />
    <asp:Button ID="btnCargarTabla"  class="d-none" runat="server" onClick="btnCargarTabla_Click"  ></asp:Button>
    
    <!-- Bootstrap Modal Dialog -->
    <div class="modal fade show " id="modalProyectoDetalle" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
           <div class="modal-dialog modal-lg" role="document">

               <asp:UpdatePanel ID="upModal" runat="server" ChildrenAsTriggers="false" UpdateMode="Conditional">
                   <ContentTemplate>
                      
                       <div class="modal-content">
                                    
                                  <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalScrollableTitle">Datos del Proyecto</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                              <span aria-hidden="true">&times;</span>
                                            </button>
                                          </div>
                                  <div class="modal-body">

                                            <div class="container-fluid"> 
                                                <div class="row text-justify">
                                                    <div class="col-xs-12 col-md-12">
                                                        <asp:Label ID="Lb_NombrePro" runat="server" Text="Nombre del proyecto: "></asp:Label>
                                                    </div>
                                                </div>
                                                <div class="row text-justify">
                                                    <div class=" col-xs-12 col-md-12">
                                                        <asp:Label ID="Lb_TipoPro" runat="server" Text="Tipo de proyecto: "></asp:Label>
                                                    </div>
                                                  
                                                </div>
                                                <div class="row text-justify">
                                                      <div class="col-xs-12 col-md-12">
                                                        <asp:Label ID="Lb_Clasificacion" runat="server" Text="Clasificacion: "></asp:Label>
                                                    </div>
                                                </div>
                                                <div class="row text-justify">
                                                    <div class="col-xs-12 col-md-12">
                                                        <asp:Label ID="Lb_Avance" runat="server" Text="Avance: "></asp:Label>
                                                    </div>
                                                   

                                                </div>

                                                <div class="row text-justify">
                                                     <div class="col-xs-12 col-md-12">
                                                        <asp:Label ID="Lb_ProgramaE" runat="server" Text="Programa educativo:"></asp:Label>
                                                    </div>
                                                </div>


                                                <div class="row text-justify">

                                                    <div class="col-xs-12 col-md-12 ">
                                                        <asp:Label ID="Lb_Asesor" runat="server" Text="Asesor: "></asp:Label>
                                                    </div>

                                                </div>
                                                  <div class="row text-justify ">
                                                    <div class=" col-3"> Matricula: </div>
                                                    <div class=" col-7"> Alumno: </div>
                                                      <div class=" col-2"> Edad: </div>
                                                </div>
                                                  <div class="row text-justify">

                                                      <div class="col-3 ">
                                                        <asp:Label ID="Lb_Mat1" runat="server" Text=""></asp:Label>
                                                        </div>
                                                    <div class="col-7">
                                                        <asp:Label ID="Lb_Alumno1" runat="server" Text=""></asp:Label>
                                                        </div>
                                                      <div class="col-2">
                                                        <asp:Label ID="Lb_Edad1" runat="server" Text=""></asp:Label>
                                                      </div>

                                                </div>

                                                  <div class="row text-justify">
                                                      <div class="col-3  ">
                                                        <asp:Label ID="Lb_Mat2" runat="server" Text=""></asp:Label>
                                                        </div>
                                                    <div class="col-7 ">
                                                        <asp:Label ID="Lb_Alumno2" runat="server" Text=""></asp:Label>
                                                    </div>
                                                      <div class=" col-2">
                                                        <asp:Label ID="Lb_Edad2" runat="server" Text=""></asp:Label>
                                                      </div>

                                                </div>
                                                  <div class="row text-justify">
                                                      <div class="col-3 ">
                                                        <asp:Label ID="Lb_Mat3" runat="server" Text=""></asp:Label>
                                                        </div>
                                                      
                                                    <div class="col-7">
                                                        <asp:Label ID="Lb_Alumno3" runat="server" Text=""></asp:Label>
                                                    </div>
                                                      <div class="col-2 ">
                                                        <asp:Label ID="Lb_Edad3" runat="server" Text=""></asp:Label>
                                                      </div>
                                                </div>
                                                  <div class="row">
                                                      <div class="col-3 ">
                                                        <asp:Label ID="Lb_Mat4" runat="server" Text=""></asp:Label>
                                                        </div>
                                                    <div class="col-7">
                                                        <asp:Label ID="Lb_Alumno4" runat="server" Text=""></asp:Label>
                                                    </div>
                                                      <div class="col-2">
                                                        <asp:Label ID="Lb_Edad4" runat="server" Text=""></asp:Label>
                                                      </div>

                                                </div>
                                                <div class="row">
                                                    <div class="col-3  ">
                                                        <asp:Label ID="Lb_Mat5" runat="server" Text=""></asp:Label>
                                                    </div>
                                                    <div class="col-7">
                                                        <asp:Label ID="Lb_Alumno5" runat="server" Text=""></asp:Label>
                                                    </div>
                                                      <div class="col-2">
                                                        <asp:Label ID="Lb_Edad5" runat="server" Text=""></asp:Label>
                                                      </div>

                                                </div>


                                                  <div class="row text-justify">

                                                    <div class="col-xs-12 col-md-12">
                                                        <asp:Label ID="Lb_Cuatrimestre" runat="server" Text="Cuatrimestre:  "></asp:Label>
                                                    </div>
                                                     

                                                </div>

                                                <div class="row text-justify"> <div class="col-xs-12 col-md-12">
                                                        <asp:Label ID="Lb_Materias" runat="server" Text="Materias a las que impacta:  "></asp:Label>
                                                      </div></div>

                                                 <div class="row text-justify">
                                                      <div class="col-xs-12 col-md-12">
                                                        <asp:Label ID="Lb_Fecha" runat="server" Text="Fecha de finalizacion: "></asp:Label>
                                                      </div>
                                                </div>
                                                <div class="row text-justify">
                                                    <div class="col-xs-12 col-md-12">
                                                        <asp:Label ID="Lb_Convocatorias" runat="server" Text="Convocatorias: "></asp:Label>
                                                    </div>
                 
                                                </div>
                                                  <div class="row text-justify">
                                                    <div class="col-xs-12 col-md-12">
                                                        <asp:Label ID="Lb_recursos" runat="server" Text="Recursos: "></asp:Label>
                                                    </div>
                 
                                                </div>
                                                 <div class="row text-justify">
                                                    <div class="col-xs-12 col-md-12">
                                                        <asp:Label ID="Lb_descripcion" runat="server" Text="Descripcion:"></asp:Label>
                                                    </div>
                 
                                            </div>
                                          </div>
                                      </div>
                                   <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                                            <asp:Button type="button" OnClientClick="gdProyectoSt();" OnClick="BtnMod_Click" class="btn btn-secondary" runat="server" text="Modificar" ></asp:Button>
                                          </div>
                       
                       </div>

                           <asp:HiddenField id="hf_Tipo" runat="server"/>
                           <asp:HiddenField ID="hf_Clas" runat="server" />
                           <asp:HiddenField ID="hf_Prog" runat="server" />
                           <asp:HiddenField ID="hf_Asesor" runat="server" />
                           <asp:HiddenField ID="hf_Avance" runat="server" />
                           <asp:HiddenField ID="hf_Materias" runat="server" />


                   </ContentTemplate>
               </asp:UpdatePanel>
           </div>
    </div>

     <%--        MODAL DE ERROR--%>
     
         <div class="modal fade bd-example-modal-lg show " id="modalError" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
           <div class="modal-dialog modal-lg" role="document">

               <asp:UpdatePanel ID="UpdatePanel1" runat="server" ChildrenAsTriggers="false" UpdateMode="Conditional">
                   <ContentTemplate>
                      
                       <div class="modal-content">
                                    
                                  <div class="modal-header">
                                        <h4 class="modal-title">Ha ocurrido un error</h4>
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    
                                      </div>
                                  <div class="modal-body">
                                        <asp:Label ID="modalText" runat="server"></asp:Label>
                                         </div>
                                    <div class="modal-footer">
                                         <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                                      </div>    
                       </div>


                   </ContentTemplate>
               </asp:UpdatePanel>
           </div>
     </div>
            <%--TERMINOMODAL--%>

</body>
        
    <script type="text/javascript">

        obtenerMatricula();

        function gdProyectoSt() {
            gdP1();
            gdP2();
            gdP3();
            gdP4();
        }


        function gdP1() {
            ////PARTE1

            var NombreP = ($('#<%=Lb_NombrePro.ClientID%>').html() ).split(':');

            let Proyecto = {
                nombre: NombreP[1],
                avance: document.getElementById('<%= hf_Avance.ClientID %>').value,
                tipo: document.getElementById('<%= hf_Tipo.ClientID %>').value,
                programa: document.getElementById('<%= hf_Prog.ClientID %>').value,
                clasificacion: document.getElementById('<%= hf_Clas.ClientID %>').value,
                asesores: document.getElementById('<%= hf_Asesor.ClientID %>').value
            };

            localStorage.setItem("._Proyecto", JSON.stringify(Proyecto));

        }

        function gdP2() {
            var integrante1 = $('#<%=Lb_Alumno1.ClientID%>').html();
            var integrante2 = $('#<%=Lb_Alumno2.ClientID%>').html();
            var integrante3 = $('#<%=Lb_Alumno3.ClientID%>').html();
            var integrante4 = $('#<%=Lb_Alumno4.ClientID%>').html();
            var integrante5 = $('#<%=Lb_Alumno5.ClientID%>').html();
            var edad1 = $('#<%=Lb_Edad1.ClientID%>').html() != null ? $('#<%=Lb_Edad1.ClientID%>').html() : "Defecto";
            var edad2 = $('#<%=Lb_Edad2.ClientID%>').html() != null ? $('#<%=Lb_Edad2.ClientID%>').html() : "Defecto";
            var edad3 = $('#<%=Lb_Edad3.ClientID%>').html() != null ? $('#<%=Lb_Edad3.ClientID%>').html() : "Defecto";
            var edad4 = $('#<%=Lb_Edad4.ClientID%>').html() != null ? $('#<%=Lb_Edad4.ClientID%>').html() : "Defecto";
            var edad5 = $('#<%=Lb_Edad5.ClientID%>').html() != null ? $('#<%=Lb_Edad5.ClientID%>').html() : "Defecto";
            var matricula1 = $('#<%=Lb_Mat1.ClientID%>').html();
            var matricula2 = $('#<%=Lb_Mat2.ClientID%>').html();
            var matricula3 = $('#<%=Lb_Mat3.ClientID%>').html();
            var matricula4 = $('#<%=Lb_Mat4.ClientID%>').html();
            var matricula5 = $('#<%=Lb_Mat5.ClientID%>').html();

            let Proyecto = {

                integrante1: integrante1,
                edad1: edad1,
                matricula1: matricula1,

                integrante2: integrante2,
                edad2: edad2,
                matricula2: matricula2,

                integrante3: integrante3,
                edad3: edad3,
                matricula3: matricula3,

                integrante4: integrante4,
                edad4: edad4,
                matricula4: matricula4,

                integrante5: integrante5,
                edad5: edad5,
                matricula5: matricula5
            };

            localStorage.setItem("._Proyecto2", JSON.stringify(Proyecto));
        }

        function gdP3() {
            var date = ($('#<%=Lb_Fecha.ClientID%>').html()).split(':');
            var cuatrimestre = ($('#<%=Lb_Cuatrimestre.ClientID%>').html() ).split(':');
            var convocatoria = ($('#<%=Lb_Convocatorias.ClientID%>').html() ).split(':');
           

            let Proyecto = {
                fecha: date[1],
                cuatrimestre: cuatrimestre[1],
                materias: document.getElementById('<%= hf_Materias.ClientID %>').value,
                convocatoria: convocatoria[1]
            };

            localStorage.setItem("._Proyecto3", JSON.stringify(Proyecto));
        }

        function gdP4() {
            var recursos = ($('#<%=Lb_recursos.ClientID%>').html()).split(':');
            var descripcion = ($('#<%=Lb_descripcion.ClientID%>').html()).split(':');

            let Proyecto = {
                recursos: recursos[1],
                descripcion: descripcion[1]
            };

            localStorage.setItem("._Proyecto4", JSON.stringify(Proyecto));
        
        }

        function obtenerMatricula() {
            let matricula = localStorage.getItem("Matricula");
            if (document.getElementById('<%= hf_matricula.ClientID %>').value=="") {
                document.getElementById('<%= hf_matricula.ClientID %>').value = matricula;
                document.getElementById('<%= btnCargarTabla.ClientID %>').click();
            }
          
        }

        function onClickView(nombre, descripcion, tipoProyecto, clasificacion, asesorNombre, programa, integrantes) {


            document.getElementById('<%= Lb_NombrePro.ClientID %>').innerHTML = "Nombre del proyecto: " + nombre;
<%--            document.getElementById('<%= Lb_Avance.ClientID %>').innerHTML = "Avance: " + proyecto.avance + "%";--%>
            document.getElementById('<%= Lb_TipoPro.ClientID %>').innerHTML = "Tipo de proyecto: " + tipoProyecto;
            document.getElementById('<%= Lb_ProgramaE.ClientID %>').innerHTML = "Programa educativo: " + programa;
            document.getElementById('<%= Lb_Clasificacion.ClientID %>').innerHTML = "Clasificacion: " + clasificacion;
            document.getElementById('<%= Lb_Asesor.ClientID %>').innerHTML = "Asesor: " + asesorNombre;


<%--            document.getElementById('<%= Lb_Alumno1.ClientID %>').innerHTML = proyecto.integrante1;
            document.getElementById('<%= Lb_Edad1.ClientID %>').innerHTML = proyecto.edad1 == 'Defecto' ? '' : proyecto.edad1;
            document.getElementById('<%= Lb_Mat1.ClientID %>').innerHTML = proyecto.matricula1 == '' ? '' : proyecto.matricula1;

            document.getElementById('<%= Lb_Fecha.ClientID %>').innerHTML = "Fecha de finalizacion: " + proyecto.fecha;
            document.getElementById('<%= Lb_Cuatrimestre.ClientID %>').innerHTML = "Cuatrimestre: " + proyecto.cuatrimestre;
            document.getElementById('<%= Lb_Materias.ClientID %>').innerHTML = "Materias: " + proyecto.materias;
            document.getElementById('<%= Lb_Convocatorias.ClientID %>').innerHTML = "Convocatorias: " + proyecto.convocatoria;
            document.getElementById('<%= Lb_recursos.ClientID %>').innerHTML = "Recursos: " + proyecto.recursos;--%>
            document.getElementById('<%= Lb_descripcion.ClientID %>').innerHTML = "Descripcion: " + descripcion;
<%--            document.getElementById('<%= Lb_contactoLider.ClientID %>').innerHTML = "Contacto lider: " + proyecto.contacto;--%>



            $("#modalDetalleProyecto").modal();

        }

        function clickView(id) {
            document.getElementById('<%= Label1.ClientID %>').value = id;
            document.getElementById('<%= btnView.ClientID %>').click();
        }





        

        </script>

</asp:Content>
