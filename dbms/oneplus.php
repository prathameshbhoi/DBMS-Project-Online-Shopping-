<?php

session_start();

error_reporting(0);

if(isset($_POST['submit']))
{

    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "project";

    $cid = $_SESSION["cid"];

    $cid1 = $cid-1000;


// Create connection
    $conne = mysqli_connect($servername, $username, $password, $dbname);

    $querya ="INSERT INTO `cart`(`C_ID`, `P_ID`, `P_NAME`, `P_PRICE`) VALUES ('$cid1','E004','SMARTPHONE',33000)" ;

    $resulta = mysqli_query($conne,$querya);

    if($resulta)
    {
        echo 'DATA SUCCESSFULLY INSERTED IN CART.';
        echo 'CLICK HERE TO GO BACK TO HOME PAGE AND CONTINUE SHOPPING!';
    }
    else{
        echo 'Data not inserted';
        echo $cid;
    }

    mysqli_free_result($resulta);
    mysqli_close($conne);

}

?>









<DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>oneplus</title>
    <link rel="stylesheet" href="css.css">
    <link href='https://fonts.googleapis.com/css?family=Sofia' rel='stylesheet'>
  </head>
  <body>
    <div class="header">
      <img class="logo" src="images/Logo2.jpg" alt="logo">
        <p>ProductEasy</p>
    </div>
        <br><br>
        <div class="p_img">
          <center>
              <img src="images/smartphone.jpg" alt="smartphone">
            </center>
        </div>

    <table class="tables" cellspacing="50">
        <tr>
          <th>Description</th>

        </tr>
        <tr>
          <td>Product_ID </td>
          <td>E004</td>
        </tr>
        <tr>
          <td>Product_Name</td>
          <td>Oneplus Smartphone </td>
        </tr>
        <tr>
          <td>Price</td>
          <td>33000</td>
        </tr>
        <tr>
          <td>Manufacturing_Company</td>
          <td>Oneplus Mobiles </td>
        </tr>
        <tr>
          <td>Stock</td>
          <td>  5 </td>
        </tr>
        <tr>
          <td>Rating</td>
          <td>9</td>
        </tr>
    </table>
    <div class="">
      <form action="oneplus.php" class="btn" method="post">
     <center>
       <input type="submit" name="submit" value="Add to Cart"/>
     </center>
      </form>
    </div>



  </body>
</html>
