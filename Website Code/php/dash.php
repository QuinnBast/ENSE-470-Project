<div class="container">
<?php
session_start();
include "database/dbConnect.php";

	$sql = "SELECT * FROM PendingRequests WHERE employee_requesting_pk = " . $_SESSION['employee_id'];
	$row = $conn->query($sql);
	
	?>
	<h2> Pending Requests</h2>
		<?php
	
	if($row->num_rows > 0){		
	?>
	<table class="table-bordered">
	<tr>
		<th>Request Id</th>
		<th>Status</th>
		<th>Software Requested</th>
		<th>Current Approver</th>
	</tr>
	<?php
		while($data = $row->fetch_assoc()){
			echo '<tr>';
			echo '<td>'.$data['request_id'].'</td>';
			echo '<td>Pending</td>';
			echo '<td>'.$data['software_name'].'</td>';
			echo '<td>'.$data['approver'].'</td>';
			echo '</tr>';
		}
	} else {
		 echo '<div class="container">No Pending Requests.</div>';
	 }
	echo '</table>';
	
	$sql = "SELECT * FROM CompletedRequests WHERE employee_requesting_pk = " . $_SESSION['employee_id'];
	$row = $conn->query($sql);
	
	?>
	<h2>Completed Requests</h2>
		<?php
	
	if($row->num_rows > 0){		
	?>
	<table class="table-bordered">
		<tr>
			<th>Request Id</th>
			<th>Status</th>
			<th>Software Requested</th>
			<th>Date Opened</th>
			<th>Date Closed</th>
		</tr>
	<?php
		while($data = $row->fetch_assoc()){
			echo '<tr>';
			echo '<td>'.$data['request_id'].'</td>';
			echo '<td>'.$data['request_id'].'</td>';
			echo '<td>'.$data['software_name'].'</td>';
			echo '<td>'.$data['created_on'].'</td>';
			echo '<td>'.$data['modified_on'].'</td>';
			echo '</tr>';
		}
	} else {
		echo '<div class="container">No Completed Requests.</div>';
	}
	echo '</table>';
	echo '</div>';