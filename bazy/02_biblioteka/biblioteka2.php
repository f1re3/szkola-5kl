<?php
    $conn = new mysqli('localhost','root','','4e_2_biblioteka');
    
    $sql = "SELECT id, nazwa 
    FROM wydawnictwa;";
    $result = $conn->query($sql);
    $wydawnictwa = $result ->fetch_all(1);

    
    // $conn -> close();
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="" method="post">
        <!-- <label><input type='radio' name='wydawnictwo' value='1'></label><br> -->
        <?php
        foreach ($wydawnictwa as $key){
            echo "<label><input type='radio' name='wydawnictwo' value='{$key['id']}'>{$key['nazwa']}</label><br>";
        }
        ?>
        <button>wyslij</button>
    </form>
    <h3>ksiazki wydawnictwa</h3>
    <?php
    if(!empty($_POST["wydawnictwo"])){
        $wydaw = $_POST["wydawnictwo"];
        $sql = "SELECT tytul 
        FROM ksiazki
        WHERE id_wydawnictwo = $wydaw;";

        $result = $conn->query($sql);
        $titles = $result -> fetch_all(1);

        echo "<ul>";
        foreach ($titles as $title){
            echo "<li>{$title['tytul']}</li>";
        }
        echo "</ul>";
    }
    ?>
</body>
</html>