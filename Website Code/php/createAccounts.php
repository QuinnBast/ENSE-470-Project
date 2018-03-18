<?php

include "database/dbConnect.php";

$sql = "SELECT * FROM Employees";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
		$pw = $row['employee_first_name'] . $row['employee_last_name'];
		$pass = hash('sha512', $pw);
		$insert = "INSERT INTO Logins (email, employee_id, first_name, last_name, password, role, username) VALUES ('" . $pw . "', '" . $row['employee_id'] . "', '". $row['employee_first_name'] . "', '". $row['employee_last_name'] . "', '". $pass . "', 'Approver','" . $pw . "');";
		if($conn->query($insert) === TRUE){
			
		} else {
			echo $conn->error;
		}
	}
}
