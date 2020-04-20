﻿<%@ Page Title="Iniciar sesión" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login_administrar.aspx.cs" Inherits="GEIP_UPT.Login_administrar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<!DOCTYPE html>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Iniciar sesión</title>
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

                    <li class="active"><a href="index.aspx" target="_self">Inicio</a></li>
                    <li class="nav-item dropdown">
                        <a class="dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						  Alumnos
						</a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="Login_alumnos.aspx">Alumnos proyectos</a>
                            <a class="dropdown-item" href="Login_Alumnos_de_lectura.aspx">Solo lectura</a>
                        </div>
                    </li>
                    <li class="active"><a href="Registrar_NuevaCuenta_alumnos.aspx" target="_self">Registrarse</a></li>


                </ul>
            </div>

        </nav>
    </header>

    <main>
    	<h3 class="pt-8" align="center">Iniciar Sesión Administrativo</h3>

        <div style="margin-left: auto; margin-right: auto; text-align: center;">
            <asp:Label ID="MsgError" runat="server" BorderColor="PaleVioletRed" Text="Debe ingresar todos los datos." Visible="False" ForeColor="PaleVioletRed"
                     CssClass="StrongText"></asp:Label>
        </div>

        <div class="container-fluid p-15">
            <div class="row">
                <div class="col-12 col-lg-">
                    <div class="container-fluid p-0">
                        <div class="row">
                            <div class="col-12 mb-15">
                               <div class="input-contenedor">
                                  <center>
                                    <asp:DropDownList ID="Dl_TipoUsuario" runat="server"  class="brad-5" Height="21px" >
                                    <asp:ListItem value="Administrador">Administrador</asp:ListItem>
                                    <asp:ListItem value="Asesor">Asesor</asp:ListItem>
                                </asp:DropDownList>
                            </center>
									
										<center><asp:TextBox ID="tb_correo" runat="server" type="text" placeholder="🤵‍ Correo electrónico" class="shadow-lg form-control"></asp:TextBox> </center>
									</div>
                            </div>
                            <div class="col-12 mb-15">
                              
								
								<center><asp:TextBox ID="tb_contrasena" runat="server" class="shadow-lg form-control" type="password" placeholder="🔒 Contraseña"></asp:TextBox></center>
                
                            <div class="col-12 mb-36">
                               <center> <asp:Button ID="Ingresar" runat="server" type="submit" text="Ingresar" class="button shadow-lg " OnClick="Ingresar_Click"> </asp:Button> </center>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    </main>
</body>

</asp:Content>
