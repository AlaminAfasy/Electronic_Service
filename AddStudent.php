<?php
include_once("Config.php");

if(isset($_POST['Submit']))
{

    $name=$_POST['Name'];
    $email=$_POST['Email'];
    $pass=md5($_POST['Password']);


    $result=mysqli_query($con,"INSERT INTO Student(Name,Email,Password) values('$name','$email','$pass')");

    if($result)
    {
        echo " Insert Successful";

    }else{
        echo "Insert Error";
    }

}
header("Location: Student.php")

?>