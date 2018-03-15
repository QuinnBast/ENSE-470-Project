<?php

include "database/dbConnect.php";

$emp = $_POST["employee"];
$software = $_POST["software"];

$sql = "INSERT INTO `SoftwareApprovers` (`employee_pk`, `software_pk`) VALUES (" . $emp . ", " . $software . ")";

if($conn->query($sql) === TRUE){
	header("Location: http://142.165.187.167/");
} else {
	echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();