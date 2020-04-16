function guardar() {

    let Proyecto = {
        nombre: document.getElementById("Tb_nombreProyecto").value;

        
    }

    localStorage.setItem("proyecto", JSON.stringify(Proyecto));

}

function hola() {
    var nick = document.getElementById('<%= Tb_nombreProyecto.ClientID %>').value;
    alert("hola " + nick);
}
