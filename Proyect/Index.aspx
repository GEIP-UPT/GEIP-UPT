<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="GEIP_UPT._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
 
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
    <script src="https://kit.fontawesome.com/68163644d5.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="css/estilos.css">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
     
</head>

<body>

    <header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-light bg-UPT" style="background-image:  url(imagenes/head.png);  ">
            <a class="navbar-brand" href="#"> <img src="imagenes/logo.png" width="70" height="70" alt=""></a>
                <h2  id="centrar">GEIP-UPT</h2>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon">  <i class="fas fa-fish"></i></span>
			  </button>

            <div class="collapse navbar-collapse" id="navbarNav">

                <ul class="nav navbar-nav navbar-right">        

                    <li class="active"><a href="Login_administrar.aspx" target="_self">Administrativo</a></li>
                    <li class="nav-item dropdown">
                        <a class="dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						  Alumnos
						</a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="Login_alumnos.aspx">Alumnos c/ proyectos</a>
                            <a class="dropdown-item" href="Login_Alumnos_de_lectura.aspx">Solo lectura</a>
                        </div>
                    </li>
                    <li class="active"><a href="Registrar_NuevaCuenta_alumnos.aspx" target="_self">Registrarse</a></li>


                </ul>
            </div>

        </nav>
    </header>

    <main>
        <div class="container-fluid p-15">
            <div class="row">
                <div class="col-12 col-lg-6">
                    <div class="container-fluid p-0">
                        <div class="row">
                            <div class="col-12 mb-15">
                                <div class="box">
                                    <div class="img-box">
                                        <img src="imagenes/citnova.jpg" alt="brand" class="w-100 h-100">
                                    </div>
                                   
                                </div>
                                
                            </div>
                            <div class="col-6 pr-0">
                                 <div class="box">
                                    <div class="img-box">
                                      <img src="imagenes/img_Banner_CONVOCTORIA.jpg" alt="brand" class="w-100 h-100">
                                    </div>
                                   
                                </div>
                               
                            </div>
                            <div class="col-6">
                                 <div class="box">
                                    <div class="img-box">
                                       <img src="imagenes/img_Banner_CONVOCTORIA.jpg" alt="brand" class="w-100 h-100">
                                       
                                    </div>
                                   
                                </div>
                               
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-lg-6 ">
                        <div class="block">
                            <div class="img-box">
                                       <div id="carousel-1" class="carousel slide" data-ride="carousel"  data-interval="3000">
                                           <!--indicadores-->
                                           <ol class="carousel-indicators">
                                            <li data-target="#carousel-1" data-slide-to="0" class="active"></li>
                                            <li data-target="#carousel-1" data-slide-to="1"></li>
                                            <li data-target="#carousel-1" data-slide-to="2"></li>
                                            
                                          
                                            </ol>

                                            <!--contenedor de slide-->
                                            <div class="carousel-inner" >

                                                <div class="carousel-item active" >
                                                    <img src="imagenes/img_Banner_CONVOCTORIA.jpg"  alt="First slide" class="d-block w-100">
                                                    <div class="carousel-caption d-none d-md-block">
                                                        <h3 id="negro">Proyectos Realizados</h3>
                                                        <p id="negro">Convocatorias Marzo 2020</p>
                                                    </div>

                                                </div>

                                                 <div class="carousel-item">
                                                   <img src="imagenes/img_Banner_CONVOCTORIA.jpg" alt="Second slide"  class="d-block w-100">
                                                    <div class="carousel-caption d-none d-md-block">
                                                        <h3 id="negro">Proyectos Realizados</h3>
                                                        <p id="negro">Convocatorias Abril 2020</p>
                                                    </div>

                                                </div>
                                                 <div class="carousel-item ">
                                                   <img src="imagenes/img_Banner_CONVOCTORIA.jpg" alt="Third slide"  class="d-block w-100">
                                                    <div class="carousel-caption d-none d-md-block">
                                                        <h3 id="negro">Proyectos Realizados</h3>
                                                        <p id="negro">Convocatorias Mayo 2020</p>
                                                    </div>

                                                </div>
                                   <a class="carousel-control-prev" href="#carousel-1" role="button" data-slide="prev">
                                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                                <span class="sr-only">Previous</span>
                                     </a>
                            <a class="carousel-control-next" href="#carousel-1" role="button" data-slide="next">
                              <span class="carousel-control-next-icon"  aria-hidden="true"></span>
                                 <span class="sr-only">Next</span>
                                     </a>
                                               

                                            </div>
                                       </div>
                                    
                                 </div>  
                                
                    
                </div>
            </div>
        </div>
    </main>
</body>
    
    
</asp:Content>
