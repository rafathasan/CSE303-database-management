<?php
require 'dbToTable.php';
require 'connection.php';

$sql = "SELECT U.cuser_name as Name, U.cuser_id as 'User ID', UG.cuser_group_name as 'User Group'
FROM user U
JOIN user_group UG ON UG.cuser_group_id=U.cuser_group_id";
$result = $conn -> query($sql) or die("Fatal Error");
echo dbToTable($result);
 ?>
