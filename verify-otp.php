<?php
session_start();
include("includes/config.php");

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $enteredOtp = $_POST['otp'];
    $storedOtp = $_SESSION['otp'];
    $email = $_SESSION['register_data']['email'];

    if ($enteredOtp == $storedOtp) {
        // ✅ OTP matched: update `is_verified` to 1
        $query = mysqli_query($con, "UPDATE users SET is_verified = 1 WHERE email = '$email'");

        if ($query) {
            // ✅ Email verified successfully!
            unset($_SESSION['otp']);
            unset($_SESSION['register_data']);
            // Redirect to index.php
            header("Location: index.php");
            exit(); // Ensure no further code is executed after the redirect
        } else {
            echo "❌ Database update failed.";
        }
    } else {
        echo "❌ Invalid OTP!";
    }
}
?>



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Verify OTP</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body, html {
            height: 100%;
            width: 100%;
        }

        #background {
            background-image: url(bg.jpg);
            background-size: cover;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .container {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 300px;
        }

        h2 {
            margin-bottom: 15px;
            color: #333;
        }

        .input-box {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
            text-align: center;
        }

        .btn {
            width: 100%;
            background: #07d159;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
        }

        .btn:hover {
            background: #0056b3;
        }

        .error-message {
            color: red;
            font-size: 14px;
            margin-top: 10px;
        }
    </style>
</head>

<body>
    <div id="background">
        <div class="container">
            <h2>Enter OTP</h2>
            <form action="verify-otp.php" method="POST">
                <input type="text" name="otp" class="input-box" placeholder="Enter OTP" required>
                <button type="submit" name="verifyButton" class="btn">Verify</button>
            </form>
            <?php if (isset($errorMessage)) { ?>
                <p class="error-message"><?php echo $errorMessage; ?></p>
            <?php } ?>
        </div>
    </div>
</body>

</html>
