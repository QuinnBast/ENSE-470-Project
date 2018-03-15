<?php
session_start();
include "database/dbConnect.php";

if(isset($_POST['username']) 
	&& isset($_POST['password']) 
	&& isset($_POST['firstname']) 
	&& isset($_POST['lastname']) 
	&& isset($_POST['email']) 
	&& isset($_POST['pwdConfirm'])
	&& ($_POST['username'] !== '')
	&& ($_POST['password'] !== '')
	&& ($_POST['firstname'] !== '')
	&& ($_POST['lastname'] !== '')
	&& ($_POST['email'] !== '')
	){
	
	//Determine if the user has entered the correct password and log them in.
	$first = $_POST['firstname'];
	$last = $_POST['lastname'];
	$email = $_POST['email'];
	$username = $_POST['username'];
	$pass = hash('sha512', $_POST['password']);
	$passConfirm = hash('sha512', $_POST['pwdConfirm']);
	
	//Check passwords match.
	if($pass !== $passConfirm){
		header('Location: /pages/signup.php?m=passwords');
	}
	
	//Check the email has not been used.
	$sql = "SELECT email FROM Logins WHERE email = '" . $email . "'";
	$row = $conn->query($sql);
	if($row->num_rows !== 0){
		//Account already exists!
		header('Location: ../pages/login.php?m=duplicate');
	}
	
	$sql = "INSERT INTO Employees (employee_first_name, employee_last_name, employee_email) VALUES ('" . $first . "', '" . $last . "', '" . $email . "')";
	if($conn->query($sql) === TRUE){
		$insertId = $conn->insert_id;
		//Login and go to the dash.
		$_SESSION['username'] = $username;
		$_SESSION['role'] = "User";
		$_SESSION['employee_id'] = $insertId;
		$sql = "INSERT INTO Logins (first_name, last_name, email, username, password, employee_id) VALUES ('" . $first . "', '" . $last . "', '" . $email . "', '" . $username . "', '" . $pass . "', " . $insertId . ")";		
		if($conn->query($sql) === TRUE){
			header('Location: ../pages/dash.php');
		} else {
			header('Location: ../pages/signup.php?m=connection');
		}
	} else {
		header('Location: ../pages/signup.php?m=connection');
	}
	
} else {
	header('Location: ../pages/signup.php?m=missing');
}