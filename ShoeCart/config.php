<?php
    // //this is for the connection
    $conn = new mysqli("localhost","root", "","shoppingcart");

    //check the connection
    if($conn->connect_error)
    {
        die("Connection Failed!".$conn->connect_error);
    }


?>