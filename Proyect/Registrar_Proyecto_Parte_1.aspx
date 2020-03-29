<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registrar_Proyecto_Parte_1.aspx.cs" Inherits="GEIP_UPT.Registrar_Proyecto_Parte_1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<!DOCTYPE html>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Registro de proyectos</title>
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
                            <a class="dropdown-item" href="Login_alumnos.aspx">Cerrar sesión</a>
                           
                        </div>
                    </li>
                </ul>
            </div>

        </nav>
    </header>
    <main>
    	<h3 class="pt-8" align="center">Registrar Proyecto</h3>
        <div class="container-fluid p-15">
            <div class="row">
            					<div class="col-xs-12 col-sm-12 col-md-12" style="margin-bottom: 8px;">
            					<center><input type="text" placeholder="NOMBRE DEL PROYECTO" > </center>
            				</div>
            			</div>

            		<div class="row">	
							 <div class="col-xs-6 col-sm-6 col-md-12" >
                               <div class="input-contenedor" style="display: flex; justify-content: center;">
							
									<center>
                                    <select name="Avance"  class="brad-5" >
                                    <option value="Opcion">Avance</option>
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

									 <div class="col-xs-6 col-sm-6 col-md-12 " >
									 	<div class="input-contendor " style="display: flex; justify-content: center; margin-bottom: 30px;">
                               
                                <select name="Tipos " class="brad-5" >
                                    <option value="Opcion">Tipo de Proyecto</option>
                                    <option value="Tecnologico">Tecnologico</option>
                                    <option value="Servicio">Servicio</option>
                                </select>
                            
                        </div>
                            </div>
                            </div>

              </div>
              

              <div class="row">
              	 <div class="col-xs-12 col-sm-12 col-md-12">
                              	<center>
                                 <select name="Programa_educativo " class="brad-5">
                                    <option value="Opcion">Programa_educativo</option>
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
                                </select>
                               </center>
                            </div>
                        </div>


                        <div class="row">
                        	
                        	   <div class="col-xs-12 col-sm-12 col-md-12">
                            <br>
                               <center>
                                <select name="Clasificacion"  class="brad-5" >
                                    <option value="Opcion">Clasificacion</option>
                                    <option value="Tecnologico">Biotecnología-Ciencias Agropecuarias</option>
                                    <option value="Servicio">Humanidades-Ciencias de la Conducta</option>
                                    <option value="Servicio">Ingenierías-Industria</option>
                                </select> &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                                <select name="Asesores" style="border-radius: 5px">
                                    <option value="Opcion">Asesores</option>
                                </select>
                               </center>
                            </div>



                        </div>


                       <div class="row pt-60" style="margin-bottom: 21px">
        <div class="col-xs-6 col-sm-6 col-md-9" align="left">
            
             <a href="Administracion_alumnos.aspx"><button class="btn btn-info"  >Regresar</button></a>
        </div>
         <div class="col-xs-6 col-sm-6 col-md-3 "  align="right">
            
            <a href="Registrar_Proyecto_parte2.aspx"><button class="btn btn-info " >Guardar</button></a>
        </div>

    </div> 

              </div>
         		


          
    </main>
</body>

</asp:Content>
