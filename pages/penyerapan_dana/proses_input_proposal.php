<?php
include '../../config/koneksi.php';

session_start();

if (empty($_SESSION['username'])) {
  header("location:login.php");
}

$id_user 		= $_SESSION['id'];
$judul_proposal = $_POST['judul_proposal'];
$nama_file   	= $_FILES['file_input']['name'];
$lokasi_file 	= $_FILES['file_input']['tmp_name'];
$status 		= "proses proposal";
$date 			= date("Y-m-d");

$nama_file_new	= date("Y-m-d") . "-" . $nama_file;
$direktori   	= "file_input/" . $nama_file_new;
move_uploaded_file($lokasi_file, $direktori); 
//var_dump($periode_akhir);

$query = "INSERT INTO tproposal (judul_proposal, file_input, date, status, id_user) VALUES ('$judul_proposal', '$nama_file_new', '$date', '$status', '$id_user')";
$result = mysqli_query($koneksi, $query);

if ($result) {
	header("location:input_proposal.php");
} else {
	var_dump($query);
}