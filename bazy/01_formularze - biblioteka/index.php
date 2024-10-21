<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="" method="post" id="formularz">
        <label for="imie">imie:</label>
        <input type="text" id="imie">
        <label for="nazwisko">nazwisko:</label>
        <input type="text" id="nazwisko">
        <label for="rok">rok urodzenia:</label>
        <input type="number" id="rok">
        <button type="submit">dodaj</button>
    </form>
    <?php
        $conn = new mysqli('localhost','root','','4e_2_01_biblioteka');

        $sql = "SELECT imie, nazwisko
        FROM czytelnicy;";
        $result = $conn->query($sql);
        $czytelnicy = $result->fetch_all();
    ?>
    <h3>nasi czytelnicy:</h3>
    <ul>
        <?php
        ?>
    </ul>
</body>
</html>