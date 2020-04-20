<%@ Page Title="Datos de Asesor" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Administracion_Pendientes.aspx.cs" Inherits="GEIP_UPT.Datos_de_Asesor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!DOCTYPE html>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Datos de Asesor</title>
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
                            <a class="dropdown-item" href="index.aspx">Cerrar sesión</a>
                           
                        </div>
                    </li>
                    


                </ul>
            </div>

        </nav>
    </header>

    <main>
    	<h3 class="pt-8" align="center">Proyectos pendientes de Estado</h3>
        <div class="container-fluid p-50 " style="margin-bottom: 8px;">
           
            <%--//////////////////////////////////////--%>
                         <div class="table-responsive  ">
                             <asp:Table ID="TablaProyectos" 
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
                                    <asp:TableHeaderCell>Descripcion</asp:TableHeaderCell>
                                    <asp:TableHeaderCell>Avance</asp:TableHeaderCell>
                                    <asp:TableHeaderCell>Fecha de finalización</asp:TableHeaderCell>
                                    <asp:TableHeaderCell>Estado Administrativo</asp:TableHeaderCell>
                                    <asp:TableHeaderCell>Estado </asp:TableHeaderCell>
                                    <asp:TableHeaderCell>Ver más</asp:TableHeaderCell>

                                </asp:TableHeaderRow>
            
                            </asp:Table>
                                    
                               <asp:TextBox ID="idProyecto" CssClass="d-none" runat="server"></asp:TextBox>
                               <asp:Button ID="btnView" class="btn-info d-none" runat="server" Text="Submit" OnClick="btnView_Click"></asp:Button>
                         </div>      
                   
            <%--//////////////////////////////////////--%>
                            	
	<div class="row pt-120">
		<div class="col-xs-12 col-sm-12 col-md-12">
			
			<a href="Administracion.aspx" class="btn btn-info " >Regresar</a>
		</div>

	</div>                         
        </div>

         <%--MODAL DE VER MAS--%>
     
         <div class="modal fade bd-example-modal-lg show " id="modalProyectoDetalle" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
           <div class="modal-dialog modal-lg">

               <asp:UpdatePanel ID="upModal" runat="server" ChildrenAsTriggers="false" UpdateMode="Conditional">
                   <ContentTemplate>
                      
                       <div class="modal-content">
                                    
                                  <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalScrollableTitle">Datos del Proyecto</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                              <span aria-hidden="true">&times;</span>
                                            </button>
                                          </div>
                                  <div class="modal-body">

                                            <div class="container-fluid"> 
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <asp:Label ID="Lb_NombrePro" runat="server" Text="Nombre del proyecto: "></asp:Label>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <asp:Label ID="Lb_TipoPro" runat="server" Text="Tipo de proyecto: "></asp:Label>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <asp:Label ID="Lb_Clasificacion" runat="server" Text="Clasificacion: "></asp:Label>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <asp:Label ID="Lb_Avance" runat="server" Text="Avance: "></asp:Label>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <asp:Label ID="Lb_ProgramaE" runat="server" Text="Programa educativo:"></asp:Label>
                                                    </div>

                                                </div>
                                                <div class="row">

                                                    <div class="col-md-12">
                                                        <asp:Label ID="Lb_Asesor" runat="server" Text="Asesor: "></asp:Label>
                                                    </div>

                                                </div>
                                                  <div class="row">
                                                    <div class="col-3"> Matricula: </div>
                                                    <div class="col-5"> Alumno: </div>
                                                      <div class="col-2"> Edad: </div>
                                                       <div class="col-2"> Contacto: </div>
                                                </div>
                                                  <div class="row">

                                                      <div class="col-3 ">
                                                        <asp:Label ID="Lb_Mat1" runat="server" Text=""></asp:Label>
                                                        </div>
                                                    <div class="col-5">
                                                        <asp:Label ID="Lb_Alumno1" runat="server" Text=""></asp:Label>
                                                        </div>
                                                      <div class="col-2">
                                                        <asp:Label ID="Lb_Edad1" runat="server" Text=""></asp:Label>
                                                      </div>
                                                       <div class="col-2">
                                                        <asp:Label ID="Lb_Contacto1" runat="server" Text=""></asp:Label>
                                                      </div>

                                                </div>
                                                  <div class="row">
                                                      <div class="col-3 ">
                                                        <asp:Label ID="Lb_Mat2" runat="server" Text=""></asp:Label>
                                                        </div>
                                                    <div class="col-5">
                                                        <asp:Label ID="Lb_Alumno2" runat="server" Text=""></asp:Label>
                                                    </div>
                                                      <div class="col-2">
                                                        <asp:Label ID="Lb_Edad2" runat="server" Text=""></asp:Label>
                                                      </div>
                                                       <div class="col-2">
                                                        <asp:Label ID="Lb_Contacto2" runat="server" Text=""></asp:Label>
                                                      </div>
                                                </div>
                                                  <div class="row">
                                                      <div class="col-3 ">
                                                        <asp:Label ID="Lb_Mat3" runat="server" Text=""></asp:Label>
                                                        </div>
                                                    <div class="col-5">
                                                        <asp:Label ID="Lb_Alumno3" runat="server" Text=""></asp:Label>
                                                    </div>
                                                      <div class="col-2">
                                                        <asp:Label ID="Lb_Edad3" runat="server" Text=""></asp:Label>
                                                      </div>
                                                       <div class="col-2">
                                                        <asp:Label ID="Lb_Contacto3" runat="server" Text=""></asp:Label>
                                                      </div>

                                                </div>
                                                  <div class="row">
                                                      <div class="col-3 ">
                                                        <asp:Label ID="Lb_Mat4" runat="server" Text=""></asp:Label>
                                                        </div>
                                                    <div class="col-5">
                                                        <asp:Label ID="Lb_Alumno4" runat="server" Text=""></asp:Label>
                                                    </div>
                                                      <div class="col-2">
                                                        <asp:Label ID="Lb_Edad4" runat="server" Text=""></asp:Label>
                                                      </div>
                                                       <div class="col-2">
                                                        <asp:Label ID="Lb_Contacto4" runat="server" Text=""></asp:Label>
                                                      </div>

                                                </div>
                                                <div class="row">
                                                    <div class="col-3 ">
                                                        <asp:Label ID="Lb_Mat5" runat="server" Text=""></asp:Label>
                                                        </div>
                                                    <div class="col-5">
                                                        <asp:Label ID="Lb_Alumno5" runat="server" Text=""></asp:Label>
                                                    </div>
                                                      <div class="col-2">
                                                        <asp:Label ID="Lb_Edad5" runat="server" Text=""></asp:Label>
                                                      </div>
                                                     <div class="col-2">
                                                        <asp:Label ID="Lb_Contacto5" runat="server" Text=""></asp:Label>
                                                      </div>

                                                </div>


                                                  <div class="row">

                                                    <div class="col-md-6">
                                                        <asp:Label ID="Lb_Cuatrimestre" runat="server" Text="Cuatrimestre: "></asp:Label>
                                                    </div>
                                                      <div>
                                                        <asp:Label ID="Lb_Materias" runat="server" Text="Materias a las que impacta: "></asp:Label>
                                                      </div>

                                                </div>
                                                 <div class="row">
                                                      <div class="col-md-6">
                                                        <asp:Label ID="Lb_Fecha" runat="server" Text="Fecha de finalizacion: "></asp:Label>
                                                      </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <asp:Label ID="Lb_Convocatorias" runat="server" Text="Convocatorias: "></asp:Label>
                                                    </div>
                 
                                                </div>
                                                  <div class="row">
                                                    <div class="col-md-12">
                                                        <asp:Label ID="Lb_recursos" runat="server" Text="Recursos: "></asp:Label>
                                                    </div>
                 
                                                </div>
                                                 <div class="row">
                                                    <div class="col-md-12">
                                                        <asp:Label ID="Lb_descripcion" runat="server" Text="Descripcion:"></asp:Label>
                                                    </div>
                 
                                                </div>
                                               <%--  <div class="row">
                                                     <div class="col-md-6">
                                                        <asp:Label ID="Lb_contactoLider" runat="server" Text="Contacto Lider: "></asp:Label>
                                                     </div>
                 
                                                </div>--%>
                                            </div>
                                          </div>
                                   <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                                          </div>
                       </div>


                   </ContentTemplate>
               </asp:UpdatePanel>
           </div>
    </div>
    

          <%-- modal de justificacion--%>
         <div id="modalChangeStatus" class="modal fade" role="dialog">
              <div class="modal-dialog">
                <asp:TextBox ID="idStatus" CssClass="d-none" runat="server"></asp:TextBox>
                <asp:TextBox ID="status" CssClass="d-none" runat="server"></asp:TextBox>

                <!-- Modal content-->
                <div class="modal-content">
                  <div class="modal-header">
                      <h4 class="modal-title">Cambiar estado de Proyecto</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    
                  </div>
                  <div class="modal-body">
                    <p id="modalStatusText">Some text in the modal.</p>
                     <asp:TextBox ID="Tb_descripcion" runat="server" placeholder="Justificación de inactividad" TextMode="MultiLine" class="shadow-lg" Width="100%"></asp:TextBox> 
                  </div>
                  <div class="modal-footer">
                    <asp:Button ID="btnGuardar" runat="server" type="button"  class="btn btn-primary" onclick="btnGuardar_Click" Text="Guardar Cambios"></asp:Button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                  </div>
                </div
              </div>
         </div>

    </main>
