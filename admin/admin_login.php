<?php
$servername = "localhost";
$username = "root"; // Change this if your DB username is different
$password = ""; // Change this if your DB has a password
$dbname = "geet"; // Your database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$msg = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $title = $_POST['title'];
    $artist = $_POST['artist'];
    $album = $_POST['album'];
    $genre = $_POST['genre'];
    
    $target_dir = "uploads/";
    $file_name = basename($_FILES["file"]["name"]);
    $target_file = $target_dir . $file_name;
    $fileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));

    // Check file type
    if ($fileType != "mp3" && $fileType != "wav") {
        $msg = "Only MP3 and WAV files are allowed.";
    } else {
        // Move file to uploads folder
        if (move_uploaded_file($_FILES["file"]["tmp_name"], $target_file)) {
            // Insert into database
            $sql = "INSERT INTO Songs (title, artist, album, genre, duration, path, albumOrder, plays) 
                    VALUES ('$title', '$artist', '$album', '$genre', '0:00', '$target_file', 0, 0)";

            if ($conn->query($sql) === TRUE) {
                $msg = "File uploaded and saved successfully!";
            } else {
                $msg = "Error: " . $conn->error;
            }
        } else {
            $msg = "Sorry, there was an error uploading your file.";
        }
    }
}
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upload Music</title>
</head>
<body>
    <h2>Upload a Music File</h2>
    <form action="upload.php" method="post" enctype="multipart/form-data">
        <label>Title:</label>
        <input type="text" name="title" required><br>
        
        <label>Artist ID:</label>
        <input type="number" name="artist" required><br>
        
        <label>Album ID:</label>
        <input type="number" name="album" required><br>
        
        <label>Genre ID:</label>
        <input type="number" name="genre" required><br>

        <label>Choose File:</label>
        <input type="file" name="file" required><br>

        <button type="submit">Upload</button>
    </form>
    <p><?php echo $msg; ?></p>
</body>
</html>
