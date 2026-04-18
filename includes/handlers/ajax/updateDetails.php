<?php
include("includes/config.php");  // Database connection
include("includes/classes/User.php");  // User class to handle updates

session_start();

if (!isset($_SESSION['userLoggedIn'])) {
    echo "Not logged in";
    exit();
}

$userLoggedIn = new User($con, $_SESSION['userLoggedIn']); // Create user object

if (isset($_POST['action'])) {
    $action = $_POST['action'];

    if ($action == "updateUsername" && isset($_POST['username'])) {
        $username = $_POST['username'];

        if (!empty($username)) {
            if ($userLoggedIn->updateUsername($username)) {
                echo "Username updated successfully!";
            } else {
                echo "Username update failed!";
            }
        } else {
            echo "Username cannot be empty!";
        }
    }

    elseif ($action == "updateName" && isset($_POST['firstName']) && isset($_POST['lastName'])) {
        $firstName = $_POST['firstName'];
        $lastName = $_POST['lastName'];

        if (!empty($firstName) && !empty($lastName)) {
            if ($userLoggedIn->updateName($firstName, $lastName)) {
                echo "Name updated successfully!";
            } else {
                echo "Name update failed!";
            }
        } else {
            echo "Fields cannot be empty!";
        }
    }

    elseif ($action == "updateEmail" && isset($_POST['email'])) {
        $email = $_POST['email'];

        if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
            if ($userLoggedIn->updateEmail($email)) {
                echo "Email updated successfully!";
            } else {
                echo "Email update failed!";
            }
        } else {
            echo "Invalid email format!";
        }
    }

    elseif ($action == "updatePassword" && isset($_POST['oldPassword']) && isset($_POST['newPassword1']) && isset($_POST['newPassword2'])) {
        $oldPassword = $_POST['oldPassword'];
        $newPassword1 = $_POST['newPassword1'];
        $newPassword2 = $_POST['newPassword2'];

        if ($newPassword1 !== $newPassword2) {
            echo "New passwords do not match!";
        } elseif (strlen($newPassword1) < 6) {
            echo "Password must be at least 6 characters!";
        } else {
            if ($userLoggedIn->updatePassword($oldPassword, $newPassword1)) {
                echo "Password updated successfully!";
            } else {
                echo "Password update failed!";
            }
        }
    }
}
?>
