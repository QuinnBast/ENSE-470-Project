<div class="container">
<div class="container" style="padding-top: 30px;">
<?php
session_start();
include "database/dbConnect.php";

if($_SESSION['role'] === "Approver"){

	$sql = "SELECT * FROM PendingRequests WHERE approver_id = " . $_SESSION['employee_id'];
	$row = $conn->query($sql);
	
	?>
	<h2>Require Action</h2>
		<?php
	
	if($row->num_rows > 0){		
	?>
	<table class="table table-border">
	<tr>
		<th>Request Id</th>
		<th>Status</th>
		<th>Submitted By</th>
		<th>Software Requested</th>
		<th>Date Submitted</th>
		<th></th>
	</tr>
	<?php
		while($data = $row->fetch_assoc()){
			echo '<tr>';
			echo '<td>'.$data['request_id'].'</td>';
			echo '<td>Pending</td>';
			echo '<td>'.$data['employee_requesting'].'</td>';
			echo '<td>'.$data['software_name'].'</td>';
			echo '<td>'.date('l, F j, Y g:ia', strtotime($data['created_on'])).'</td>';
			echo '<td style="padding:0"><a href="/pages/requestInfo.php?id='.$data['request_id'].'" class="btn btn-primary" role="button" style="margin:0">View</a></td>';
			echo '</tr>';
		}
	} else {
		 echo '<div class="container">No Pending Requests.</div>';
	 }
	echo '</table>';
	
}
	
	$sql = "SELECT * FROM PendingRequests WHERE employee_requesting_pk = " . $_SESSION['employee_id'];
	$row = $conn->query($sql);
	
	?>
	<h2>My Pending Requests</h2>
		<?php
	
	if($row->num_rows > 0){		
	?>
	<table class="table table-border">
	<tr>
		<th>Request Id</th>
		<th>Status</th>
		<th>Software Requested</th>
		<th>Current Approver</th>
		<th>Date Submitted</th>
		<th></th>
	</tr>
	<?php
		while($data = $row->fetch_assoc()){
			echo '<tr>';
			echo '<td>'.$data['request_id'].'</td>';
			echo '<td>Pending</td>';
			echo '<td>'.$data['software_name'].'</td>';
			echo '<td>'.$data['approver'].'</td>';
			echo '<td>'.date('l, F j, Y g:ia', strtotime($data['created_on'])).'</td>';
			echo '<td style="padding:0"><a href="/pages/requestInfo.php?id='.$data['request_id'].'" class="btn btn-primary" role="button" style="margin:0">View</a></td>';
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
	<table class="table table-border">
		<tr>
			<th>Request Id</th>
			<th>Status</th>
			<th>Software Name</th>
			<th>Date Opened</th>
			<th>Date Closed</th>
			<th></th>
		</tr>
	<?php
		while($data = $row->fetch_assoc()){
			echo '<tr>';
			echo '<td>'.$data['request_id'].'</td>';
			if($data['status'] === "Approved"){
				echo '<td class="bg-success">'.$data['status'].'</td>';
			} else {
				echo '<td class="bg-danger">'.$data['status'].'</td>';
			}
			echo '<td>'.$data['software_name'].'</td>';
			echo '<td>'.$data['created_on'].'</td>';
			echo '<td>'.$data['modified_on'].'</td>';
			echo '<td style="padding:0"><a href="/pages/requestInfo.php?id='.$data['request_id'].'" class="btn btn-primary" role="button" style="margin:0">View</a></td>';
			echo '</tr>';
		}
	} else {
		echo '<div class="container">No Completed Requests.</div>';
	}
	echo '</table>';
	echo '</div></div>';