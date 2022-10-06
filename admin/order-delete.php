<?php
	
	include('config.php');
	
	if(isset($_GET['id'])){
		$id = $_GET['id'];
		$sql = "DELETE FROM food_order WHERE id= '$id'";
		$res = mysqli_query($conn, $sql);
		if($res == true){
			$_SESSION['delete'] = "<div class='success text-center'>Order deleted successfully.</div>";
			header('location:'.SITEURL."admin/order.php");
		}
		else{
			$_SESSION['delete'] = "<div class='error text-center'>Order deleted field.</div>";
			header('location:'.SITEURL."admin/order.php");
		}
	}
	else{
		header('location:'.SITEURL."admin/food.php");
	}
	
	
	
	
?>