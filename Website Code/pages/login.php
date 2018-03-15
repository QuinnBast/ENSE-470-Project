<?php
session_start();

include("../php/includes.php");

if(isset($_GET['m'])){
	if($_GET['m'] == "invalid"){
		include("../pages/warnings/credentials.html");
	} else if($_GET['m'] == "missing"){
		include("../pages/warnings/missing.html");
	}
}

include("../php/nav.php");
include("../html/forms/login.html");