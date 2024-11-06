<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h2>dostepne dania</h2>
    <ol>
    <?php
        $conn = new mysqli('localhost', 'root', '', '4e_2_rap_dania');
        $sql = "SELECT typ, nazwa, cena
        FROM dania;";
        $result = $conn -> query($sql);
        $dania = $result -> fetch_all(1);
        foreach($dania as $danie){
            echo "<li><b>{$danie['typ']} {$danie['nazwa']} {$danie['cena']}</li></b>";
        }
    ?>
    </ol>
    <h2>nasze ceny sa najnizsze</h2>
    
</body>
</html>