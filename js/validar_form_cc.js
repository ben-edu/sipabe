function validar_form(){
  //validar campos requeridos de datos personales
  var ap_paterno = document.getElementById('FirstA').value;
  var nombre = document.getElementById('Nombre').value;
  ap_p_char = ap_paterno.length;
  if(ap_p_char<3){
   no_enviar('verificar apellido paterno');
  }
  nombre_char = nombre.length;
  if(nombre_char<2){
    no_enviar('verificar el nombre');
  }
  //validar campos requeridos de la direccion
  var municipio = document.getElementById('municipio').value;
  var localidad = document.getElementById('localidad').value;
  var asentamiento = document.getElementById('asentamiento').value;
  var tipo_vial = document.getElementById('tipo_vial').value;
  var n_vialidad = document.getElementById('n_vialidad').value;
  n_vial_char = n_vialidad.length;
  var ne_txt = document.getElementById('ne_txt').value;
  ne_txt_char = ne_txt.length;
  if(municipio == 0){no_enviar("Falta Seleccionar el municipio");}
  if(localidad == 0){no_enviar("Falta Seleccionar la localidad");}
  if(asentamiento == 0){no_enviar("Falta Seleccionar el municipio");}
  if(tipo_vial == 0){ no_enviar("Falta Seleccionar el tipo de vialidad");}
  if(n_vial_char<3){ no_enviar("El nombre de la vialidad no es correcto");}
  if(n_vial_char<1){ no_enviar("El numero de casa no es correcto");}

  document.nuevo_cc_form.submit();
}

function no_enviar(m){
  alert(m);
  return false();
}
