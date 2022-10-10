<?php
require 'dbToOption.php';
require 'connection.php';

$sql = "SELECT UG.cuser_group_id, UG.cuser_group_name
FROM user_group UG";
$result = $conn -> query($sql) or die("Fatal Error");
echo dbToOption($result);
 ?>
