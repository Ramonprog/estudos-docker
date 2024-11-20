<?php
$message = $_POST['message'];

// Generate a new filename
$files = scandir('./messages');
$num_files = count($files) - 2; // -2 to remove "." and ".." from array
$fileName = "msg-{$num_files}.txt";

// Open the file for writing
$file = fopen("./messages/$fileName", "w");

// Write the message to the file
fwrite($file, $message);

// Close the file
fclose($file);

// Redirect to index.php
header('Location: index.php');
exit; // Ensure no output is sent after the header