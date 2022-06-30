<?php
require('../includes/config.php');

// Connect to SQL Server
$mysqli = new mysqli($db_host, $db_username, $db_password,$db_name);

// Check connection
if (mysqli_connect_errno($mysqli)) {
    exit(mysqli_connect_error());
}

$message_id	= $_GET['message_id'];
$service_id	= $_GET['service_id'];
$shortcode	= $_GET['shortcode'];
$keyword	= $_GET['keyword'];
$message	= $_GET['message'];
$sender	= $_GET['sender'];
$operator	= $_GET['operator'];
$country	= $_GET['country'];
$custom	= $_GET['custom'];
$points	= $_GET['points'];
$price	= $_GET['price'];
$currency	= $_GET['currency'];
$data = explode(",", $custom);
$uid = $data[0]; // User id
$credits = $data[1]; // Credits
$mysqli->query("UPDATE users SET credits = credits+'".$credits."' WHERE id = '".$uid."'");		