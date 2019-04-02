<?php
//DELETE FROM `Student` ;
//ALTER TABLE `Student` AUTO_INCREMENT =1;

include_once("Config.php");
$sql = "DELETE FROM `user`";

$result=mysqli_query($con,$sql);

$sql = "ALTER TABLE `Student` AUTO_INCREMENT =1";

$result=mysqli_query($con,$sql);

header("Location: Student.php");


 ?>