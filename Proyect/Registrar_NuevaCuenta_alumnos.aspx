<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registrar_NuevaCuenta_alumnos.aspx.cs" Inherits="GEIP_UPT.Registrar_NuevaCuenta_alumnos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!DOCTYPE html>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Registro</title>
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

        
                    <li class="active"><a href="index.html" target="_self">Inicio</a></li>
                </ul>
            </div>

        </nav>
    </header>

    <main>
        <h3 class="pt-8" align="center">Registro de Alumno</h3>
        <div class="container-fluid p-15">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="container-fluid p-0">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12">
                               
                                   
                    <center><input type="text" placeholder="Ingrese su Nombre" class="shadow-lg"> <select name="Edad" class="brad-5">
                                    <option value="Opcion">Edad</option>
                                    <option value="18">18</option>
                                    <option value="19">19</option>
                                    <option value="20">20</option>
                                    <option value="21">21</option>
                                    <option value="22">22</option>
                                    <option value="23">23</option>
                                    <option value="24">24</option>
                                    <option value="25">25</option>
                                    <option value="26">26</option>
                                    <option value="27">27</option>
                                    <option value="28">28</option>
                                    <option value="29">29</option>
                                    <option value="30">30</option>
                                    <option value="31">31</option>
                                    <option value="32">32</option>
                                    <option value="33">33</option>
                                    <option value="34">34</option>
                                    <option value="35">35</option>
                                    <option value="36">36</option>
                                    <option value="37">37</option>
                                    <option value="38">38</option>
                                    <option value="39">39</option>
                                    <option value="40">40</option>
                                </select>
                                        </center>
                        
                                    
                                    
            <center><input type="text" placeholder="Ingrese apellido materno" class="shadow-lg"> <input type="text" placeholder="Ingrese correo electronico" class="shadow-lg">
                                    </center>

                            
                                    
                         <center><input type="text" placeholder="Ingrese apellido paterno" class="shadow-lg"><input type="text" placeholder="Ingrese contraseña" class="shadow-lg">
                         </center>
                                    
                                      <div class="input-contenedor">
                                    
                         <center><input type="text" placeholder="Ingrese Matricula" class="shadow-lg">  </center> 
                         <center class="pt-15">
                          <select name="Programa_educativo" class="brad-5 " >
                                    <option value="Opcion">Carrera</option>
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
                        </div>
                    </div>
                </div>
                
            </div>
                             <div class="row pt-60" style="margin-bottom: 21px">
        
         <div class="col-xs-12 col-sm-12 col-md-12 "  align="right">
            
            <a href="Login_alumnos.html"><button class="btn btn-info ">Guardar</button></a>
        </div>

    </div> 

    </div>  
        </div>
    </main>
</body>

</asp:Content>
