
<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
include("includes/config.php");

if(isset($_POST['loginButton'])) {
    // Debugging: Log input values (REMOVE in production)
    error_log("Login button clicked.");

    // Sanitize input
    $username = trim(htmlspecialchars($_POST['loginUsername']));
    $password = trim($_POST['loginPassword']);

    // Debugging: Check inputs
    error_log("Username: " . $username);

    // Prepare the query
    $query = $con->prepare("SELECT id, password, is_verified FROM users WHERE username=?");
    if (!$query) {
        die("❌ Query preparation failed: " . $con->error);
    }
    
    $query->bind_param("s", $username);
    $query->execute();
    $query->store_result();

    // Debugging: Check query execution
    error_log("Query executed. Rows found: " . $query->num_rows);

    if($query->num_rows == 1) {
        $query->bind_result($userId, $hashedPassword, $isVerified);
        $query->fetch();

        // Debugging: Check stored hash length
        error_log("Stored Hash: " . $hashedPassword);

        if(strlen($hashedPassword) < 50) { // Check if hash is too short
            die("❌ Error: Password hash appears to be truncated. Please reset your password.");
        }

        // Verify password
        if(password_verify($password, $hashedPassword)) {
            if($isVerified) { // Check if user is verified
                $_SESSION['userLoggedIn'] = $username;
                header("Location: index.php");
                exit();
            } else {
                die("❌ Your account is not verified. Check your email for the verification link.");
            }
        } else {
            die("❌ Incorrect password!");
        }
    } else {
        die("❌ Username not found!");
    }

    $query->close();
}
?>
