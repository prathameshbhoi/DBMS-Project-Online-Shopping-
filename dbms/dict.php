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

    $querya ="INSERT INTO `cart`(`C_ID`, `P_ID`, `P_NAME`, `P_PRICE`) VALUES ('$cid1','B009','DICTIONARY',400)" ;
    
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






<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Dictionary</title>
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
              <img src="images/dict.jpg" alt="dictionary">
            </center>
        </div>


    <table  class="tables" cellspacing="50">

        <tr>
          <th>Description</th>

        </tr>
        <tr>
          <td>Product_ID </td>
          <td>B009</td>
        </tr>
        <tr>
          <td>Product_Name</td>
          <td>English Dictionary</td>
        </tr>
        <tr>
          <td>Price</td>
          <td>400</td>
        </tr>
        <tr>
          <td>Manufacturing_Company</td>
          <td>Oxford </td>
        </tr>
        <tr>
          <td>Stock</td>
          <td>  2 </td>
        </tr>
        <tr>
          <td>Rating</td>
          <td>10</td>
        </tr>
        

    </table>

    <form action="dict.php" method="post">
      <input type="submit" name="submit" value="Add to Cart"/>
    </form>
    


  </body>
</html>
