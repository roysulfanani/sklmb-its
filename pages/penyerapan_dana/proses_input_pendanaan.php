<?php
include '../../config/koneksi.php';

session_start();

if (empty($_SESSION['username'])) {
  header("location:login.php");
}

$id_user 		= $_SESSION['id'];
var_dump($id_user);

$jenis_biaya 	= $_POST['jenis_biaya'];
$nominal 		= $_POST['nominal'];
$periode_rab 	= date("Y-m-d");

$query = "INSERT INTO trab (jenis_biaya, rab, tahun, id_user) VALUES ('$jenis_biaya', '$nominal', '$periode_rab', '$id_user')";
$result = mysqli_query($koneksi, $query);

if ($result) {
	header("location:input_pendanaan.php");
} else {
	var_dump($query);
}