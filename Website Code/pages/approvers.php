<?php
session_start();

include("../php/includes.php");
include("../php/nav.php");

if(isset($_SESSION['username'])){
	include("../php/approvers.php");
} else {
	include("../php/login.php");
}