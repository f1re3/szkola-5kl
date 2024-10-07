<?php
    $conn = new mysqli('localhost', 'root', '', '4e_2_egz_generowanie');
    $sql = "UPDATE zadania
    SET wpis = 'Wycieczka: Karkonosze'
    WHERE dataZadania = '2020-08-27';"
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styl6.css">
    <title>Document</title>
</head>
<body>
    <header>
        <div id="baner1">
            <h2>MÓJ ORGANIZER</h2>
        </div>
        <div id="baner2">
            <form action="" method="post">
                <label for="wpis">Wpis wydarzenia: </label>
                <input type="text" id="wpis">
                <button>ZAPISZ</button>
            </form>
        </div>
        <div id="baner3">
            <img src="logo2.png" alt="Mój organizer">
        </div>
    </header>
    <main>
        <?php
            $sql ="SELECT dataZadania, miesiąc, wpis
            FROM zadania
            WHERE miesiąc = 'sierpień';";

            $result = $conn -> query($sql);
            while ($row = $result -> fetch_assoc()) {
                $data = $row["dataZadania"];
                $miesiac = $row["miesiąc"];
                $wpis = $row["wpis"];
                echo "<section>"."<h6>$data $miesiac</h6>"."<p>$wpis</p>"."</section>";
            }
        ?>
    </main>
    <footer>
    <?php            
            $sql = "SELECT miesiąc, rok
            FROM zadania
            WHERE dataZadania = '2020-08-01';";

            $result = $conn -> query($sql);
            while ($row = $result -> fetch_assoc()){
                $miesiac = $row["miesiąc"];
                $rok = $row["rok"];
                echo "<h1>"."miesiąc: $miesiac, rok: $rok ".'</h2>';
            }

            $conn  -> close();
        ?>
        <p>Stronę wykonał: 000000000</p>
    </footer>
</body>
</html>