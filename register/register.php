<?php include('server.php'); ?>
<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Regiter Page</title>

    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" 
    integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

</head>
<body>
    
    <div class="header">
        <h2>Register</h2>
    </div>

    <form action"my_cilnin.php"> 
        <div class="Input-group">
            <label for="username">Username</label>
            <input type="text" name="username">
        </div> 
        <div class="Input-group">
            <label for="Password">Password</label>
            <input type="Password" name"Password">
        </div> 
        <label for="cars">Level</label>
        <select name="cars" id="cars">
        <option value="">--</option>
         <option value="ทันตแพทย์">ทันตแพทย์</option>
         <option value="พนักงาน">พนักงาน</option>
         <option value="ผู้ป่วย">ผู้ป่วย</option>
        </select>
        <div class="Input-group">
            <label for="memb_name">ชื่อสมาชิก</label>
            <input type="text" name="memb_name">
        </div> 
        <div class="Input-group">
            <label for="memb_lastname">นามสกุลสมาชิก</label>
            <input type="text" name="memb_lastname">
        </div> 
        <label for="cars">เพศ</label>
        <select name="cars" id="cars">
        <option value="">--</option>
         <option value="ชาย">ชาย</option>
         <option value="หญิง">หญิง</option>
        </select>
        <div class="Input-group">
            <label for="memb_age">อายุ</label>
            <input type="text" name="memb_age">
        </div> 
        <div class="Input-group">
            <label for="memb_blood">กรุ๊ปเลือด</label>
            <input type="text" name="memb_blood">
        </div> 
        <div class="Input-group">
            <label for="memb_id_card">เลขบัตรประชาชน</label>
            <input type="text" name="memb_id_card">
        </div>
        <div class="Input-group">
            <label for="memb_birth">วันเดือนปีเกิด</label>
            <input type="text" name="memb_birth">
        </div>
        <div class="Input-group">
            <label for="memb_address">ที่อยู่</label>
            <input type="text" name="memb_address">
        </div>
        <div class="Input-group">
            <label for="memb_tel">เบอร์โทรศัพท์</label>
            <input type="text" name="memb_tel">
        </div>
        <div class="Input-group">
            <label for="memb_diseased">โรค</label>
            <input type="text" name="memb_diseased">
        </div>
        <div class="Input-group">
            <label for="memb_drug_allergy">แพ้ยา</label>
            <input type="text" name="memb_drug_allergy">
        </div>
        <div class="Input-group">
            <button type="button" name="reg_user" class="btn btn-info">Rigister</button>
        </div> 
        
    </from>

</body>
</html>