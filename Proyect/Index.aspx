<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="GEIP_UPT._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
 

    <header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-light bg-UPT" style="background-image:  url(imagenes/head.png);  ">
            <a class="navbar-brand" href="#"> <img src="imagenes/logo.png" width="70" height="70" alt=""></a>
            <h2 class="">GEIP-UPT</h2>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon">  <i class="fas fa-fish"></i></span>
			  </button>
            <div class="collapse navbar-collapse" id="navbarNav">

                <ul class="nav navbar-nav navbar-right">

                    <li class="active"><a href="#" target="_self">Administrativo</a></li>
                    <li class="nav-item dropdown">
                        <a class="dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						  Alumnos
						</a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Alumnos proyectos</a>
                            <a class="dropdown-item" href="#">Solo lectura</a>
                        </div>
                    </li>
                    <li class="active"><a href="#" target="_self">Registrarse</a></li>
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
                     <div class="box">
                                    <div class="img-box">
                                       <img src="imagenes/img_Banner_CONVOCTORIA.jpg" alt="brand" class="w-100 h-100">
                                    </div>
                                   
                                </div>
                    
                </div>
            </div>
        </div>
    </main>

   
    
    
</asp:Content>
