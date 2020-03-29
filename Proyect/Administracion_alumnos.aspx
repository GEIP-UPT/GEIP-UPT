<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Administracion_alumnos.aspx.cs" Inherits="GEIP_UPT.Administracion_alumnos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!DOCTYPE html>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Administracion de Proyectos</title>
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
        <div class="container-fluid">
        	<h3 class="pt-8" align="center">Registro y visualizacion de proyectos</h3>
    	<div class="row pt-56 pb-248">
    		<div class="col-xs-12 col-sm-12 col-md-6">
    			 <nav class="navbar navbar-expand-lg navbar-dark" style="background: #fff; ">
         
            <div class="navbar navbar-nav  navbar-collapse navbar-brand ">

                <ul class="nav navbar-nav  navbar-collapse  ">

                    <li class="active" ><a href="Registrar_Proyecto_Parte_1.aspx" target="_self">Registrar proyecto</a></li>
                   

                </ul>
            </div>

        </nav>
    		</div>

            <div class="col-xs-12 col-sm-12 col-md-6">
                 <nav class="navbar navbar-expand-lg navbar-dark" style="background: #fff; ">
         
            <div class="navbar navbar-nav  navbar-collapse navbar-brand ">

                <ul class="nav navbar-nav  navbar-collapse  ">

                    <li class="active"><a href="Datos_del_Proyecto_Alum.aspx" target="_self">Visualizar proyecto</a></li>
                   

                </ul>
            </div>

        </nav>
            </div>

    	</div>

    </div>

    </main>

</body>

</asp:Content>
