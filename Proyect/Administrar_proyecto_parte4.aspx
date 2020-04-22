<%@ Page Title="Registrar proyecto" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Administrar_proyecto_parte4.aspx.cs" Inherits="GEIP_UPT.Registrar_proyecto_parte4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!DOCTYPE html>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Registrar proyecto</title>
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
                            <a class="dropdown-item" href="index.aspx">Cerrar sesión</a>
                           
                        </div>
                    </li>
                </ul>
            </div>

        </nav>
    </header>
    <main>
    	<h3 class="pt-8" align="center">Registrar Proyecto</h3>
        <div style="margin-left: auto; margin-right: auto; text-align: center;">
            <asp:Label ID="MsgError" runat="server" BorderColor="PaleVioletRed" Text="" ForeColor="PaleVioletRed"
                     CssClass="StrongText"></asp:Label>
        </div>

        <div class="container-fluid p-15">
            <div class="row">
                <div class="col-xs-12 col-mb-12 col-lg-12">
                    
     
										<center><asp:TextBox ID="Tb_recusos" runat="server" placeholder="Recursos para la elaboración" class="shadow-lg"></asp:TextBox></center>
                                        <center>
                                            <br />
                                            <asp:TextBox ID="Tb_descripcion" runat="server" placeholder="Descripción del proyecto" TextMode="MultiLine" class="shadow-lg" Width="40%"></asp:TextBox> </center>
                                        <center></center>
                                        
                           
                   
                </div>
                
            </div>
                 <div class="row pt-60" style="margin-bottom: 21px">

        <div class="col-xs-6 col-sm-6 col-md-9" align="left">
            
           
            <asp:Button runat="server" ID="btn_Regresar" class="btn btn-info" text="Regresar" OnClick="btn_Regresar_Click"> </asp:Button>
        </div>
                     <div class="col-xs-8 col-sm-8 col-md-3 "  align="right">
            
            <button type="button" class="btn btn-secondary" onclick="guardarProyecto();" >Guardar</button>

        </div>

    </div> 
        </div>
        <%--Hiddens P1--%>
        <asp:HiddenField ID="hf_nombrePs" runat="server" />
        <asp:HiddenField ID="hf_avanceP" runat="server" />
        <asp:HiddenField ID="hf_tipoP" runat="server" />
        <asp:HiddenField ID="hf_programaP" runat="server" />
        <asp:HiddenField ID="hf_clasificacion" runat="server" />
        <asp:HiddenField ID="hf_asesor" runat="server" />

        <%--Hiddens P2--%>
        <asp:HiddenField ID="hf_alumno1" runat="server" />
        <asp:HiddenField ID="hf_edad1" runat="server" />
        <asp:HiddenField ID="hf_mat1" runat="server" />
        <asp:HiddenField ID="hf_alumno2" runat="server" />
        <asp:HiddenField ID="hf_edad2" runat="server" />
        <asp:HiddenField ID="hf_mat2" runat="server" />
        <asp:HiddenField ID="hf_alumno3" runat="server" />
        <asp:HiddenField ID="hf_edad3" runat="server" />
        <asp:HiddenField ID="hf_mat3" runat="server" />
        <asp:HiddenField ID="hf_alumno4" runat="server" />
        <asp:HiddenField ID="hf_edad4" runat="server" />
        <asp:HiddenField ID="hf_mat4" runat="server" />
        <asp:HiddenField ID="hf_alumno5" runat="server" />
        <asp:HiddenField ID="hf_edad5" runat="server" />
        <asp:HiddenField ID="hf_mat5" runat="server" />

      <%--  Hiddens P3--%>
        <asp:HiddenField ID="hf_fecha" runat="server" />
        <asp:HiddenField ID="hf_cuatrimestre" runat="server" />
        <asp:HiddenField ID="hf_materias" runat="server" />
        <asp:HiddenField ID="hf_convocatorias" runat="server" />

     <%--   Hidden P4--%>
        <asp:HiddenField ID="hf_recursos" runat="server" />
        <asp:HiddenField ID="hf_descripcion" runat="server" />
        <asp:HiddenField ID="hf_contactoL" runat="server" />
             <!-- Modal -->
