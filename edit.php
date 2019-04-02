<!DOCTYPE html>
<html>
<head>
    <title></title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="http://localhost:8000/PHP/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://localhost:8000/PHP/css/alamin.css">
</head>
<body>

<?php
include_once("Config.php");


if(isset($_POST['update']))
{
    $Name=$_POST['Name'];
    $Email=$_POST['Email'];
    $Password=md5($_POST['Password']);
    $ID=$_POST['ID'];

    $result=mysqli_query($con,"UPDATE Student SET Name='$Name', Email='$Email', Password='$Password' WHERE ID=$ID");

    if($result)
    {
        header("Location: Student.php");
    }else{
?>
        <Script>
            window.alert("Update Error");
        </Script>
<?php
    }

}

$ID = $_GET[id];
$result=mysqli_query($con,"SELECT * FROM Student WHERE ID=$ID");
while ($res=mysqli_fetch_array($result)) {
    $name=$res[Name];
    $email=$res[Email];
    $password=$res[Password];

    $id=$res[ID];
}


?>
<center>
    <form action="edit.php" method="POST">

        <div class="bg-info mt-2">
            <br>

            <table class="text-right">
                <tr>
                    <th>
                        Name:
                    <td><input type="text"  name="Name" value="<?php echo $name; ?>"/></td>
                    </th>
                </tr>

                <tr>
                    <th>
                        Email:
                    <td><input type="email"  name="Email" value="<?php echo $email; ?>"/></td>
                    </th>
                </tr>

                <tr>
                    <th>
                        Password:
                    <td><input type="password"  name="Password" value="<?php echo md5($password); ?>"/></td>
                    </th>
                </tr>
                <tr>
                    <th>

                    <td><input type="hidden"  name="ID" value="<?php echo $id; ?>"/></td>
                    </th>
                </tr>
                <tr>
                    <th>

                    <td><input type="submit" name="update" value="update"/></td>
                    </th>
                </tr>




            </table>
            <br>


        </div>


    </form>
</center>


<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="http://localhost:8000/PHP/js/jquery-3.3.1.slim.min.js"></script>
<script src="http://localhost:8000/PHP/js/popper.min.js"></script>
<script src="http://localhost:8000/PHP/js/bootstrap.min.js"></script>


</body>
</html>