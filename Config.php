
<?php
$dbhost="localhost";
$dbuser="root";
$dbpass="root";
$dbname ="Sheba_nin";

$con=mysqli_connect($dbhost,$dbuser,$dbpass,$dbname);

if($con)
{
	echo "Connect Successful";
}else{
	echo "Connention Problem";
}
?>