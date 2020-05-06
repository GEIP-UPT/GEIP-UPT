﻿<%@ Page Title="Lectura de Carreras" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Lectura_Carreras.aspx.cs" Inherits="GEIP_UPT.Lectura_Carreras" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<!DOCTYPE html>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Lectura de Proyectos</title>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, minimum-scale=1.0">

    <!-- Latest compiled and minified CSS -->
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"> -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/estilos.css">
     <script src="https://kit.fontawesome.com/68163644d5.js" crossorigin="anonymous"></script>
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
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
                            <a class="dropdown-item" href="Index.aspx">Cerrar sesión</a>
                           
                        </div>
                    </li>
                    


                </ul>
            </div>

        </nav>
    </header>

    <main>
    	<h3 class="pt-8" align="center">Carreras</h3>
        <div class="container-fluid p-50 " style="margin-bottom: 8px;">
           
                            	
	        <div class="row pt-39 d-flex justify-content-center ">
		        <div class="col-12 mb-38">
			
                     <div  class="table-responsive">     
                             <asp:Table class="table table-active  table-border table-hover table-condensed"
                                        id="tblCarreras"
                                        runat="server" 
                                        CellPadding="10"
                                        CellSpacing="10"
                                        BackColor="White"
                                        BorderColor="#dee2e6"
                                        GridLines="Both" Height="142px" 
                                       
                                        >
                                        <asp:TableHeaderRow 
                                            runat="server" 
                                            BackColor="WhiteSmoke"
                                            >
                                            <asp:TableHeaderCell >ID</asp:TableHeaderCell>
                                            <asp:TableHeaderCell>Carrera</asp:TableHeaderCell>
                                            <asp:TableHeaderCell >Editar</asp:TableHeaderCell>
                                        </asp:TableHeaderRow>
            
                                  </asp:Table>
                          </div> 
			

			     </div>

                <div id="alert" class="alert alert-warning text-center pt-30 " role="alert">
                     NO HAY REGISTROS
                </div>

                <div class="col-xs-12 col-sm-12 col-md-12">
                    <a href="Registrar_Carreras.aspx" class="btn btn-info" >Registrar</a>
                </div>


	        </div>   
            </div>
                      
                     
    </main>
</body>

     <%--        MODAL DE ERROR--%>
     
         <div class="modal fade bd-example-modal-lg show " id="modalError" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
           <div class="modal-dialog modal-lg" role="document">

               <asp:UpdatePanel ID="upModal" runat="server" ChildrenAsTriggers="false" UpdateMode="Conditional">
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

</asp:Content>
