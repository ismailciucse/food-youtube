<?php 
	include('header.php'); 
	session_destroy();
	header('location:'.SITEURL.'login.php');
	
?>
