<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    $conn = new mysqli('localhost', 'root', '', '4e_2_zad_raporty');
    if(!empty($_POST['typ']) && !empty($_POST['nazwa']) && !empty($_POST['cena'])){
        $typ = $_POST['typ'];
        $nazwa = $_POST['nazwa'];
        $cena = $_POST['cena'];
    
        $sql = "INSERT INTO podzespoly (typy_id, nazwa, cena)
        VALUES ($typ, '$nazwa', $cena);";
        $result = $conn -> query($sql);
        echo "podzespol $nazwa zostal dodany";
    }
    else{
        echo 'ktorys z pol nie zostalo wypelnione';
    }
    ?>
</body>
</html>