<?php
session_start();

include("../php/includes.php");

if(isset($_GET['m'])){
	if($_GET['m'] == "invalid"){
		include("../pages/warnings/credentials.html");
	} else if($_GET['m'] == "missing"){
		include("../pages/warnings/missing.html");
	} else if($_GET['m'] == "connection"){
		include("../pages/warnings/connection.html");
	} else if($_GET['m'] == "duplicate"){
		include("../pages/warnings/duplicate.html");
	} else if($_GET['m'] == "passwords"){
		include("../pages/warnings/passwords.html");
	}
}

include("../php/nav.php");
include("../html/forms/signup.html");