<?php
    // get variables
    $var1 = $_POST['sVar1'];
	$file = 'autosplitter.txt';
	// Open the file to get existing content
	$current = file_get_contents($file);
	// Append a new person to the file
	$current .= $var1;
	// Write the contents back to the file
	file_put_contents($file, $current . PHP_EOL);
?>