</body>

    <script type="text/javascript">

        var textarea = document.getElementById('<%= Tb_descripcion.ClientID %>');
        textarea.scrollTop = textarea.scrollHeight;

        function clickView(id) {
            document.getElementById('<%= idProyecto.ClientID %>').value = id;
            document.getElementById('<%= btnView.ClientID %>').click();
        }

      
            function drpChange(e) {
               
                $("#<%=idStatus.ClientID %>").val($(e).attr('idProyecto'));
                $("#<%=status.ClientID %>").val($(e).val());
                var valor = $(e).val();

                if (valor=="0") {
                    $("#modalStatusText").html("Para marcar el proyecto como <strong>PENDIENTE</strong> seleccione Guardar Cambios ");
                    $('#<%= Tb_descripcion.ClientID %>').hide();
                } else if (valor=="1") {
                    $("#modalStatusText").html("Para marcar el proyecto como <strong>ACEPTADO</strong> seleccione Guardar Cambios ");
                    $('#<%=Tb_descripcion.ClientID %>').hide();
                } else if (valor=="2") {
                    $("#modalStatusText").html("Para marcar el proyecto como <strong>RECHAZADO</strong> seleccione Guardar Cambios ");
                    $('#<%=Tb_descripcion.ClientID %>').hide();
                }

                $("#modalChangeStatus").modal("show");
            }
       
        
    </script>

</asp:Content>
