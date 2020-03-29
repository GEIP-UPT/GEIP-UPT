<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Lectura_Registrar_Proyecto_Parte_2.aspx.cs" Inherits="GEIP_UPT.Lectura_Registrar_Proyecto_Parte_2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!DOCTYPE html>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Lectura de proyectos</title>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, minimum-scale=1.0">

    <!-- Latest compiled and minified CSS -->
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"> -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/estilos.css">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
    <!-- Optional theme -->
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous"> -->
</head>

<body>

       <header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-light bg-UPT" style="background-image:  url(imagenes/head.png);  ">
            <a class="navbar-brand" href="#"> <img src="imagenes/logo.png" width="70" height="70" alt=""></a>
            <h2 class="">GEIP-UPT</h2>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon">  <i class="fas fa-fish"></i></span>
              </button>
            <div class="collapse navbar-collapse" id="navbarNav">

                <ul class="nav navbar-nav navbar-right">

                    <li class="nav-item dropdown" style="font-size: 20px; padding-right: 5px;">
                        <a class="dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Usuario
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Cerrar sesión</a>
                           
                        </div>
                    </li>
                </ul>
            </div>

        </nav>
    </header>
<br>
<br>
<br>
    <main>
        <h3 class="pt-8" align="center">Registrar Proyecto</h3>
        <div class="container-fluid p-15">
            <div class="row">
                <div class="col-12 col-lg-">
                    <div class="container-fluid p-0">
                        <div class="row">
                            <div class="col-12 mb-12">
                               <div class="input-contenedor">
                                    <i class="fas fa-user icon"></i>
                                        <center> 
                                    <select name="Tiempo de desarrollo">
                                    <option value="Opcion">Tiempo de desarrollo</option>
                                    <option value="10">10%</option>
                                    <option value="20">20%</option>
                                    <option value="30">30%</option>
                                    <option value="40">40%</option>
                                    <option value="50">50%</option>
                                    <option value="60">60%</option>
                                    <option value="70">70%</option>
                                    <option value="80">80%</option>
                                    <option value="90">90%</option>
                                    <option value="100">100%</option>
                                </select>
                                <select name="Tiempo de finalización">
                                    <option value="Opcion">Tiempo de finalizacion</option>
                                    <option value="10">10%</option>
                                    <option value="20">20%</option>
                                    <option value="30">30%</option>
                                    <option value="40">40%</option>
                                    <option value="50">50%</option>
                                    <option value="60">60%</option>
                                    <option value="70">70%</option>
                                    <option value="80">80%</option>
                                    <option value="90">90%</option>
                                    <option value="100">100%</option>
                                </select>
                            </center>
                                    </div>
                            </div>
                        </div>
                              <div class="row">
                                 <div class="col-12 mb-12">
                               <center>
                                <select name="Cuatrimestre de desarrollo">
                                    <option value="Opcion">Cuatrimestre de desarrollo</option>
                                    <option value="Tecnologico">Tecnologico</option>
                                    <option value="Servicio">Servicio</option>
                                </select>
     ¿Has Participado en alguna convocatoria?<input type="radio" name="convocatoria" value="Si">Si<input type="radio" name="convocatoria" value="No">No <br>
                               </center>
                            </div>
                        </div>
                            <div class="row">
                                <div class="col-12 mb-15">
                            <br>
                               <center>
                                <select name="Clasificacion">
                                    <option value="Opcion">Clasificacion</option>
                                    <option value="Tecnologico">Biotecnología-Ciencias Agropecuarias</option>
                                    <option value="Servicio">Humanidades-Ciencias de la Conducta</option>
                                    <option value="Servicio">Ingenierías-Industria</option>
                                </select><input type="text" placeholder="Cual y lugar obtenido">
                               </center>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>

    <div class="row pt-60">
        <div class="col-xs-12 col-sm-12 col-md-12">
            
            <button class="btn btn-info pt-8" >Regresar</button>    <button class="btn btn-info pt-8" >Siguiente</button>
        </div>

    </div>  
        </div>
    </main>
<br>
<br>
<br>
   </body>

</asp:Content>
