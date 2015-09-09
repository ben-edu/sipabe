function validarCurp(){
var curp = document.getElementById('curp_txt').value;
if (curp == ''){
alert ('La CURP no debe de estar en blanco');
return false;
}
if (curp.length != 18){
alert ('La CURP debe contener 18 caracteres');
return false;
}



  curp = curp.toLowerCase();
curp1 = curp.substring(0,4);
curp2 = curp.substring(4,10);



if(curp1.match(/^([a-z]{4})$/i)) {
  if(curp2.match(/^([0-9]{6})$/i)) {
    document.curp_form.submit();
  }else{ alert('error en curp'); return false; }
}else{alert('error en curp'); return false; }









}


function validar_rfc(){

var rfc = document.getElementById('rfc_txt').value;
if (rfc == ''){
alert ('El RFC no debe de estar en blanco');
return false;
}
if (rfc.length != 12){
alert ('El RFC debe contener 12 caracteres');
return false;
}


rfc = rfc.toLowerCase();
rfc1 = rfc.substring(0,3);
rfc2 = rfc.substring(3,9);


if(rfc1.match(/^([a-z]{3})$/i)) {
  if(rfc2.match(/^([0-9]{6})$/i)) {
    document.rfc_form.submit();
  }else{ alert('error en rfc');  }
}else{alert('error en rfc');}


}
