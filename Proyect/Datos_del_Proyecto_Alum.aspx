<%@ Page Title="Datos de Proyecto" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Datos_del_Proyecto_Alum.aspx.cs" Inherits="GEIP_UPT.Datos_del_Proyecto_Alum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

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
                            <a class="dropdown-item" href="Login_administrar.aspx">Cerrar sesión</a>
                           
                        </div>
                    </li>
                    


                </ul>
            </div>

        </nav>
    </header>

    <main>
    	<h3 class="pt-8" align="center">Datos del Proyecto</h3>
        <div class="container-fluid p-50 mb-20">
           
                         <div class="table-responsive">
<%--                             /////////////////////////////////////////////////////////////////////////////////////////////--%>
     <asp:Table ID="Table1" 
            runat="server" 
            CellPadding="10"
            CellSpacing="10"
            BackColor="White"
            BorderColor="Black"
            GridLines="Both" Height="142px"
            >
            <asp:TableHeaderRow 
                runat="server" 
                BackColor="WhiteSmoke"
                >
                <asp:TableHeaderCell>ID</asp:TableHeaderCell>
                <asp:TableHeaderCell>Nombre</asp:TableHeaderCell>
                <asp:TableHeaderCell>Tipo</asp:TableHeaderCell>
                <asp:TableHeaderCell>Clasificacion</asp:TableHeaderCell>
                <asp:TableHeaderCell>Avance</asp:TableHeaderCell>
                <asp:TableHeaderCell>Programa Educativo</asp:TableHeaderCell>
                <asp:TableHeaderCell>Asesor</asp:TableHeaderCell>
                <asp:TableHeaderCell>Cuatrimestre</asp:TableHeaderCell>
                <asp:TableHeaderCell>Materias a las que impacta</asp:TableHeaderCell>
                <asp:TableHeaderCell>Fecha de finalización</asp:TableHeaderCell>
                <asp:TableHeaderCell>Convocatorias anteriores</asp:TableHeaderCell>
                <asp:TableHeaderCell>Recursos para el desarrollo del proyecto </asp:TableHeaderCell>
                <asp:TableHeaderCell>Descripcion</asp:TableHeaderCell>
                <asp:TableHeaderCell>Integrantes</asp:TableHeaderCell>
                <asp:TableHeaderCell>Edades</asp:TableHeaderCell>
                <asp:TableHeaderCell>Contacto lider</asp:TableHeaderCell>
                <asp:TableHeaderCell>Contacto asesor</asp:TableHeaderCell>
            </asp:TableHeaderRow>
            
        </asp:Table>
<%--                             /////////////////////////////////////////////////////////////////////////////////////////////--%>
                         	
	<div class="row pt-60">
		<div class="col-xs-12 col-sm-12 col-md-12">
			<a href="Administracion_alumnos.aspx" class="btn btn-info">Regresar</a>
		</div>
	</div>                         
                         
        </div>
    </main>

    <asp:HiddenField ID="hf_matricula"  runat="server" />
    <asp:Button ID="btnCargarTabla"  class="d-none" runat="server" onClick="btnCargarTabla_Click"  ></asp:Button>
    

</body>
        
    <script type="text/javascript">

        obtenerMatricula();

        function obtenerMatricula() {
            let matricula = localStorage.getItem("Matricula");
            if (document.getElementById('<%= hf_matricula.ClientID %>').value=="") {
                document.getElementById('<%= hf_matricula.ClientID %>').value = matricula;
                document.getElementById('<%= btnCargarTabla.ClientID %>').click();
            }
          
        }

        

        </script>

</asp:Content>
