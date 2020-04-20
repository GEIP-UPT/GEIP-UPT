<%@ Page Title="Registrar proyecto" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Administrar_Proyecto_parte2.aspx.cs" Inherits="GEIP_UPT.Registrar_Proyecto_parte2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<!DOCTYPE html>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Registrar proyecto</title>
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
                            <a class="dropdown-item" href="index">Cerrar sesión</a>
                           
                        </div>
                    </li>
                </ul>
            </div>

        </nav>
    </header>
    <main>
        <h3 class="pt-8" align="center">Registro de integrantes del proyecto</h3>

        
        <div style="margin-left: auto; margin-right: auto; text-align: center;">
            <asp:Label ID="MsgError" runat="server" BorderColor="PaleVioletRed" Text="Mensaje de error" Visible="False" ForeColor="PaleVioletRed"
                     CssClass="StrongText"></asp:Label>
        </div>

        <div class="container-fluid p-15">
            <div class="row">
                <div class="col-12 col-lg-">
                    <div class="container-fluid p-0">
                        <div class="row">
                            <div class="col-12 mb-15">
                               
                    <center>
                            <asp:TextBox ID="Ma1" runat="server" placeholder="Ingrese matrícula  del integrante" class="shadow-lg" Width="255px"></asp:TextBox>
                            <asp:TextBox ID="Tb1" runat="server" placeholder="Ingrese nombre del integrante" class="shadow-lg" Width="464px"></asp:TextBox>
                            <asp:DropDownList ID="Dl_1" runat="server" class="brad-5">
                                    <asp:ListItem value="Defecto">Edad</asp:ListItem>
                            </asp:DropDownList>
                        
                     </center>

                      <center>
                            <asp:TextBox ID="Ma2" runat="server" placeholder="Ingrese matrícula del integrante" class="shadow-lg" Width="255px"></asp:TextBox>
                            <asp:TextBox ID="Tb2" runat="server" placeholder="Ingrese nombre del integrante" class="shadow-lg" Width="464px"></asp:TextBox>
                            <asp:DropDownList ID="Dl_2" runat="server" class="brad-5">
                                    <asp:ListItem value="Defecto">Edad</asp:ListItem>
                            </asp:DropDownList>
                        
                     </center>

                     <center>
                            <asp:TextBox ID="Ma3" runat="server" placeholder="Ingrese matrícula del integrante" class="shadow-lg" Width="255px"></asp:TextBox>
                            <asp:TextBox ID="Tb3" runat="server" placeholder="Ingrese nombre del integrante" class="shadow-lg" Width="464px"></asp:TextBox>
                            <asp:DropDownList ID="Dl_3" runat="server" class="brad-5">
                                    <asp:ListItem value="Defecto">Edad</asp:ListItem>
                            </asp:DropDownList>
                        
                     </center>

                      <center>
                            <asp:TextBox ID="Ma4" runat="server" placeholder="Ingrese matrícula del integrante" class="shadow-lg" Width="255px"></asp:TextBox>
                            <asp:TextBox ID="Tb4" runat="server" placeholder="Ingrese nombre del integrante" class="shadow-lg" Width="464px"></asp:TextBox>
                            <asp:DropDownList ID="Dl_4" runat="server" class="brad-5">
                                    <asp:ListItem value="Defecto">Edad</asp:ListItem>
                            </asp:DropDownList>
                        
                     </center>

                    <center>
                            <asp:TextBox ID="Ma5" runat="server" placeholder="Ingrese matrícula del integrante" class="shadow-lg" Width="255px"></asp:TextBox>
                            <asp:TextBox ID="Tb5" runat="server" placeholder="Ingrese nombre del integrante" class="shadow-lg" Width="464px"></asp:TextBox>
                            <asp:DropDownList ID="Dl_5" runat="server" class="brad-5">
                                    <asp:ListItem value="Defecto">Edad</asp:ListItem>
                            </asp:DropDownList>
                        
                     </center>

                                   </div> 
                        </div>
                    </div>
                </div>
                
            </div>
                <div class="row pt-60" style="margin-bottom: 21px">
        <div class="col-xs-6 col-sm-6 col-md-9" align="left">
            
        <asp:Button ID="Btn_Regresar" runat="server" class="btn btn-info" Text="Regresar" OnClick="Btn_Regresar_Click"></asp:Button>   

        </div>
         <div class="col-xs-6 col-sm-6 col-md-3 "  align="right">
            
           <asp:Button ID="Btn_Sig" runat="server" class="btn btn-info" Text="Siguiente" OnClick="Btn_Sig_Click" OnClientClick="guardarProyecto2();"></asp:Button>
        </div>

    </div>   
        </div>
    </main>

    <script type="text/javascript">
        obtenerProyecto2();

        function guardarProyecto2() {

            let Proyecto = {
                integrante1: document.getElementById('<%= Tb1.ClientID %>').value,
                edad1: document.getElementById('<%= Dl_1.ClientID %>').value,
                matricula1: document.getElementById('<%= Ma1.ClientID %>').value,

                integrante2: document.getElementById('<%= Tb2.ClientID %>').value,
                edad2: document.getElementById('<%= Dl_2.ClientID %>').value,
                matricula2: document.getElementById('<%= Ma2.ClientID %>').value,

                integrante3: document.getElementById('<%= Tb3.ClientID %>').value,
                edad3: document.getElementById('<%= Dl_3.ClientID %>').value,
                matricula3: document.getElementById('<%= Ma3.ClientID %>').value,

                integrante4: document.getElementById('<%= Tb4.ClientID %>').value,
                edad4: document.getElementById('<%= Dl_4.ClientID %>').value,
                matricula4: document.getElementById('<%= Ma4.ClientID %>').value,

                integrante5: document.getElementById('<%= Tb5.ClientID %>').value,
                edad5: document.getElementById('<%= Dl_5.ClientID %>').value,
                matricula5: document.getElementById('<%= Ma5.ClientID %>').value,
            };

            localStorage.setItem("._Proyecto2", JSON.stringify(Proyecto));
        }

        function obtenerProyecto2() {
            let proyecto = JSON.parse(localStorage.getItem("._Proyecto2"));

            if (proyecto != "") {
                document.getElementById('<%= Tb1.ClientID %>').value = proyecto.integrante1;
                document.getElementById('<%= Dl_1.ClientID %>').value = proyecto.edad1;
                document.getElementById('<%= Ma1.ClientID %>').value = proyecto.matricula1;

                document.getElementById('<%= Tb2.ClientID %>').value = proyecto.integrante2;
                document.getElementById('<%= Dl_2.ClientID %>').value = proyecto.edad2;
                document.getElementById('<%= Ma2.ClientID %>').value = proyecto.matricula2;

                document.getElementById('<%= Tb3.ClientID %>').value = proyecto.integrante3;
                document.getElementById('<%= Dl_3.ClientID %>').value = proyecto.edad3;
                document.getElementById('<%= Ma3.ClientID %>').value = proyecto.matricula3;

                document.getElementById('<%= Tb4.ClientID %>').value = proyecto.integrante4;
                document.getElementById('<%= Dl_4.ClientID %>').value = proyecto.edad4;
                document.getElementById('<%= Ma4.ClientID %>').value = proyecto.matricula4;

                document.getElementById('<%= Tb5.ClientID %>').value = proyecto.integrante5;
                document.getElementById('<%= Dl_5.ClientID %>').value = proyecto.edad5;
                document.getElementById('<%= Ma5.ClientID %>').value = proyecto.matricula5;
            }

        }

    </script>


    </body>

</asp:Content>
