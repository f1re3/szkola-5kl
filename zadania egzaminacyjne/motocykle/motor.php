<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styl.css">
    <title>Motocykle</title>
</head>
<body>
    <img src="pliki/motor.png" alt="motocykl">
    <header>
        <h1>Motocykle - moja pasja</h1>
    </header>
    <section>
        <div id="left">
            <h2>Gdzie pojechac?</h2>
            <dl>
                <?php

                $conn = new mysqli('localhost','root','','4e_2_egz_motocykle');
                $sql = "SELECT nazwa, opis, poczatek, zrodlo
                FROM wycieczki
                    INNER JOIN zdjecia ON wycieczki.zdjecia_id = zdjecia.id;";
                $result = $conn -> query($sql);

                
                while ($row = $result -> fetch_assoc()){
                    $nazwa = $row["nazwa"];
                    $poczatek = $row["poczatek"];
                    $zrodlo = $row["zrodlo"];
                    $opis = $row["opis"];
                    echo "<dt>"."$nazwa, rozpoczyna sie w $poczatek"."</dt>";
                    echo "<a>"."zobacz zdjecie $zrodlo"."</a>";
                    echo "<dd>"."$opis"."</dd>";
                }

                ?>
            </dl>
        </div>
        <div id="right">
            <div id="top">
                <h2>Co kupic?</h2>
                <ol>
                    <li>Honda CBR125R</li>
                    <li>Yamaha YBR125</li>
                    <li>Honda VFR800i</li>
                    <li>Honda CBR1100XX</li>
                    <li>BMW R1200GS LC</li>
                </ol>
            </div>
            <div id="bottom">
                <h2>Statystyki</h2>
                <p>Wpisanych wycieczek: 
                <?php

                    $sql = "SELECT COUNT(*) as ilosc
                    FROM wycieczki;";

                    $result = $conn -> query($sql);
                    $row = $result -> fetch_assoc();

                    $ilosc = $row["ilosc"];
                    echo "$ilosc";

                    $conn -> close();
                ?>
                </p>
                <p>Użytkownikow forum: 200</p>
                <p>Przesłanych zdjęć: 1300</p>
            </div>
        </div>
    </section>
    <footer>
        Strone wykonał: 000000000
    </footer>
</body>
</html>