<?php
    $conn = new mysqli('localhost','root','','4e_2_biblioteka');
    
    $sql = "SELECT id, imie, nazwisko
    FROM autorzy;";
    $result = $conn->query($sql);
    $autorzy = $result->fetch_all(1);

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
        <label for="autorzy">autorzy</label>
        <select name="autorzy" id="autorzy">
            <!-- <option value="1">imie nazwisko</option> -->
            <?php
            foreach ($autorzy as $autor){
                echo "<option value='{$autor['id']}'>{$autor['imie']} {$autor['nazwisko']}</option>";
            }
            ?>
        </select><br>
        <button>wyslij</button>
    </form>
    <h3>ksiazki autora</h3>
    <?php
    ?>
</body>
</html>