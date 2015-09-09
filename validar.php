<?php
session_start();
if(!isset($_POST[ 'user'])){
  header( "location: $url_falsa");
  exit();
}
$padron=array( '%', ' ', '.', '!', '@', ':', ';', '$', '#');
$usr=$_POST[ 'user'];
for($x=0;$x<strlen($usr);$x=$x+1){
  $char=substr($x,1);
  for($z=0;$z<count($padron);$z=$z+1){
    if($char==$padron[$z]){ session_destroy(); header( "location: $url_falsa"); exit();}}} unset($padron); unset($url_falsa); require_once 'config.php'; require_once 'clases/login.php'; ?>
