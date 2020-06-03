<?php
    session_start();

    if (!isset($_SESSION['username'])){
       $_SEESSION['msg'] = "You must log in first";
        header('location: login.php');
    }

    if (issrt($_GET['logout'])){
        session_destory();
        unset($_SEEESSION['uernsme']);
        header('location: login.php');
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Home Page</title>

    <Link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="header"
        <h2>Home Page<h2>
    </div>

    <div class="content">

        <!-- logged in user informatiin -->
        <?php if (isset($_SESSION['username'])) : ?>
            <p>Welcome <strong><?php echo $_SESSION['username']; ?></strong></p>
            <p><a href="index.php?logout='1'" style="color: red;">Logout</a></p>
        <?php endif ?>
    </div>
</body>
</html>