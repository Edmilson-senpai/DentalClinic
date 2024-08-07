/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function resetearFormulario(){
    document.getElementById("formularioNuevoCliente").reset();
    var avisoDatosIncompletos = document.getElementById("avisoDatosIncompletos");
    var btnGuardar = document.getElementById("btn-guardar");
    
    btnGuardar.disabled = true;
    avisoDatosIncompletos.innerHTML = "";
    
}

function datosIncompletos(){
    var txt_cliente_dni = document.getElementById("cliente_dni");
    var txt_cliente_nombre = document.getElementById("cliente_nombre");
    var txt_cliente_apellido = document.getElementById("cliente_apellido");
    var txt_cliente_telefono = document.getElementById("cliente_telefono");
    var txt_cliente_direccion = document.getElementById("cliente_direccion");
    var btnGuardar = document.getElementById("btn-guardar");
    
    btnGuardar.disabled = true; //empieza boton guardar desactivado
    
    if(txt_cliente_dni.value.length === 0       || txt_cliente_nombre.value.length === 0 ||
       txt_cliente_apellido.value.length === 0  || txt_cliente_telefono.value.length === 0 || 
       txt_cliente_direccion.value.length === 0){
        avisoDatosIncompletos.innerHTML = "Para guardar, complete todos los campos";
        avisoDatosIncompletos.style.color = "blue";
        btnGuardar.disabled = true;
    }else{
        avisoDatosIncompletos.innerHTML = "Campos completos. Puede guardar los datos";
        avisoDatosIncompletos.style.color = "green";  
        btnGuardar.disabled = false;
    }
    
}