<div class="modal fade" id="exampleModalScrollable"  data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">


        <!-------------------------------------------------------------------------------------------------------------------------------------------------------------->
        <!-------------------------------------------------------------------------------------------------------------------------------------------------------------->
        <!-------------------------------------------------------------------------------------------------------------------------------------------------------------->
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalScrollableTitle">Datos del Proyecto</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>

      <div class="modal-body">
        <div class="container-fluid"> 
            <div class="row">
                <div class="col-md-12">
                    <asp:Label ID="Lb_NombrePro" runat="server" Text="Nombre del proyecto: ------------------"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <asp:Label ID="Lb_TipoPro" runat="server" Text="Tipo de proyecto: ------------------------"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:Label ID="Lb_Clasificacion" runat="server" Text="Clasificacion: -----------------"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <asp:Label ID="Lb_Avance" runat="server" Text="Avance: ----"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:Label ID="Lb_ProgramaE" runat="server" Text="Programa educativo: ----------------------"></asp:Label>
                </div>

            </div>
            <div class="row">

                <div class="col-md-12">
                    <asp:Label ID="Lb_Asesor" runat="server" Text="Asesor: -----------------"></asp:Label>
                </div>

            </div>
              <div class="row">
                <div class="col-4"> Matricula: </div>
                <div class="col-6"> Alumno: </div>
                  <div class="col-2"> Edad: </div>
            </div>
              <div class="row">

                  <div class="col-4 ">
                    <asp:Label ID="Lb_Mat1" runat="server" Text="Mat1"></asp:Label>
                    </div>
                <div class="col-6">
                    <asp:Label ID="Lb_Alumno1" runat="server" Text="Alumno1"></asp:Label>
                    </div>
                  <div class="col-2">
                    <asp:Label ID="Lb_Edad1" runat="server" Text="Edad1"></asp:Label>
                  </div>

            </div>
              <div class="row">
                  <div class="col-4 ">
                    <asp:Label ID="Lb_Mat2" runat="server" Text="Mat2"></asp:Label>
                    </div>
                <div class="col-6">
                    <asp:Label ID="Lb_Alumno2" runat="server" Text="Alumno2"></asp:Label>
                </div>
                  <div class="col-2">
                    <asp:Label ID="Lb_Edad2" runat="server" Text="Edad2"></asp:Label>
                  </div>

            </div>
              <div class="row">
                  <div class="col-4 ">
                    <asp:Label ID="Lb_Mat3" runat="server" Text="Mat3"></asp:Label>
                    </div>
                <div class="col-6">
                    <asp:Label ID="Lb_Alumno3" runat="server" Text="Alumno3"></asp:Label>
                </div>
                  <div class="col-2">
                    <asp:Label ID="Lb_Edad3" runat="server" Text="Edad3"></asp:Label>
                  </div>

            </div>
              <div class="row">
                  <div class="col-4 ">
                    <asp:Label ID="Lb_Mat4" runat="server" Text="Mat4"></asp:Label>
                    </div>
                <div class="col-6">
                    <asp:Label ID="Lb_Alumno4" runat="server" Text="Alumno4"></asp:Label>
                </div>
                  <div class="col-2">
                    <asp:Label ID="Lb_Edad4" runat="server" Text="Edad4"></asp:Label>
                  </div>

            </div>
            <div class="row">
                <div class="col-4 ">
                    <asp:Label ID="Lb_Mat5" runat="server" Text="Mat5"></asp:Label>
                    </div>
                <div class="col-6">
                    <asp:Label ID="Lb_Alumno5" runat="server" Text="Alumno5"></asp:Label>
                </div>
                  <div class="col-2">
                    <asp:Label ID="Lb_Edad5" runat="server" Text="Edad5"></asp:Label>
                  </div>

            </div>


              <div class="row">

                <div class="col-md-12">
                    <asp:Label ID="Lb_Cuatrimestre" runat="server" Text="Cuatrimestre: --------------"></asp:Label>
                </div>
                 

            </div>
            <div class="row">
                 <div class="col-md-12">
                    <asp:Label ID="Lb_Materias" runat="server" Text="Materias a las que impacta: -----------------"></asp:Label>
                  </div>
            </div>

             <div class="row">
                  <div class="col-md-12">
                    <asp:Label ID="Lb_Fecha" runat="server" Text="Fecha de finalizacion: "></asp:Label>
                  </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <asp:Label ID="Lb_Convocatorias" runat="server" Text="Convocatorias: ----------"></asp:Label>
                </div>
                 
            </div>
              <div class="row">
                <div class="col-md-12">
                    <asp:Label ID="Lb_recursos" runat="server" Text="Recursos: ----------"></asp:Label>
                </div>
                 
            </div>
             <div class="row">
                <div class="col-md-12">
                    <asp:Label ID="Lb_descripcion" runat="server" Text="Descripcion: ----------"></asp:Label>
                </div>
                 
            </div>
           
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
        <asp:Button runat="server" class="btn btn-primary" text="Guardar" onclick="Guardar_Click"></asp:Button>
      </div>
    </div>
  </div>
