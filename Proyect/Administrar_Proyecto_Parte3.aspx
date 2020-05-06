﻿<%@ Page Title="Registrar proyecto" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Administrar_Proyecto_Parte3.aspx.cs" Inherits="GEIP_UPT.Registrar_Proyecto_Parte3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!DOCTYPE html>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Lectura de proyectos</title>
    <script src="js/jquery.js"></script>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, minimum-scale=1.0">
    <!-- Latest compiled and minified CSS -->
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"> -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/estilos.css">
    <script src="https://kit.fontawesome.com/68163644d5.js" crossorigin="anonymous"></script>
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous"> -->
    <script src="libs/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
    <link rel="stylesheet" href="libs/bootstrap-datepicker/css/bootstrap-datepicker.css">
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
        <div class="container-fluid p-15">

      
        <div style="margin-left: auto; margin-right: auto; text-align: center;">
            <asp:Label ID="MsgError" runat="server" BorderColor="PaleVioletRed" Text="Mensaje de error" Visible="False" ForeColor="PaleVioletRed"
                     CssClass="StrongText"></asp:Label>
        </div>



            <div class="row " >
                <div class="col-xs-12 col-mb-12 mx-auto">
                    <center>
                   

                        <center> Fecha de finalización<asp:Calendar ID="Calendario" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="300px">
                                                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                                                <OtherMonthDayStyle ForeColor="#999999" />
                                                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                                                <TodayDayStyle BackColor="#CCCCCC" />
                                            </asp:Calendar>
                                           


                            </center>
                                    
                        </center>
                            </div>
                        </div>


                              <div class="row text-center">
                                 <div class="col-xs-12 col-lg-12">
                                <center>
                                    Materias a las que impacta<br>
                                    <asp:CheckBoxList ID="Cb_materias" runat="server" >

                                    </asp:CheckBoxList>
                                  

                                <asp:DropDownList ID="Dl_cuatrimestre" runat="server">
                               <asp:ListItem value="Defecto"> Cuatrimestre de desarrollo </asp:ListItem>
                                    <asp:ListItem value="1">1° cuatrimestre</asp:ListItem>
                                    <asp:ListItem value="2">2° cuatrimestre</asp:ListItem>
                                    <asp:ListItem value="3">3° cuatrimestre</asp:ListItem>
                                    <asp:ListItem value="4">4° cuatrimestre</asp:ListItem>
                                    <asp:ListItem value="5">5° cuatrimestre</asp:ListItem>
                                    <asp:ListItem value="6">6° cuatrimestre</asp:ListItem>
                                    <asp:ListItem value="7">7° cuatrimestre</asp:ListItem>
                                    <asp:ListItem value="8">8° cuatrimestre</asp:ListItem>
                                    <asp:ListItem value="9">9° cuatrimestre</asp:ListItem>
                                </asp:DropDownList>

                                  

                              </center>
                            </div>
                        </div>

                            <div class="row">
                                <div class="col-12 ">
                               <center>

                                    <br />
                                   
                                    ¿Has Participado en alguna convocatoria? 
                                         <br>
                               
                                   <asp:RadioButton ID="Rb_Y" GroupName="Gp1" runat="server" Text="Si" AutoPostBack="True" OnCheckedChanged="Rb_Y_CheckedChanged"></asp:RadioButton> 
                                   <asp:RadioButton ID="Rb_N" GroupName="Gp1" runat="server" Text="No" AutoPostBack="True" OnCheckedChanged="Rb_N_CheckedChanged"></asp:RadioButton> 

                                <br />
                                    <asp:TextBox ID="Tb_lugar" runat="server" type="text" placeholder="Cual y lugar obtenido" Visible="true"> </asp:TextBox>
                               </center>
                            </div>
                        </div>

                   
            
    
                       <div class="row pt-90 mb-17" >
        <div class="col-xs-6 col-sm-6 col-md-9" align="left">
            
            <asp:Button ID="Btn_Regresar" runat="server" class="btn btn-info" Text="Regresar" OnClick="Btn_Regresar_Click" ></asp:Button>

        </div>
         <div class="col-xs-6 col-sm-6 col-md-3 "  align="right">
            
            <asp:Button ID="Btn_Sig" runat="server" class="btn btn-info" Text="Siguiente" OnClientClick="guardarProyecto();" OnClick="Sig_Click"></asp:Button>
        </div>

    </div>  
      

    <asp:HiddenField ID="hf_convocatoria"  runat="server" />
    <asp:HiddenField ID="hf_fecha"  runat="server" />
    <asp:Button ID="btnCargarConv" class="d-none" runat="server" onClick="btnCargarCon_Click"></asp:Button>
          </div>
    </main>
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
        convocatoria();

        function guardarProyecto() {
            //obtener fecha
            var calendarDate = '<%= Calendario.SelectedDate %>';
            var date = calendarDate.split(" ");
        
            //obtener materias
            var cbs = document.getElementById('<%= Cb_materias.ClientID %>');

            var cbArray = cbs.getElementsByTagName('input');
            var checkValues = '';

            for (var i = 0; i < cbArray.length; i++) {
                var referencia = cbArray[i];

                if (referencia.checked == true) {

                    if (checkValues == '' )
                        checkValues = referencia.value;
                    else
                        checkValues = checkValues + "," + referencia.value;
                }
            }

            var convocator = 'No';
            //convocatoria
            var radioY = document.getElementById('<%= Rb_Y.ClientID %>').checked;
            if (radioY == true) {
                convocator = document.getElementById('<%= Tb_lugar.ClientID %>').value;
            }

            let Proyecto = {
               fecha: date[0],
                cuatrimestre: document.getElementById('<%= Dl_cuatrimestre.ClientID %>').value,
                materias: checkValues,
                convocatoria: convocator
            };

            localStorage.setItem("._Proyecto3", JSON.stringify(Proyecto));
        }

        function obtenerProyecto() {
            let proyecto = JSON.parse(localStorage.getItem("._Proyecto3"));
            console.log(proyecto);
                if (proyecto != "") {
                    //poner fecha
                    document.getElementById('<%= Calendario.ClientID %>').value = proyecto.fecha;
                    //cuatrimestre
                    document.getElementById('<%= Dl_cuatrimestre.ClientID %>').value = proyecto.cuatrimestre;
                    //materias
                    var cbs = document.getElementById('<%= Cb_materias.ClientID %>');

                    var cbArray = cbs.getElementsByTagName('input');
                    var checkValues = proyecto.materias;
                    var checkValSpl = checkValues.split(",");

                        for (var i = 0; i < cbArray.length; i++) {
                            var referencia = cbArray[i];

                            for (var j = 0; j <= checkValSpl.length; j++) {
                                if (referencia.value == checkValSpl[j]) {
                                    referencia.checked = true;
                                }
                            }
                        }

                }


        }

        function convocatoria() {
            let proyecto = JSON.parse(localStorage.getItem("._Proyecto3"));
            if (proyecto != "" && proyecto != null) {
                if (document.getElementById('<%= hf_convocatoria.ClientID %>').value == "") {
                    //convocatorias
                    var participa = proyecto.convocatoria;
                    document.getElementById('<%= hf_convocatoria.ClientID %>').value = participa;
                    document.getElementById('<%= hf_fecha.ClientID %>').value = proyecto.fecha;
                    document.getElementById('<%= btnCargarConv.ClientID %>').click();
                }
            }
        }

    </script>



</body>

</asp:Content>
