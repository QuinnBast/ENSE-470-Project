<?php
$servername = "localhost";
$username = "root";
$password = "gyMV[rz%'wy:J;gg#HB&e83h}HGwt5{4";
$dbname = "ENSE470";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}