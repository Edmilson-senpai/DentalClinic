/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function resetearFormulario(){
    document.getElementById("formularioNuevoUsuario").reset();
    var avisoContrasena = document.getElementById("avisoContrasena");
    var btnGuardar = document.getElementById("btn-guardar");
    
    btnGuardar.disabled = true;
    avisoContrasena.innerHTML = "_____________________";
    avisoContrasena.style.color ="black";
    
}

function nombreUsuario(){
    document.getElementById("formularioNuevoUsuario");
    var usuarionombre = document.getElementById("usuario_nombre");
    var usuarioapellido = document.getElementById("usuario_apellido");
    
    var nombrecompleto = document.getElementById("usuario_usuario");
    
    var nombresapellidos = usuarionombre.value + ' ' + usuarioapellido.value;
    
    nombrecompleto.value = nombresapellidos;
}


function obtenerCliente(){
    document.getElementById("formularioObtenerCliente");
    var usuarionombre = document.getElementById("usuario_nombre");
    var usuarioapellido = document.getElementById("usuario_apellido");
    
    var nombrecompleto = document.getElementById("usuario_usuario");
    
    var nombresapellidos = usuarionombre.value + ' ' + usuarioapellido.value;
    
    nombrecompleto.value = nombresapellidos;
}


function coincidirContrasena(){
    var txt_usuario_clave_1 = document.getElementById("usuario_clave_1");
    var txt_usuario_clave_2 = document.getElementById("usuario_clave_2");
    var avisoContrasena = document.getElementById("avisoContrasena");
    var btnGuardar = document.getElementById("btn-guardar");
    
    btnGuardar.disabled = true; //empieza boton guardar desactivado
    
    
    if(txt_usuario_clave_1.value.length === 0 || txt_usuario_clave_2.value.length === 0){
        avisoContrasena.innerHTML = "Ninguna de las contraseñas pueden quedar vacías";
        avisoContrasena.style.color = "blue";
        btnGuardar.disabled = true;
    }else if (txt_usuario_clave_1.value !== txt_usuario_clave_2.value) {
        avisoContrasena.innerHTML = "Contraseñas no coinciden";
        avisoContrasena.style.color = "red";
        btnGuardar.disabled = true;
    }else{
        avisoContrasena.innerHTML = "Contraseñas coinciden";
        avisoContrasena.style.color = "green";  
        btnGuardar.disabled = false;
    }
    
}

