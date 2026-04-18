<?php
ob_start();
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

// Set timezone
date_default_timezone_set("Asia/Kolkata");  // Change to your timezone

// Database connection
$con = mysqli_connect("localhost", "root", "", "geet");

// Check connection
if (!$con) {
    die("❌ Failed to connect to database: " . mysqli_connect_error());
}
?>
