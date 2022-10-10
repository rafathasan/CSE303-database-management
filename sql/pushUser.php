<?php
require 'connection.php';

$name = "";
$uname = "";
$psw = "";
$group = "";

if(isset($_GET['name'])&&isset($_GET['uname'])&&isset($_GET['psw'])&&isset($_GET['group'])){
  $name = $_GET['name'];
  $uname = $_GET['uname'];
  $psw = $_GET['psw'];
  $group = $_GET['group'];

  $sql = "SELECT U.cuser_id FROM user U WHERE U.cuser_id=\"".$_GET['uname']."\"";
  $result = $conn -> query($sql) or die("Fatal Error");
  $user="";
  foreach ($result as $row) {
    $user=$row['cuser_id'];
  }
  if($uname != $user){
    $sql = "INSERT INTO user VALUES(\""
      .$uname.
      "\",\""
      .hash('ripemd160',$psw,false).
      "\",\""
      .$name.
      "\",\""
      .$group.
      "\")";
    $result = $conn -> query($sql) or die("Failed");
    echo "Sucess";
  }else{
    echo "Duplicate User Found";
  }

}else {
  echo "Information Not Set";
}

 ?>
