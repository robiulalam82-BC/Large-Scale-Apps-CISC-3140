<?php
   include_once 'script.php';


   $Customer_Id = $_POST['Customer_Id'];
   $Product_ID  = $_POST['Product_ID'];
   $Customer_Name = $_POST['Customer_Name'];
   $Product_Name = $_POST['Product_Name'];

   $sql = "INSERT INTO users (Customer_Id, Product_ID, Customer_Name, Product_Name) VALUES ('Customer_Id','Product_ID','Customer_Name','Product_Name');";
   mysqli_query($conn, $sql);

header("Location:.../index.php?signup=success");

?>