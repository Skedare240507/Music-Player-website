<div id="mySidenav" class="sidenav">
<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>


<nav class="navBar">
<!-- Logo
<span role="link" tabindex="0" onclick="openPage('index.php')" class="logo">
<img src="assets/images/icons/logo.png" alt="Logo">
</span> -->


<!-- Navigation Links -->
<ul class="sidebarMenu">
<li><a href="javascript:void(0)" onclick="openPage('browse.php')">🏠 Home</a></li>
<li><a href="javascript:void(0)" onclick="openPage('search.php')">🔍 Search</a></li>
<li><a href="javascript:void(0)" onclick="openPage('yourMusic.php')">📂 Your Playlists</a></li>
<li><a href="javascript:void(0)" onclick="openPage('contact.php')">📞 Contact Us</a></li>


<!-- Top Albums Dropdown -->
<li class="dropdown">
<a href="javascript:void(0)" class="dropdownToggle">🎵 Top Albums ▼</a>
<ul class="dropdownMenu">
<?php
$sidebarAlbumQuery = mysqli_query($con, "SELECT * FROM albums ORDER BY RAND() LIMIT 5");
while ($row = mysqli_fetch_array($sidebarAlbumQuery)) {
echo "<li>
                        <a href='javascript:void(0)' onclick=\"openPage('album.php?id=" . $row['id'] . "')\">
                            <img src='" . $row['artworkPath'] . "' alt='" . $row['title'] . "' class='albumArt'>
                            " . $row['title'] . "
                        </a>
                      </li>";
}
?>
</ul>
</li>


<!-- Top Artists Dropdown -->
<li class="dropdown">
<a href="javascript:void(0)" class="dropdownToggle">🎤 Top Artists ▼</a>
<ul class="dropdownMenu">
<?php
$artistQuery = mysqli_query($con, "SELECT * FROM artists ORDER BY RAND() LIMIT 5");
while ($row = mysqli_fetch_array($artistQuery)) {
echo "<li><a href='javascript:void(0)' onclick=\"openPage('artist.php?id=" . $row['id'] . "')\">" . $row['name'] . "</a></li>";
}
?>
</ul>
</li>
</ul>


<!-- User Info -->
<div class="group">
<div class="navItem">
<span role="link" tabindex="0" onclick="openPage('settings.php')" class="navItemLink">
⚙️ <?php echo $userLoggedIn->getFirstAndLastName(); ?>
</span>


</div>
</div>
</nav>
</div>


<!-- Sidebar Toggle Button -->
<span id="menuButton" class="menuButton" onclick="openNav()">☰</span>


<script>
// Open Sidebar
function openNav() {
document.getElementById("mySidenav").style.width = "250px";
}


// Close Sidebar
function closeNav() {
document.getElementById("mySidenav").style.width = "0";
}


// Dropdown Functionality
document.querySelectorAll('.dropdownToggle').forEach(item => {
item.addEventListener('click', function () {
let dropdown = this.nextElementSibling;
dropdown.style.display = dropdown.style.display === "block" ? "none" : "block";
});
});


</script>