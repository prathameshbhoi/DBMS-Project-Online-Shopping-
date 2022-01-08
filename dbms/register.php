<?php
include 'connection.php';
error_reporting(0);

if(isset($_POST['submit']))
{
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "project";

    $C_NAME = $_POST['C_NAME'];
    $C_ADDRESS = $_POST['C_ADDRESS'];
    $DOB = $_POST['DOB'];
    $GENDER = $_POST['GENDER'];
    $EWALLET = $_POST['EWALLET'];
    $PHONE_NO = $_POST['PHONE_NO'];
    $EMAIL = $_POST['EMAIL'];



// Create connection
    $conn = mysqli_connect($servername, $username, $password, $dbname);

    $query ="INSERT INTO `customer`( `C_NAME`, `C_ADDRESS`, `DOB`, `GENDER`, `E_WALLET`, `PHONE_NO`, `EMAIL`) VALUES ('$C_NAME','$C_ADDRESS','$DOB','$GENDER','$EWALLET','$PHONE_NO','$EMAIL')" ;

    $result = mysqli_query($conn,$query);

    if($result)
    {
        echo 'DATA SUCCESSFULLY INSERTED. WELCOME TO OUR WEBSITE.';
        echo 'CLICK HERE TO GO BACK TO THE LOGIN PAGE AND START SHOPPING!';
    }
    else{
        echo 'Data not inserted';
    }

    mysqli_free_result($result);
    mysqli_close($conn);

}

?>
<style>
 * {
 margin: 0px;
 padding: 0px;
}
body{

     height: 100%;
 /* Center and scale the image nicely */
 background-position: center;
 background-repeat: no-repeat;
 background-size: cover;
 margin-top: 30px;
 font-size: 120%;

}
.reg_img{
  width: 100%;
  position: absolute;
  z-index: -1;
  opacity: 0.7;
}

.input-group {
  margin: 10px 0px 10px 0px;
}
.input-group label {
  display: block;
  text-align: left;
  margin: 3px;
}
.input-group input {
  height: 30px;
  width: 93%;
  padding: 5px 10px;
  font-size: 16px;
  border-radius: 5px;
  border: 1px solid gray;
}

.btn{
  padding: 10px;
  font-size: 15px;
  color: white;
  background: #086972;
  border: solid black;
  border-radius: 34px;
  margin-top: 20px;
  width: 101px;
  height: 50px;
  font-size: 21px;
}
</style>
<!DOCTYPE html>
<html>
    <head>
      <title>Register User</title>
      <link rel="stylesheet" href="css.css">
    </head>

    <body >
      <img class="reg_img" src="images/index.jpg" alt="">

        <form action="register.php" method="post">

          <div class="input-group">
            <label>Name </label>
            <input type="text" name="Nmae" value="">
          </div>

          <div class="input-group">
            <label>Address</label>
            <input type="text" name="C_ADDRESS" value=""/>

          </div>

          <div class="input-group">
            <label>DOB</label>
            <input type="text" name="DOB" value=""/>
          </div>

          <div class="input-group">
            <label>Gemder</label>
            <input type="text" name="GENDER" value=""/>
          </div>

          <div class="input-group">
            <label>E-wallet</label>
            <input type="text" name="EWALLET" value=""/>
          </div>

          <div class="input-group">
            <label>Phone_no</label>
            <input type="text" name="PHONE_NO" value=""/>
          </div>

          <div class="input-group">
            <label>Email</label>
            <input type="text" name="EMAIL" value=""/>
          </div>
          <div class="input-group">
            <center><button type="submit" class="btn" name="submit">Submit</button></center>
          </div>

        </form>






</body>
</html>
