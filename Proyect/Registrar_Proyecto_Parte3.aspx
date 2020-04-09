<%@ Page Title="Registrar proyecto" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registrar_Proyecto_Parte3.aspx.cs" Inherits="GEIP_UPT.Registrar_Proyecto_Parte3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!DOCTYPE html>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Lectura de proyectos</title>
    <script src="js/jquery.js"></script>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, minimum-scale=1.0">
    <!-- Latest compiled and minified CSS -->
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"> -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/estilos.css">
    <script src="https://kit.fontawesome.com/68163644d5.js" crossorigin="anonymous"></script>
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous"> -->
    <script src="libs/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
    <link rel="stylesheet" href="libs/bootstrap-datepicker/css/bootstrap-datepicker.css">
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
                            <a class="dropdown-item" href="Login_alumnos.aspx">Cerrar sesión</a>
                           
                        </div>
                    </li>
                </ul>
            </div>

        </nav>
    </header>

    <main>
        <div class="container-fluid p-15">

        <h3 class="" align="center">Registrar Proyecto</h3>
        
            <div class="row">
                <div class="col-12 col-lg-12">
                    <div class="container-fluid p-0">
                        <div class="row">
                            <div class="col-12 mb-12">
                               <div class="input-contenedor pt-8">
                                    
                                        <center> 
                                    <select name="Tiempo de desarrollo" class="brad-5">
                                    <option value="Opcion">Tiempo de desarrollo</option>
                                    <option value="10">1 mes</option>
                                    <option value="20">2 meses</option>
                                    <option value="30">3 meses</option>
                                    <option value="40">4 meses</option>
                                    <option value="50">5 meses</option>
                                    <option value="60">6 meses</option>
                                    <option value="70">7 meses</option>
                                    <option value="80">8 meses</option>
                                    <option value="90">9 meses</option>
                                    <option value="100">10 meses</option>
                                    <option value="100">11 meses</option>
                                    <option value="100">12 meses</option>
                                </select>
                                <!-- Prueba -->
                           <!--  <div class="container">-->
                            <asp:button type="button" runat="server" id="botModal" class="btn btn-primary" Text="Calendario"></asp:button>
                                           
                            <!-- </div>fin de Prueba -->
                            <!-- fin de Prueba -->
<!-- inicio modal-content -->
                            <div class="modal fade" id="caleder-date" tabindex="-1" role="dialog">
                            <div class="modal-dialog" role="document">
                            <div class="modal-content">
                             <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id=""></h4>
                             </div>
                             <!-- /.modal-content-pickert -->
                        <div class="modal-body">
<div class = "input-group date jdma-date" > 
<input type = "text" class = "form-control" > <span class = "input-group-addon" > <i class = "glyphicon glyphicon-th" > </i> </span>    
</div>
                         </div>
                         <!-- /.modal-content-pickert -->
                        <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                        <button type="button" class="btn btn-primary">Seleccionar</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!-- Final del modal-->




                            </center>
                                    </div>
                            </div>
                        </div>
                              <div class="row">
                                 <div class="col-12 mb-12">
                               <center>
                                <select name="Cuatrimestre de desarrollo" class="brad-5">
                                    <option value="Opcion">Cuatrimestre de desarrollo</option>
                                    <option value="1">1° cuatrimestre</option>
                                    <option value="2">2° cuatrimestre</option>
                                    <option value="3">3° cuatrimestre</option>
                                    <option value="4">4° cuatrimestre</option>
                                    <option value="5">5° cuatrimestre</option>
                                    <option value="6">6° cuatrimestre</option>
                                    <option value="7">7° cuatrimestre</option>
                                    <option value="8">8° cuatrimestre</option>
                                    <option value="9">9° cuatrimestre</option>
                                </select>
     ¿Has Participado en alguna convocatoria?<input type="radio" name="convocatoria" value="Si">Si<input type="radio" name="convocatoria" value="No">No <br>
                               </center>
                            </div>
                        </div>
                            <div class="row">
                                <div class="col-12 ">
                            <br>
                               <center>
                                    <select name="Impacto" class="brad-5">
                                    <option value="Opcion">Materia a las que impacta</option>
                                    <option value="Robotica">Ingenieria en Robotica</option>
                                    <option value="Civil">Ingenieria Civil</option>
                                    <option value="Industrial">Ingenieria Industrial</option>
                                    <option value="Sistemas_Computacionales">Ingenieria en Sistemas Computacionales</option>
                                    <option value="Tecnologias de Manufactura">Ingenieria en Tecnologias de Manufactura</option>
                         <option value="Electronica y Telecomunicaciones">Ingenieria en Electronica y Telecomunicaciones</option>
                                    <option value="PYMES">Licenciatura en Gestion de PYMES</option>
                                    <option value="Negocios_Internacionales">Licenciatura en Negocios Internacionales</option>
                                    <option value="Energias_renovables">Maestria en energias renovables</option>
                                    <option value="Optica">Maestría en Computación Óptica</option>
                                    <option value="Organizaciones">Maestría en Dirección de Organizaciones </option>
                                    <option value="Desarrollo_Software">Maestría en Dirección de Organizaciones </option>
                                    <option value="Automatizacion">Maestría en Dirección de Organizaciones </option>
                                    <option value="Optimizacion">Maestría en Dirección de Organizaciones </option>
                                    <option value="Contribuciones">Maestría en Dirección de Organizaciones </option>
                                </select><input type="text" placeholder="Cual y lugar obtenido">
                               </center>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        

    
                       <div class="row pt-90 mb-17" >
        <div class="col-xs-6 col-sm-6 col-md-9" align="left">
            
             <a href="Registrar_Proyecto_Parte2.aspx"><button class="btn btn-info"  >Regresar</button></a>
        </div>
         <div class="col-xs-6 col-sm-6 col-md-3 "  align="right">
            
            <a href="Registrar_Proyecto_parte4.aspx"><button class="btn btn-info " >Guardar</button></a>
        </div>

    </div>  
        </div>
    </main>
</body>

</asp:Content>
