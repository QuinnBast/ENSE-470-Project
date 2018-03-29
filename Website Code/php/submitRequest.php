<?php
session_start();
include "database/dbConnect.php";

if(isset($_SESSION['employee_id']) 
	&& isset($_POST['software'])){
			
	//Determine if the user has entered the correct password and log them in.
	$software = $_POST['software'];
	$employee_id = $_SESSION['employee_id'];
	
	//Check the email has not been used.
	$sql = "INSERT into SoftwareRequest (software_requesting_pk, employee_requesting_pk, status) VALUES (" . $software . ", " . $employee_id . ", 'Pending')";
	echo $sql;
	if($conn->query($sql) === TRUE){
		$insertId = $conn->insert_id;
		$comment = mysqli_real_escape_string($conn, $_POST['comment']);
		//Create comment section and forward to proper approver.
		$sql = "INSERT INTO ApprovalComments (request_pk, approver_pk, approver_comments, status) VALUES (" . $insertId . ", " . $employee_id . ", '" . $comment . "', 'Forward')";
		if($conn->query($sql) === TRUE){
			$commentId = $conn->insert_id;
			$sql = "UPDATE ApprovalComments SET next_comment_pk = " . $commentId + 1 . " WHERE comment_pk = " . $commentId;
			$result = $conn->query($sql);
			
			//Get the approver for the software.
			$sql = "SELECT * FROM SoftwareApprovers WHERE software_pk = " . $software;
			$result = $conn->query($sql);
			$row = $result->fetch_assoc();
			$sql = "INSERT INTO ApprovalComments (request_pk, approver_pk, approver_comments, status) VALUES (" . $insertId . ", " . $row['employee_pk'] . ", '', 'Pending')";
			if($conn->query($sql) === TRUE){
				header('Location: ../pages/dash.php');
			}
		} else {
			echo $conn->error;
			header('Location: ../pages/signup.php?m=connection');
		}
	} else {
		echo $conn->error;
		header('Location: ../pages/signup.php?m=connection');
	}
} else {
	header('Location: ../pages/signup.php?m=missing');
}