<?php
// Start session only if it's not already started
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

// Correct path to config.php
require_once __DIR__ . "/../config.php";
require_once __DIR__ . "/../classes/Account.php";
require_once __DIR__ . "/../classes/Constants.php";

// Load PHPMailer properly
require_once __DIR__ . "/../../vendor/autoload.php";

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

// Function to sanitize input
function sanitizeFormPassword($inputText) {
    return strip_tags($inputText);
}

function sanitizeFormUsername($inputText) {
    return str_replace(" ", "", strip_tags($inputText));
}

function sanitizeFormString($inputText) {
    return ucfirst(strtolower(str_replace(" ", "", strip_tags($inputText))));
}

if (isset($_POST['registerButton'])) {
    $username = sanitizeFormUsername($_POST['username']);
    $firstName = sanitizeFormString($_POST['firstName']);
    $lastName = sanitizeFormString($_POST['lastName']);
    $email = sanitizeFormString($_POST['email']);
    $email2 = sanitizeFormString($_POST['email2']);
    $password = sanitizeFormPassword($_POST['password']);
    $password2 = sanitizeFormPassword($_POST['password2']);

    // Check if emails match
    if ($email !== $email2) {
        die("❌ Emails do not match!");
    }

    // Call register method (should prevent duplicates internally)
    $wasSuccessful = $account->register($username, $firstName, $lastName, $email, $email2, $password, $password2);

    if ($wasSuccessful == true) {
        // Generate OTP and store data
        $otp = rand(100000, 999999);
        $_SESSION['otp'] = $otp;
        $_SESSION['register_data'] = compact('username', 'firstName', 'lastName', 'email', 'password');

        // Send OTP via email
        $mail = new PHPMailer(true);
        try {
            $mail->isSMTP();
            $mail->Host = 'smtp.gmail.com';
            $mail->SMTPAuth = true;
            $mail->Username = 'kedaresahil70@gmail.com';
            $mail->Password = 'lqme zzkx uwba fvhl';
            $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
            $mail->Port = 587;

            $mail->setFrom('kedaresahil70@gmail.com', 'Music Streaming');
            $mail->addAddress($email);
            $mail->Subject = "Your OTP Code for verification";
            $mail->Body = "Your OTP for registration is: $otp";

            $mail->send();
            header("Location: verify-otp.php");
            exit();
        } catch (Exception $e) {
            die("❌ OTP Email could not be sent. Error: {$mail->ErrorInfo}");
        }
    }
}
?>
