<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styl5.css">
    <title>Sierpniowy kalendarz</title>
</head>
<body>
    <header>
        <div class="H1">
            <h1>Organizer: SIERPIEŃ</h1>
        </div>
        <div class="H2">
            <form method="post">
                <label for="wydarzenie">wydarzenie</label>
                <input type="text" id="wydarzenie" name="wydarzenie">
                <button>ok</button>
            </form>
        </div>
        <div class="H3">
            <img src="pliki/logo2.png" alt="sierpien">
        </div>
    </header>
    <main>
        <?php
            $conn = new mysqli('localhost','root','','4e_2_egz_kalendarz');
            
            $wydarzenie = $_POST['wydarzenie'];

            $sql = "UPDATE zadania
            SET wpis = '$wydarzenie'
            WHERE dataZadania = '2020-08-09';";
            $result = $conn -> query($sql);

            $sql = "SELECT dataZadania, wpis
            FROM zadania
            WHERE miesiac = 'sierpien';";
            $result = $conn -> query($sql);
            $kalendarz = $result -> fetch_all(1);

            foreach($kalendarz as $blok){
                echo "<section>".
                "<h5>{$blok['dataZadania']}</h5>".
                "<p>{$blok['wpis']}</p>".
                "</section>";
            }

            $conn -> close();
        ?>
    </main>
    <footer>
        <p>Strone wykonal: 00000000000</p>
    </footer>
</body>
</html>