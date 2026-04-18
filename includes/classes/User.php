<?php
class User {
    private $con;
    private $username;
    private $id;  // Store user ID for efficient queries

    public function __construct($con, $username) {
        $this->con = $con;
        $this->username = $username;

        // Fetch user ID for better performance
        $query = mysqli_query($this->con, "SELECT id FROM users WHERE username='$this->username'");
        $row = mysqli_fetch_array($query);
        $this->id = $row['id'];
    }

    public function getUsername() {
        return $this->username;
    }

    public function getEmail() {
        $query = mysqli_query($this->con, "SELECT email FROM users WHERE username='$this->username'");
        $row = mysqli_fetch_array($query);
        return $row['email'];
    }

    public function getFirstAndLastName() {
        $query = mysqli_query($this->con, "SELECT CONCAT(firstName, ' ', lastName) AS name FROM users WHERE username='$this->username'");
        $row = mysqli_fetch_array($query);
        return $row['name'];
    }

    // ✅ Securely Update Username
    public function updateUsername($newUsername) {
        $query = $this->con->prepare("UPDATE users SET username=? WHERE id=?");
        $query->bind_param("si", $newUsername, $this->id);
        if ($query->execute()) {
            $this->username = $newUsername;  // Update session username
            return true;
        }
        return false;
    }

    // ✅ Securely Update Name
    public function updateName($firstName, $lastName) {
        $query = $this->con->prepare("UPDATE users SET firstName=?, lastName=? WHERE id=?");
        $query->bind_param("ssi", $firstName, $lastName, $this->id);
        return $query->execute();
    }

    // ✅ Securely Update Email
    public function updateEmail($email) {
        $query = $this->con->prepare("UPDATE users SET email=? WHERE id=?");
        $query->bind_param("si", $email, $this->id);
        return $query->execute();
    }

    // ✅ Securely Update Password
    public function updatePassword($oldPassword, $newPassword) {
        $oldPassword = md5($oldPassword);  // Hash old password
        $newPassword = md5($newPassword);  // Hash new password

        // Check if old password matches
        $checkQuery = $this->con->prepare("SELECT * FROM users WHERE id=? AND password=?");
        $checkQuery->bind_param("is", $this->id, $oldPassword);
        $checkQuery->execute();
        $result = $checkQuery->get_result();

        if ($result->num_rows == 1) {
            $updateQuery = $this->con->prepare("UPDATE users SET password=? WHERE id=?");
            $updateQuery->bind_param("si", $newPassword, $this->id);
            return $updateQuery->execute();
        } else {
            return false; // Incorrect old password
        }
    }
}
?>
