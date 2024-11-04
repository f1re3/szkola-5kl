<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Biblioteka</title>
</head>
<body>
    <header>
        <h1>Biblioteka w Książkowicach Małych</h1>
    </header>
    <main>
        <div class="left">
            <h4>Dodaj czytelnika</h4>
            <form method="post">
                <label for="firstname">imie</label>
                <input type="text" name="firstname" id="firstname"><br>
                <label for="surname">nazwisko</label>
                <input type="text" name="surname" id="surname"><br>
                <label for="symbol">symbol</label>
                <input type="number" name="symbol" id="symbol"><br>
                <button>AKCEPTUJ</button>
            </form>
            <?php
                $conn = new mysqli('localhost','root','','4e_2_test_biblioteka');
                // $symbol = $_POST['symbol'];

                if(!empty($_POST['firstname']) && !empty($_POST['surname'])){
                    $firstname = $_POST['firstname'];
                    $surname = $_POST['surname'];
                    $kod = $_POST['symbol'];
                    echo "Dodano czytelnika $firstname $surname";

                    $sql = "INSERT INTO czytelnicy (imie, nazwisko, kod)
                    VALUES ('$firstname', '$surname', $kod);";
                    $result = $conn -> query($sql);
                }
            ?>
        </div>
        <div class="mid">
            <img src="pliki/biblioteka.png" alt="biblioteka">
            <h6>ul. Czytelników &nbsp; 15; Książkowice Małe</h6>
            <p><a href="biuro@bib.pl">Czy masz jakieś uwagi?</a></p>
        </div>
        <div class="right">
            <h4>Nasi czytelnicy:</h4>
            <ol>
                <?php
                    $sql = "SELECT imie, nazwisko
                    FROM czytelnicy
                    ORDER BY nazwisko Asc;";
                    $result = $conn ->query($sql);
                    $czytelnicy = $result -> fetch_all(1);

                    foreach($czytelnicy as $czytelnik){
                        echo "<li>{$czytelnik['imie']} {$czytelnik['nazwisko']}</li>";
                    }

                    $conn -> close();
                ?>
            </ol>
        </div>
    </main>
    <footer>
        Projekt witryny: 00000000000
    </footer>
</body>
</html>