<?php
session_start();
include "database/dbConnect.php";

if(isset($_POST['username']) && isset($_POST['password']) && ($_POST['username'] !== '') && ($_POST['password'] !== '')){
	
	//Determine if the user has entered the correct password and log them in.
	$user = $_POST['username'];
	$pass = $_POST['password'];
	
	$sql = "SELECT * FROM Logins WHERE username = '" . $user . "' AND password = '" . hash('sha512', $pass) ."'";
	$row = $conn->query($sql);
	if($row->num_rows == 1){
		//Successful login credentials.
		$row = $row->fetch_assoc();
		$_SESSION['username'] = $row['username'];
		$_SESSION['role'] = $row['role'];
		$_SESSION['employee_id'] = $row['employee_id'];
		header('Location: /pages/dash.php');
	} else {
		//Incorrect login
		header('Location: /pages/login.php?m=invalid');
	}
	
} else {
	header('Location: /pages/login.php?m=missing');
}