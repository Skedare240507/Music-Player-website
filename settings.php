<?php

include("includes/includedFiles.php");

?>

<div class="entityInfo">

	<div class="centerSection">
		<div class="userInfo">
			<h1><?php echo $userLoggedIn->getFirstAndLastName(); ?></h1>
		</div>
	</div>
	<h1>
		<center>Settings
	</h1>
	<div class="buttonItems">

		<button class="button" onclick="openPage('updateDetails.php')">USER DETAILS</button>
		<button class="button" onclick="logout()">LOGOUT</button>
		<button id="theme-toggle" class="button">Switch Mode</button>
	</div>

	<script>
		const toggleButton = document.getElementById('theme-toggle');

// Function to set the theme
function setTheme(mode) {
    if (mode === 'dark') {
        document.body.classList.add('dark-mode');
    } else {
        document.body.classList.remove('dark-mode');
    }
    localStorage.setItem('theme', mode);
}

// Event listener for toggle button
toggleButton.addEventListener('click', () => {
    const currentMode = document.body.classList.contains('dark-mode') ? 'light' : 'dark';
    setTheme(currentMode);
});

// Load saved theme on page load
const savedTheme = localStorage.getItem('theme') || 'light';
setTheme(savedTheme);


	</script>