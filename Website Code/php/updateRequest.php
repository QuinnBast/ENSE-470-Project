<?php
session_start();
include "database/dbConnect.php";

if(isset($_POST['Approve'])){
	$sql = "UPDATE SoftwareRequest SET `modified_on`= '" . date("Y-m-d h:i:s") . "', status = 'Approved' WHERE request_id = " . $_GET['id'];
	$conn->query($sql);
	$comment = mysqli_real_escape_string($conn, $_POST['comment']);
	$sql = "UPDATE ApprovalComments SET `modified_on`= '" . date("Y-m-d h:i:s") . "', status = 'Approved', approver_comments = '" . $comment . "' WHERE request_pk = " . $_GET['id'] . " ORDER BY comment_pk desc limit 1";
	$conn->query($sql);
	echo $sql;
} else if (isset($_POST['Deny'])){
	$sql = "UPDATE SoftwareRequest SET `modified_on`= '" . date("Y-m-d h:i:s") . "', status = 'Denied' WHERE request_id = " . $_GET['id'];
	$conn->query($sql);	
	$comment = mysqli_real_escape_string($conn, $_POST['comment']);
	$sql = "UPDATE ApprovalComments SET `modified_on`= '" . date("Y-m-d h:i:s") . "', status = 'Denied', approver_comments = '" . $comment . "' WHERE request_pk = " . $_GET['id'] . " ORDER BY comment_pk desc limit 1";
	$conn->query($sql);
	echo $sql;
} else if(isset($_POST['RequestInfo'])){
	$sql = "UPDATE SoftwareRequest SET `modified_on`= '" . date("Y-m-d h:i:s") . "', status = 'RequestInfo' WHERE request_id = " . $_GET['id'];
	$conn->query($sql);

	//Get the id of the person who submitted the request.
	$sql = "SELECT * FROM SoftwareRequest WHERE request_id = " . $_GET['id'];
	$row = $conn->query($sql);
	$row = $row->fetch_assoc();	
	$comment = mysqli_real_escape_string($conn, $_POST['comment']);
	$sql = "UPDATE ApprovalComments SET `modified_on`= '" . date("Y-m-d h:i:s") . "', status = 'RequestInfo', approver_comments = '" . $comment . "' WHERE request_pk = " . $_GET['id'] . " ORDER BY comment_pk desc limit 1";
	$conn->query($sql);
	
	$sql = "INSERT INTO ApprovalComments (request_pk, approver_pk, approver_comments, status) VALUES (" . $_GET['id'] . ", " . $row['employee_requesting_pk'] . ", '', 'Pending')";
	$conn->query($sql);
	
	echo $sql;
} else if(isset($_POST['Forward'])){
	$sql = "UPDATE SoftwareRequest SET `modified_on`= '" . date("Y-m-d h:i:s") . "', status = 'Forward' WHERE request_id = " . $_GET['id'];
	$conn->query($sql);
	$comment = mysqli_real_escape_string($conn, $_POST['comment']);
	$sql = "UPDATE ApprovalComments SET `modified_on`= '" . date("Y-m-d h:i:s") . "', status = 'Forward', approver_comments = '" . $comment . "' WHERE request_pk = " . $_GET['id'] . " ORDER BY comment_pk desc limit 1";
	$conn->query($sql);
	$sql = "INSERT INTO ApprovalComments (request_pk, approver_pk, approver_comments, status) VALUES (" . $_GET['id'] . ", " . $_POST['forward'] . ", '', 'Pending')";
	$conn->query($sql);
	echo $sql;
} else if(isset($_POST['Submit'])){
	$sql = "UPDATE SoftwareRequest SET `modified_on`= '" . date("Y-m-d h:i:s") . "', status = 'Forward' WHERE request_id = " . $_GET['id'];
	$conn->query($sql);
	$comment = mysqli_real_escape_string($conn, $_POST['comment']);
	$sql = "UPDATE ApprovalComments SET `modified_on`= '" . date("Y-m-d h:i:s") . "', status = 'Forward', approver_comments = '" . $comment . "' WHERE request_pk = " . $_GET['id'] . " ORDER BY comment_pk desc limit 1";
	$conn->query($sql);
	
	//Get the software request
	$sql = "SELECT * FROM SoftwareRequest WHERE request_id = " . $_GET['id'];
	$result = $conn->query($sql);
	$row = $result->fetch_assoc();
	
	//Get the approver for the software.
	$sql = "SELECT * FROM SoftwareApprovers WHERE software_pk = " . $row['software_requesting_pk'];
	$result = $conn->query($sql);
	$row = $result->fetch_assoc();
	
	$sql = "INSERT INTO ApprovalComments (request_pk, approver_pk, approver_comments, status) VALUES (" . $_GET['id'] . ", " . $row['employee_pk'] . ", '', 'Pending')";
	$conn->query($sql);
	echo $sql;
}

header('Location: ../pages/dash.php');