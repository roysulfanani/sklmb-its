<?php
session_start();

include "config/koneksi.php";
header('Content-Type: application/json');
$username = $_POST['username'];
$password = md5($_POST['password']);
$level  = '';
//untuk menentukan expire cookie, dihtung dri waktu server + waktu umur cookie          
/*$time = time();  

$check = isset($_POST['setcookie'])?$_POST['setcookie']:'';*/

$query  = mysqli_query($koneksi, "SELECT * FROM tuser WHERE username = '$username' AND password = '$password' LIMIT 1");

$result = mysqli_fetch_array($query);
if ($result) {
	$_SESSION['id']			  		= $result['id'];
	$_SESSION['username']     		= $result['username'];
	$_SESSION['level']				= $result['level'];
	header("location:index.php");
	exit();
} else {
	var_dump($query);
	header("location:login.php?status=gagal");
}