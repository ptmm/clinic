<?php include('server.php'); ?>
<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login Page</title>

    <Link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" 
integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

</head>
<body>
    
   <div class="header">
        <h2>Login</h2>
    </div>

    <form action"register_db.php">
        <div class="Input-group">
            <label for="username">Username</label>
            <input type"text" name"username">
        </div> 
        <div class="Input-group">
            <label for="Password">Password</label>
            <input type"Password" name"Password">
        <div class="Input-group">
            <button type="submil" name="login_user" class="btn btn-info">Login</button>
        </div> 
         
        
    </from> 


</body>
</html>