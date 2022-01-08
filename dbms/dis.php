<?php
include_once('connection.php');
$query = " SELECT * from PRODUCT ";
$result=mysqli_query($conn,$query);
?>

<!DOCTYPE html>
<html>
<head>
<title>PRODUCTS</title>
<link rel="stylesheet" href="css.css">
</head>



<body>
    <table class="tables">
    <tr>
    <th colspan="6"><h2>PRODUCTS AVAILABLE</h2></th>
    </tr>
    <t>
        <th>Product Name</th>
        <th>Manufacturing Company</th>
        <th>Price</th>
        <th> Product_ID </th>
        <th>Stock</th>
        <th>Rating</th>
    </t>
    <?php
        while($rows=mysqli_fetch_assoc($result))
        {
    ?>
        <tr>
            <td><?php echo $rows['P_NAME']; ?></td>
            <td><?php echo $rows['M_COMPANY']; ?></td>
            <td><?php echo $rows['P_PRICE']; ?></td>
            <td><?php echo $rows['P_ID']; ?></td>
            <td><?php echo $rows['STOCK']; ?></td>
            <td><?php echo $rows['RATING']; ?></td>

        </tr>
    <?php
        }
    ?>
    </table>

</body>
</html>