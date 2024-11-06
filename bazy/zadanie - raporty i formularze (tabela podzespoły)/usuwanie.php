<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    $conn = new mysqli();
    $id = $_POST['podzespoly'];
    $sql = "DELETE FROM podzespoly
    WHERE id = $id";
    $result = $conn -> query($sql);
    echo "podzespol o id $id zostal usuniety";
    ?>
</body>
</html>