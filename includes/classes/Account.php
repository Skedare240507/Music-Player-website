<?php
class Account {

	private $con;
	private $errorArray;

	public function __construct($con) {
		$this->con = $con;
		$this->errorArray = array();
	}

	// LOGIN FUNCTION
	public function login($un, $pw) {
		$pw = md5($pw);

		$query = mysqli_query($this->con, "SELECT * FROM users WHERE username='$un' AND password='$pw'");

		if(mysqli_num_rows($query) == 1) {
			return true;
		} else {
			array_push($this->errorArray, Constants::$loginFailed);
			return false;
		}
	}

	// REGISTER FUNCTION
	public function register($un, $fn, $ln, $em, $em2, $pw, $pw2) {

		$this->validateUsername($un);
		$this->validateFirstName($fn);
		$this->validateLastName($ln);
		$this->validateEmails($em, $em2);
		$this->validatePasswords($pw, $pw2);
	
		if (empty($this->errorArray)) {
			// Insert into DB if no errors
			return $this->insertUserDetails($un, $fn, $ln, $em, $pw);
		} else {
			return false;
		}
	}
	

	// GET ERROR FOR UI
	public function getError($error) {
		if(!in_array($error, $this->errorArray)) {
			return "";
		}
		return "<span class='errorMessage'>$error</span>";
	}

	// INSERT USER TO DATABASE
	private function insertUserDetails($username, $firstName, $lastName, $email, $password) {
		$encryptedPw = password_hash($password, PASSWORD_BCRYPT);
		$profilePic = "assets/images/profile-pics/default.png";
		$date = date("Y-m-d H:i:s");
	
		$query = mysqli_query($this->con, 
			"INSERT INTO users 
			(username, firstName, lastName, email, password, signUpDate, profilePic, is_verified) 
			VALUES 
			('$username', '$firstName', '$lastName', '$email', '$encryptedPw', '$date', '$profilePic', 0)");
	
		return $query;
	}
	

	// VALIDATIONS

	private function validateUsername($un) {
		if(strlen($un) > 25 || strlen($un) < 5) {
			array_push($this->errorArray, Constants::$usernameCharacters);
			return;
		}

		$checkUsernameQuery = mysqli_query($this->con, "SELECT username FROM users WHERE username='$un'");
		if(mysqli_num_rows($checkUsernameQuery) != 0) {
			array_push($this->errorArray, Constants::$usernameTaken);
		}
	}

	private function validateFirstName($fn) {
		if(strlen($fn) > 25 || strlen($fn) < 2) {
			array_push($this->errorArray, Constants::$firstNameCharacters);
		}
	}

	private function validateLastName($ln) {
		if(strlen($ln) > 25 || strlen($ln) < 2) {
			array_push($this->errorArray, Constants::$lastNameCharacters);
		}
	}

	private function validateEmails($em, $em2) {
		if($em != $em2) {
			array_push($this->errorArray, Constants::$emailsDoNotMatch);
			return;
		}

		if(!filter_var($em, FILTER_VALIDATE_EMAIL)) {
			array_push($this->errorArray, Constants::$emailInvalid);
			return;
		}

		$checkEmailQuery = mysqli_query($this->con, "SELECT email FROM users WHERE email='$em'");
		if(mysqli_num_rows($checkEmailQuery) != 0) {
			array_push($this->errorArray, Constants::$emailTaken);
		}
	}

	private function validatePasswords($pw, $pw2) {
		if($pw != $pw2) {
			array_push($this->errorArray, Constants::$passwordsDoNoMatch);
			return;
		}

		// Strong password: min 8, at least one uppercase, lowercase, digit, and special char
		if(!preg_match('/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^a-zA-Z0-9]).{8,}$/', $pw)) {
			array_push($this->errorArray, Constants::$passwordWeak);
		}
	}
}
?>
