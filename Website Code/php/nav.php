<?php
session_start();
if(isset($_SESSION['username']) && !is_null($_SESSION['username']) && isset($_SESSION['role'])){
	?>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="dash.php">HELL Software Eh-proval</a>
			</div>
	<?php
	
	if($_SESSION['role'] === 'Administrator'){
		?>
		<ul class="nav navbar navbar-right">
			<li><a href="/pages/approvers.php">View Approvers</a></li>
			<li><a href="/pages/dash.php">My Approvals</a></li>
			<li><a href="/pages/signup.php">All Approvals</a></li>
			<li><a href="/php/logout.php">Logout</a></li>
		</ul>
		<?php
	} else if ($_SESSION['role'] === 'Approver'){
		?>
		<ul class="nav navbar navbar-right">
			<li><a href="/pages/approvers.php">View Approvers</a></li>
			<li><a href="/pages/dash.php">My Approvals</a></li>
			<li><a href="/pages/signup.php">Submit Request</a></li>
			<li><a href="/php/logout.php">Logout</a></li>
		</ul>
		<?php
	} else {
		?>
		<ul class="nav navbar navbar-right">
			<li><a href="/pages/approvers.php">View Approvers</a></li>
			<li><a href="/pages/dash.php">My Approvals</a></li>
			<li><a href="/pages/signup.php">Submit Request</a></li>
			<li><a href="/php/logout.php">Logout</a></li>
		</ul>
		<?php
	}
} else {
	?>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="login.php">HELL Software Eh-proval</a>
			</div>
	<ul class="nav navbar navbar-right">
		<li><a href="/pages/login.php"><span class="glyphicon glyphicon-log-in">Login</span></a></li>
		<li><a href="/pages/signup.php"><span class="glyphicon glyphicon-user">Signup</span></a></li>
	</ul>
	<?php
}
?>

	</div>
</nav>