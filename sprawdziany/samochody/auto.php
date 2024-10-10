<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="auto.css">
    <title>Komis Samochodowy</title>
</head>
<body>
    <header>
        <h1>SAMOCHODY</h1>
    </header>
    <main>
        <section id="left">
            <h2>Wykaz samochodów</h2>
            <ul>
                <?php
                $conn = new mysqli('localhost', 'root', '', '4e_2_komis');
                $sql = 'SELECT id, marka, model
                FROM samochody;';

                $result = $conn -> query($sql);
                while ($row = $result -> fetch_assoc()){
                    $id = $row['id'];
                    $marka = $row['marka'];
                    $model = $row['model'];
                    echo '<li>'."$id $marka $model".'</li>';
                }
                ?>
            </ul>
            <h2>Zamówienia</h2>
            <ul>
                <?php
                $sql = 'SELECT Samochody_id, Klient
                FROM zamowienia;';

                $result = $conn -> query($sql);
                while ($row = $result -> fetch_assoc()){
                    $id = $row['Samochody_id'];
                    $klient = $row['Klient'];
                    echo '<li>'."$id $klient".'</li>';
                }
                ?>
            </ul>
        </section>
        <section id="right">
            <h2>Pełne dane: Fiat</h2>
            <?php
            $sql = 'SELECT * FROM samochody
            WHERE marka = "Fiat";';

            $result = $conn -> query($sql);
            while ($row = $result -> fetch_assoc()){
                $id = $row['id'];
                $marka = $row['marka'];
                $model = $row['model'];
                $rocznik = $row['rocznik'];
                $kolor = $row['kolor'];
                $stan = $row['stan'];
                echo "$id/$marka/$model/$rocznik/$kolor/$stan <br>";
            }
            ?>
        </section>
    </main>
    <footer>
        <table>
            <tr>
                <td><a href="kwerendy.txt">Kwerendy</a></td>
                <td>Autor: 0000000000</td>
                <td><img src="pliki/komis/auto.png" alt="komis samochodowy"></td>
            </tr>
        </table>
    </footer>
</body>
</html>