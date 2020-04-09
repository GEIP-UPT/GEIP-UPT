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

        
                    <li class="active"><a href="index.aspx" target="_self">Inicio</a></li>
                </ul>
            </div>

        </nav>
    </header>

    <main>
        <h3 class="pt-8" align="center">Registro de Alumno</h3>

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
                             <asp:TextBox ID="Tb_Nombre" runat="server" type="text" placeholder="Ingrese su Nombre" class="shadow-lg" > </asp:TextBox>
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
                        
                                    
            <center>
                <asp:TextBox ID="Tb_apellidoM" runat="server" type="text" placeholder="Ingrese apellido materno" class="shadow-lg"> </asp:TextBox>
                <asp:TextBox ID="Tb_correo" runat="server" type="text" placeholder="Ingrese correo electronico" class="shadow-lg"> </asp:TextBox>
                                    </center>

                            
                                    
                         <center>
                             <asp:TextBox ID="Tb_apellidoP" runat="server" type="text" placeholder="Ingrese apellido paterno" class="shadow-lg"></asp:TextBox>
                             <asp:TextBox ID="Tb_contraseña" runat="server" type="text" placeholder="Ingrese contraseña" class="shadow-lg"></asp:TextBox>
                         </center>
                                    
                                      <div class="input-contenedor">
                                    
                         <center>
                             <asp:TextBox ID="Tb_matricula" runat="server" type="text" placeholder="Ingrese Matricula" class="shadow-lg"></asp:TextBox>
                                 </center> 
                         <center class="pt-15">

                          <asp:DropDownList ID="Dl_Carrera" runat="server" class="brad-5 " >
                                    <asp:ListItem value="Carrera">Carrera</asp:ListItem>
                                    <asp:ListItem value="Robotica">Ingenieria en Robotica</asp:ListItem>
                                    <asp:ListItem value="Civil">Ingenieria Civil</asp:ListItem>
                                    <asp:ListItem value="Industrial">Ingenieria Industrial</asp:ListItem>
                                    <asp:ListItem value="Sistemas_Computacionales">Ingenieria en Sistemas Computacionales</asp:ListItem>
                                    <asp:ListItem value="Tecnologias de Manufactura">Ingenieria en Tecnologias de Manufactura</asp:ListItem>
                                    <asp:ListItem value="Electronica y Telecomunicaciones">Ingenieria en Electronica y Telecomunicaciones</asp:ListItem>
                                    <asp:ListItem value="PYMES">Licenciatura en Gestion de PYMES</asp:ListItem>
                                    <asp:ListItem value="Negocios_Internacionales">Licenciatura en Negocios Internacionales</asp:ListItem>
                                    <asp:ListItem value="Energias_renovables">Maestria en energias renovables</asp:ListItem>
                                    <asp:ListItem value="Optica">Maestría en Computación Óptica</asp:ListItem>
                                    <asp:ListItem value="Organizaciones">Maestría en Dirección de Organizaciones </asp:ListItem>
                                    <asp:ListItem value="Desarrollo_Software">Maestría en Dirección de Organizaciones </asp:ListItem>
                                    <asp:ListItem value="Automatizacion">Maestría en Dirección de Organizaciones </asp:ListItem>
                                    <asp:ListItem value="Optimizacion">Maestría en Dirección de Organizaciones </asp:ListItem>
                                    <asp:ListItem value="Contribuciones">Maestría en Dirección de Organizaciones </asp:ListItem>
                                </asp:DropDownList>
                         </center>
                                    </div>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
                             <div class="row pt-60" style="margin-bottom: 21px">
        
         <div class="col-xs-12 col-sm-12 col-md-12 "  align="right">
            
            <asp:Button ID="Button1" runat="server" Text="Guardar" class="btn btn-info" OnClick="Button1_Click" />
        </div>

    </div> 

    </div>  
        </div>
    </main>
</body>

</asp:Content>
