<!DOCTYPE html>
<html>
<body>

<form action = "signup.php" method="POST">
	 <input type= "number" name="Customer_Id" placeholder="Customer_Id">
	 <br>
	 <input type="number" name="Product_ID" placeholder="Product_ID">
	 <br>
	 <input type="text" name="Customer_Name" placeholder="Customer_Name">
	 <br>
	 <input type="text" name="Product_Name" placeholder="Product_Name">
     <br>
     <button type= "Submit" name="Submit"> Sign Up</button>

</form>


<?php

   $sql = "INSERT INTO users (Customer_Id, Product_ID, Customer_Name, Product_Name) VALUES ("1","3","hAJAF","SISTER");";
   mysqli_query($conn, $sql);


?>
</body>
</html>