<?php

include "database/dbConnect.php";
$SoftwareSql = "SELECT * FROM Software ORDER BY software_name";
$SoftwareResult = $conn->query($SoftwareSql);

?>

<div class="container" style="padding-top: 30px;">
	<div class="container" style="width: 50%; margin-top: 120px">
	<div class="container">
		<h2 class="text-center">Request Software Access</h2>
	</div>
	<form action="../php/submitRequest.php" method="post">
		<div class="form-group">
			<label for="software">Software</label>
			<select id="software" name="software">
			<?php
			if ($SoftwareResult->num_rows > 0) {
				// output data of each row
				while($row = $SoftwareResult->fetch_assoc()) {
					if($row['software_acronym'] != ""){
						echo "<option value='" . $row['software_id'] . "'> (" . $row['software_acronym'] . ") - " . $row['software_name'] . "</option>";
					} else {
						echo "<option value='" . $row['software_id'] . "'>".$row['software_name']."</option>";
					}
				}
			}
			
			?>
			</select>
		</div>
		<div class="form-group">
			<label for="comment">Comments</label>
			<textarea type="comment" class="form-control" id="comment" name="comment"></textarea>
		</div>
		<div class="text-right">
			<button type="reset" class="btn btn-default" value="Reset">Reset</button>
			<button type="submit" class="btn btn-primary">Submit</button>
		</div>
	</form>
	</div>
</div>

<?php