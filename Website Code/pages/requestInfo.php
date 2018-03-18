<?php
session_start();
include "../php/database/dbConnect.php";
include("../php/includes.php");
include("../php/nav.php");
?>
<div class="container">
<div class="container" style="padding-top: 30px;">

<?php
	$sql = "SELECT * FROM SoftwareRequest WHERE request_id = " . $_GET['id'];
	$Softwarerow = $conn->query($sql);
	$Softwarerow = $Softwarerow->fetch_assoc();
	
	$softwareName = "SELECT * FROM Software WHERE software_id = " . $Softwarerow['software_requesting_pk'];
	$requesterName = "SELECT * FROM Employees WHERE employee_id = " . $Softwarerow['employee_requesting_pk'];
	
	$softwareName = $conn->query($softwareName);
	$softwareName = $softwareName->fetch_assoc();
	
	$requesterName = $conn->query($requesterName);
	$requesterName = $requesterName->fetch_assoc();
	
	
	echo "<div class='container mb-4 border-left'>";
	echo "<b>Request Id: </b>".$Softwarerow['request_id']."</br>";
	echo "<b>Software Requesting: </b>".$softwareName['software_name']."</br>";
	echo "<b>Person Requesting: </b>".$requesterName['employee_first_name']." ".$requesterName['employee_last_name']."</br>";
	echo "<b>Employee Id: </b>".$Softwarerow['employee_requesting_pk']."</br>";
	echo "<b>Date Submitted: </b>".date('l, F j, Y g:ia', strtotime($Softwarerow['created_on']))."</br>";
	echo "<b>Current Status: </b>".$Softwarerow['status']."</br>";
	echo "</div>";
?>

<h2>Action Log</h2>
<table class="table table-border">
<tr>
<th>Date</th>
<th>Action</th>
</tr>
<?php
if(isset($_GET['id'])){
	$sql = "SELECT * FROM ApprovalComments WHERE request_pk = " . $_GET['id'];
	$row = $conn->query($sql);

	if($row->num_rows > 0){		
		while($data = $row->fetch_assoc()){
			echo "<tr>";
			//Get the approver's name
			$sql = "SELECT * FROM Employees WHERE employee_id = " . $data['approver_pk'];
			$approver = $conn->query($sql);
			$approver = $approver->fetch_assoc();
			$approver = $approver['employee_first_name'] . $approver['employee_last_name'];
			
			echo "<td>".date('l, F j, Y g:ia', strtotime($data['created_on']))."</td>";
			
			if($data['approver_comments'] !== ""){
				echo "<td>".$approver . ' said "' . $data['approver_comments'].'"</td></tr>';
				echo "<tr><td>".date('l, F j, Y g:ia', strtotime($data['created_on']))."</td>";
			}
			
			if($data['status'] === "Forward"){
				echo "<td>".$approver . " has forwarded the request</td>";
			} else if($data['status'] === "Approved"){
				echo "<td class='bg-success'>".$approver . " has set the status to " . $data['status']."</td>";
			} else if($data['status'] === "Denied"){
				echo "<td class='bg-danger'>".$approver . " has set the status to " . $data['status']."</td>";
			} else if ($data['status'] === "Pending"){
				echo "<td>Waiting for " . $approver . " to make a decision</td>";
			} else if ($data['status'] === "RequestInfo") {
				echo "<td>".$approver . " has requested more information";
			}
			echo "</tr>";
		}
	}
} else {
	header('Location: /pages/dash.php');
}
?>
</table>

<?php
if($Softwarerow['status'] !== "Approved" && $Softwarerow['status'] !== "Denied"){
	$sql = "SELECT * FROM PendingRequests WHERE request_id = " . $_GET['id'];
	$PendingReq = $conn->query($sql);
	$PendingReq = $PendingReq->fetch_assoc();
	
	if($_SESSION['employee_id'] == $PendingReq['approver_id']){
		
		if($_SESSION['employee_id'] == $Softwarerow['employee_requesting_pk']){
			?>
			<form action="../php/updateRequest.php?id=<?=$_GET['id']?>" method="post">
			<div class="form-group">
				<label for="comment"><b>Add Comment:</b></label>
				<textarea type="comment" class="form-control" id="comment" name="comment"></textarea>
			</div>
			<div class="text-right">
				<input class="btn btn-info" type = "submit" style="margin:0" name="Submit" value="Submit">
			</div>
			</form>
			
			<?php
		} else {
			?>
		<form action="../php/updateRequest.php?id=<?=$_GET['id']?>" method="post">
			<div class="form-group">
				<label for="comment"><b>Add Comment:</b></label>
				<textarea type="comment" class="form-control" id="comment" name="comment"></textarea>
			</div>

			<b>Forward To:</b> <select id="forward" name="forward">
			
		<?php
			$EmployeeSql = "SELECT * FROM Employees ORDER BY employee_first_name";
			$EmployeeResult = $conn->query($EmployeeSql);
			if ($EmployeeResult->num_rows > 0) {
				// output data of each row
				while($row = $EmployeeResult->fetch_assoc()) {
				echo "<option value='" . $row['employee_id'] . "'>" . $row['employee_first_name'] . " " . $row['employee_last_name'] . "</option>";
				}
			}

		?>
			</select>

		<div class="text-right">
			<input class="btn btn-info" type = "submit" style="margin:0" name="Forward" value="Forward">
			<input class="btn btn-warning" type = "submit" style="margin:0" name="RequestInfo" value="Request More Information">
			<input class="btn btn-success" type = "submit" style="margin:0" name="Approve" value="Approve">
			<input class="btn btn-danger" type = "submit" style="margin:0" name="Deny" value="Deny">
		</div>
		</form>
			<?php
		}
	}
}
?>
</div>
</div>