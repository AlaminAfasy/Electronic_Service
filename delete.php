<?php
include_once("Config.php");
$ID = $_GET[id];
$result=mysqli_query($con,"DELETE FROM Student WHERE ID=$ID");


header("Location: Student.php");




?>