</div>
       

    </main>


    <script type="text/javascript">
        obtenerProyecto();

        window.onload = function () {
            var textarea = document.getElementById('<%= Tb_descripcion.ClientID %>');
            textarea.scrollTop = textarea.scrollHeight;
        }

        function guardarProyecto() {

            var recurss = document.getElementById('<%= Tb_recusos.ClientID %>').value;
            var descr = document.getElementById('<%= Tb_descripcion.ClientID %>').value;

            document.getElementById('<%= Tb_recusos.ClientID %>').style.backgroundColor = (recurss == '') ? "PaleVioletRed" : "White";
            document.getElementById('<%= Tb_descripcion.ClientID %>').style.backgroundColor = (descr == '') ? "PaleVioletRed" : "White";


            if (recurss == '' || descr == '' ) {
                document.getElementById('<%= MsgError.ClientID %>').innerHTML = 'Debe ingresar todos los datos';

            } else {
                document.getElementById('<%= MsgError.ClientID %>').innerHTML = '';

                let Proyecto = {
                    recursos: document.getElementById('<%= Tb_recusos.ClientID %>').value,
                    descripcion: document.getElementById('<%= Tb_descripcion.ClientID %>').value,
                };
                localStorage.setItem("._Proyecto4", JSON.stringify(Proyecto));

                obtenerProyectoM();
                modal();

            }

        }


        function obtenerProyectoM() {
            obtenerProyecto_p1();
            obtenerProyecto_p2();
            obtenerProyecto_p3();
            obtenerProyecto_p4();
        }

        function obtenerProyecto_p1() {
            let proyecto = JSON.parse(localStorage.getItem("._Proyecto"));
            if (proyecto != "") {
                document.getElementById('<%= Lb_NombrePro.ClientID %>').innerHTML = "Nombre del proyecto: " + proyecto.nombre;
                document.getElementById('<%= Lb_Avance.ClientID %>').innerHTML = "Avance: " + proyecto.avance +"%";
                document.getElementById('<%= Lb_TipoPro.ClientID %>').innerHTML = "Tipo de proyecto: " + proyecto.tipo;
                document.getElementById('<%= Lb_ProgramaE.ClientID %>').innerHTML = "Programa educativo: " + proyecto.programa;
                document.getElementById('<%= Lb_Clasificacion.ClientID %>').innerHTML = "Clasificacion: " + proyecto.clasificacion;
                document.getElementById('<%= Lb_Asesor.ClientID %>').innerHTML = "Asesor: " + proyecto.asesores;

                //llenado de hidden para pasar a aspx.cs
                document.getElementById('<%= hf_nombrePs.ClientID %>').value = proyecto.nombre;
                document.getElementById('<%= hf_avanceP.ClientID %>').value = proyecto.avance;
                document.getElementById('<%= hf_tipoP.ClientID %>').value = proyecto.tipo;
                document.getElementById('<%= hf_programaP.ClientID %>').value = proyecto.programa;
                document.getElementById('<%= hf_clasificacion.ClientID %>').value = proyecto.clasificacion;
                document.getElementById('<%= hf_asesor.ClientID %>').value = proyecto.asesores;
            }

        }

        function obtenerProyecto_p2() {
            let proyecto = JSON.parse(localStorage.getItem("._Proyecto2"));
            if (proyecto != "") {

                document.getElementById('<%= Lb_Alumno1.ClientID %>').innerHTML = proyecto.integrante1;
                document.getElementById('<%= Lb_Edad1.ClientID %>').innerHTML = proyecto.edad1 == 'Defecto' ? '' : proyecto.edad1;
                document.getElementById('<%= Lb_Mat1.ClientID %>').innerHTML = proyecto.matricula1 == '' ? '' : proyecto.matricula1;


                document.getElementById('<%= Lb_Alumno2.ClientID %>').innerHTML = proyecto.integrante2;
                document.getElementById('<%= Lb_Edad2.ClientID %>').innerHTML = proyecto.edad2 == 'Defecto' ? '' : proyecto.edad2;
                document.getElementById('<%= Lb_Mat2.ClientID %>').innerHTML = proyecto.matricula2 == '' ? '' : proyecto.matricula2;

                document.getElementById('<%= Lb_Alumno3.ClientID %>').innerHTML = proyecto.integrante3;
                document.getElementById('<%= Lb_Edad3.ClientID %>').innerHTML = proyecto.edad3 == 'Defecto' ? '' : proyecto.edad3;
                document.getElementById('<%= Lb_Mat3.ClientID %>').innerHTML = proyecto.matricula3 == '' ? '' : proyecto.matricula3;

                document.getElementById('<%= Lb_Alumno4.ClientID %>').innerHTML = proyecto.integrante4;
                document.getElementById('<%= Lb_Edad4.ClientID %>').innerHTML = proyecto.edad4 == 'Defecto' ? '' : proyecto.edad4;
                document.getElementById('<%= Lb_Mat4.ClientID %>').innerHTML = proyecto.matricula4 == '' ? '' : proyecto.matricula4;

                document.getElementById('<%= Lb_Alumno5.ClientID %>').innerHTML = proyecto.integrante5;
                document.getElementById('<%= Lb_Edad5.ClientID %>').innerHTML = proyecto.edad5 == 'Defecto' ? '' : proyecto.edad5;
                document.getElementById('<%= Lb_Mat5.ClientID %>').innerHTML = proyecto.matricula5 == '' ? '' : proyecto.matricula5;
  
                //llenado de hidden para pasar a aspx.cs
                document.getElementById('<%= hf_alumno1.ClientID %>').value = proyecto.integrante1;
                document.getElementById('<%= hf_alumno2.ClientID %>').value = proyecto.integrante2;
                document.getElementById('<%= hf_alumno3.ClientID %>').value = proyecto.integrante3;
                document.getElementById('<%= hf_alumno4.ClientID %>').value = proyecto.integrante4;
                document.getElementById('<%= hf_alumno5.ClientID %>').value = proyecto.integrante5;
                document.getElementById('<%= hf_edad1.ClientID %>').value = proyecto.edad1;
                document.getElementById('<%= hf_edad2.ClientID %>').value = proyecto.edad2;
                document.getElementById('<%= hf_edad3.ClientID %>').value = proyecto.edad3;
                document.getElementById('<%= hf_edad4.ClientID %>').value = proyecto.edad4;
                document.getElementById('<%= hf_edad5.ClientID %>').value = proyecto.edad5;
                document.getElementById('<%= hf_mat1.ClientID %>').value = proyecto.matricula1;
                document.getElementById('<%= hf_mat2.ClientID %>').value = proyecto.matricula2;
                document.getElementById('<%= hf_mat3.ClientID %>').value = proyecto.matricula3;
                document.getElementById('<%= hf_mat4.ClientID %>').value = proyecto.matricula4;
                document.getElementById('<%= hf_mat5.ClientID %>').value = proyecto.matricula5;
            }

        }

        function obtenerProyecto_p3() {
            let proyecto = JSON.parse(localStorage.getItem("._Proyecto3"));
            if (proyecto != "") {
                document.getElementById('<%= Lb_Fecha.ClientID %>').innerHTML ="Fecha de finalizacion: " + proyecto.fecha;
                document.getElementById('<%= Lb_Cuatrimestre.ClientID %>').innerHTML = "Cuatrimestre: " + proyecto.cuatrimestre;
                document.getElementById('<%= Lb_Materias.ClientID %>').innerHTML = "Materias: " + proyecto.materias;
                document.getElementById('<%= Lb_Convocatorias.ClientID %>').innerHTML = "Convocatorias: " + proyecto.convocatoria;

                //llenado de hidden para pasar a aspx.cs
                document.getElementById('<%= hf_fecha.ClientID %>').value = proyecto.fecha;
                document.getElementById('<%= hf_cuatrimestre.ClientID %>').value = proyecto.cuatrimestre;
                document.getElementById('<%= hf_materias.ClientID %>').value = proyecto.materias;
                document.getElementById('<%= hf_convocatorias.ClientID %>').value = proyecto.convocatoria;
            }

        }

        function obtenerProyecto_p4() {
            let proyecto = JSON.parse(localStorage.getItem("._Proyecto4"));

            if (proyecto != "") {
                document.getElementById('<%= Lb_recursos.ClientID %>').innerHTML = "Recursos: " + proyecto.recursos;
                document.getElementById('<%= Lb_descripcion.ClientID %>').innerHTML = "Descripcion: " + proyecto.descripcion;
           

                //llenado de hidden para pasar a aspx.cs
                document.getElementById('<%= hf_recursos.ClientID %>').value = proyecto.recursos;
                document.getElementById('<%= hf_descripcion.ClientID %>').value = proyecto.descripcion;
            }

        }

        function obtenerProyecto() {
            let proyecto = JSON.parse(localStorage.getItem("._Proyecto4"));

            if (proyecto != "") {
                document.getElementById('<%= Tb_recusos.ClientID %>').value = proyecto.recursos;
                document.getElementById('<%= Tb_descripcion.ClientID %>').value = proyecto.descripcion;
            }
        }

        function modal() {

            $('#exampleModalScrollable').modal('show');

        }

    </script>


</body>

</asp:Content>

