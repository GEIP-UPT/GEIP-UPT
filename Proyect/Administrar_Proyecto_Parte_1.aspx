<%@ Page Title="Registro de proyectos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Administrar_Proyecto_Parte_1.aspx.cs" Inherits="GEIP_UPT.Registrar_Proyecto_Parte_1" %>
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
                            <a class="dropdown-item" href="index.aspx">Cerrar sesión</a>
                           
                        </div>
                    </li>
                </ul>
            </div>

        </nav>
    </header>
    <main>
    	<h3 class="pt-8" align="center">Registrar Proyecto</h3>

        <div style="margin-left: auto; margin-right: auto; text-align: center;">
            <asp:Label ID="MsgError" runat="server" BorderColor="PaleVioletRed" Text="Debe ingresar todos los datos." Visible="False" ForeColor="PaleVioletRed"
                     CssClass="StrongText"></asp:Label>
        </div>


        <div class="container-fluid p-15">
            <div class="row">
            					<div class="col-xs-12 col-sm-12 col-md-12" style="margin-bottom: 8px;">
            					<center>
                                    <asp:TextBox ID="Tb_nombreProyecto" runat="server" type="text" placeholder="Nombre del proyecto" > </asp:TextBox>

            					</center>
            				</div>
            			</div>

            		<div class="row">	
							 <div class="col-xs-6 col-sm-6 col-md-12" >
                               <div class="input-contenedor" style="display: flex; justify-content: center;">
							
									<center>
                                    <asp:DropDownList ID="Dl_Avance" runat="server"  class="brad-5" Height="21px" >
                                    <asp:ListItem value="Defecto">Avance</asp:ListItem>
                                    <asp:ListItem value="10">10%</asp:ListItem>
                                    <asp:ListItem value="20">20%</asp:ListItem>
                                    <asp:ListItem value="30">30%</asp:ListItem>
                                    <asp:ListItem value="40">40%</asp:ListItem>
                                    <asp:ListItem value="50">50%</asp:ListItem>
                                    <asp:ListItem value="60">60%</asp:ListItem>
                                    <asp:ListItem value="70">70%</asp:ListItem>
                                    <asp:ListItem value="80">80%</asp:ListItem>
                                    <asp:ListItem value="90">90%</asp:ListItem>
                                    <asp:ListItem value="100">100%</asp:ListItem>
                                </asp:DropDownList>
                            </center>
									</div>

									 <div class="col-xs-6 col-sm-6 col-md-12 " >
									 	<div class="input-contendor " style="display: flex; justify-content: center; margin-bottom: 30px;">

                                <asp:DropDownList ID="dl_Tipo" runat="server" class="brad-5" >
                                    <asp:ListItem value="Defecto">Tipo de Proyecto</asp:ListItem>
                                </asp:DropDownList>
                            
                        </div>
                            </div>
                            </div>

              </div>

              <div class="row">
              	 <div class="col-xs-12 col-sm-12 col-md-12">
                              	<center>
                                 <asp:DropDownList ID="dl_Programas" runat="server" class="brad-5">
                                    <asp:ListItem value="Defecto">Programa_educativo</asp:ListItem>
                                </asp:DropDownList>
                               </center>
                            </div>
                        </div>


                        <div class="row">
                        	
                        	   <div class="col-xs-12 col-sm-12 col-md-12">
                            <br>
                               <center>
                                <asp:DropDownList ID="Dl_Clasificacion" runat="server"  class="brad-5" >
                                    <asp:ListItem value="Defecto">Clasificacion</asp:ListItem>
                                </asp:DropDownList>  

                                 <asp:DropDownList ID="Dl_Asesores" runat="server"  class="brad-5" >
                                  <asp:ListItem value="Defecto">Asesores</asp:ListItem>
                                  </asp:DropDownList>

                               </center>
                            </div>

                        </div>


                       <div class="row pt-60" style="margin-bottom: 21px">
        <div class="col-xs-6 col-sm-6 col-md-9" align="left">
            <asp:Button iD= Btn_Regresar runat="server" class="btn btn-info" Text="Regresar" OnClick="Btn_Regresar_Click"></asp:Button> 
        </div>
         <div class="col-xs-6 col-sm-6 col-md-3 "  align="right">
            
            <asp:Button Id="Btn_Sig" runat="server" OnClientClick="guardarProyecto();" OnClick="Btn_Guardar_Click" class="btn btn-info" Text="Siguiente" />
             
        </div>

    </div> 

              </div>


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

         		

        
    <script type="text/javascript">
        obtenerProyecto();


        function guardarProyecto() {

            let Proyecto = {
                nombre: document.getElementById('<%= Tb_nombreProyecto.ClientID %>').value,
                avance: document.getElementById('<%= Dl_Avance.ClientID %>').value,
                tipo: document.getElementById('<%= dl_Tipo.ClientID %>').value,
                programa: document.getElementById('<%= dl_Programas.ClientID %>').value,
                clasificacion: document.getElementById('<%= Dl_Clasificacion.ClientID %>').value,
                asesores: document.getElementById('<%= Dl_Asesores.ClientID %>').value
            };

            localStorage.setItem("._Proyecto", JSON.stringify(Proyecto));
        }

        function obtenerProyecto() {
            let proyecto = JSON.parse(localStorage.getItem("._Proyecto"));

            if (proyecto != "") {
                document.getElementById('<%= Tb_nombreProyecto.ClientID %>').value = proyecto.nombre;
                document.getElementById('<%= Dl_Avance.ClientID %>').value = proyecto.avance;
                document.getElementById('<%= dl_Tipo.ClientID %>').value = proyecto.tipo;
                document.getElementById('<%= dl_Programas.ClientID %>').value = proyecto.programa;
                document.getElementById('<%= Dl_Clasificacion.ClientID %>').value = proyecto.clasificacion;
                document.getElementById('<%= Dl_Asesores.ClientID %>').value = proyecto.asesores;
            }

        }

        

    </script>




          
    </main>
</body>

                                   </select>&nbsp;&nbsp; &nbsp;&nbsp;</asp:Content>
