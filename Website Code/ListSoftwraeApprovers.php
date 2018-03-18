<?php

include "php/database/dbConnect.php";

$SoftwareSql = "SELECT * FROM Software";
$SoftwareResult = $conn->query($SoftwareSql);

?>
<table border="1">
<tr>
	<th>Software Name</th>
	<th>Employee Name</th>
</tr>

<?php

if ($SoftwareResult->num_rows > 0) {
    // output data of each row
    while($row = $SoftwareResult->fetch_assoc()) {
		$tmp = 1;
		echo "<tr>";
		echo "<td>";
		echo "" . $row["software_name"];
		echo "</td>";
		
		//Get each associated employee to that row.
		$EmployeeSql = "SELECT * FROM Employees left join SoftwareApprovers on SoftwareApprovers.employee_pk = Employees.employee_id WHERE SoftwareApprovers.software_pk = " . $row["software_id"];
		$EmployeeResult = $conn->query($EmployeeSql);
		
		if($EmployeeResult->num_rows > 0){
			while($EmpRow = $EmployeeResult->fetch_assoc()){
				if($tmp === 1){
					echo "<td>";
					echo $EmpRow["employee_name_prefix"] . " " . $EmpRow["employee_first_name"] . " " . $EmpRow["employee_middle_name"] . " " . $EmpRow["employee_last_name"];
					echo "</td>";
					echo "</tr>";
				} else {
					echo "<tr>";
					echo "<td>";
					echo "</td>";
					echo "<td>";
					echo $EmpRow["employee_name_prefix"] . " " . $EmpRow["employee_first_name"] . " " . $EmpRow["employee_middle_name"] . " " . $EmpRow["employee_last_name"];
					echo "</td>";
					echo "</tr>";
				}
				$tmp++;
			}
			
		}
        echo "</tr>";
    }
} else {
    echo "0 results";
}

?>
</table>
<?php
$conn->close();