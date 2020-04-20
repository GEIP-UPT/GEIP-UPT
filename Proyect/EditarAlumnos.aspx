﻿<%@ Page Title="Perfil" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditarAlumnos.aspx.cs" Inherits="GEIP_UPT.EditarAlumnos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!DOCTYPE html>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Perfil</title>
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
        <nav class="navbar navbar-expand-lg navbar-dark bg-light bg-UPT" style="background-image:  url('imagenes/head.png'); left: 0px; top: 0px;">
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
                            <a class="dropdown-item" href="Administracion_alumnos.aspx">Regresar</a>
                           
                        </div>
                    </li>
                    
                </ul>
            </div>

        </nav>
    </header>

    <main>
        <h3 class="pt-8" align="center">Perfil</h3>

        <div style="margin-left: auto; margin-right: auto; text-align: center;">
            <asp:Label ID="MsgError" runat="server" BorderColor="PaleVioletRed" Text="Debe ingresar todos los datos." Visible="False" ForeColor="PaleVioletRed"
                     CssClass="StrongText"></asp:Label>
        </div>

        <div class="container-fluid p-15">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="container-fluid p-0">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12">
                               <center>
                                   <asp:TextBox ID="Tb_matricula" runat="server" Enabled="false" type="text" placeholder="Ingrese Matricula" class="shadow-lg"></asp:TextBox>
                            </center>
                                   
                    <center>
                             <asp:TextBox ID="Tb_Nombre" runat="server" type="text" placeholder="Ingrese su Nombre" class="shadow-lg" > </asp:TextBox>
                        </center>
                                <center>
                                 
                                        </center>
                        
                                    
            <center>
                             <asp:TextBox ID="Tb_apellidoP" runat="server" type="text" placeholder="Ingrese apellido paterno" class="shadow-lg"></asp:TextBox>
                <asp:TextBox ID="Tb_correo" runat="server" type="text" placeholder="Ingrese correo electronico" class="shadow-lg"> </asp:TextBox>
                                    </center>

                            
                                    
                         <center>
                <asp:TextBox ID="Tb_apellidoM" runat="server" type="text" placeholder="Ingrese apellido materno" class="shadow-lg"> </asp:TextBox>
                             <asp:TextBox ID="Tb_contraseña" runat="server" type="text" placeholder="Ingrese contraseña" class="shadow-lg"></asp:TextBox>
                         </center>
                                    
                                      <div class="input-contenedor">
                                    
                         <center>
                             
                             <asp:TextBox ID="Tb_contacto" runat="server" type="text" placeholder="Contacto" class="shadow-lg"></asp:TextBox>
                                 </center> 
                         <center class="pt-15">

                          <asp:DropDownList ID="Dl_Carrera" runat="server" class="brad-5 " >
                                    <asp:ListItem value="0">Carrera</asp:ListItem>
                                </asp:DropDownList>

                             <asp:DropDownList ID="Dl_Edad" runat="server" class="brad-5">
                                    <asp:ListItem value="Edad">Edad</asp:ListItem>
                                    <asp:ListItem value="18">18</asp:ListItem>
                                    <asp:ListItem value="19">19</asp:ListItem>
                                    <asp:ListItem value="20">20</asp:ListItem>
                                    <asp:ListItem value="21">21</asp:ListItem>
                                    <asp:ListItem value="22">22</asp:ListItem>
                                    <asp:ListItem value="23">23</asp:ListItem>
                                    <asp:ListItem value="24">24</asp:ListItem>
                                    <asp:ListItem value="25">25</asp:ListItem>
                                    <asp:ListItem value="26">26</asp:ListItem>
                                    <asp:ListItem value="27">27</asp:ListItem>
                                    <asp:ListItem value="28">28</asp:ListItem>
                                    <asp:ListItem value="29">29</asp:ListItem>
                                    <asp:ListItem value="30">30</asp:ListItem>
                                    <asp:ListItem value="31">31</asp:ListItem>
                                    <asp:ListItem value="32">32</asp:ListItem>
                                    <asp:ListItem value="33">33</asp:ListItem>
                                    <asp:ListItem value="34">34</asp:ListItem>
                                    <asp:ListItem value="35">35</asp:ListItem>
                                    <asp:ListItem value="36">36</asp:ListItem>
                                    <asp:ListItem value="37">37</asp:ListItem>
                                    <asp:ListItem value="38">38</asp:ListItem>
                                    <asp:ListItem value="39">39</asp:ListItem>
                                    <asp:ListItem value="40">40</asp:ListItem>
                                </asp:DropDownList>
                         </center>
                                    </div>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
                         <div class="row pt-60" style="margin-bottom: 21px">
        
                                 <div class="col-6 "  align="right">
                                    <a href="Administracion_alumnos.aspx" class="btn btn-info">Cancelar</a>
                                </div>

                                 <div class="col-6 "  align="left">
                                    <asp:Button ID="Button1" runat="server" Text="Guardar" class="btn btn-info" OnClick="Button1_Click" />
                                </div>
                                 
                                 
                        </div> 

    </div>  
        </div>
    </main>
</body>

</asp:Content>