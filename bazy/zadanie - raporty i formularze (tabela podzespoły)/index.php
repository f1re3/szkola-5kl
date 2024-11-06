<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>daniel sobiech</h1>
    <h2>podzespoly</h2>
    <?php
        $conn = new mysqli('localhost','root','','4e_2_zad_raporty');
        $sql = "SELECT nazwa, cena
        FROM podzespoly;";
        $result = $conn -> query($sql);
        $podzespoly = $result -> fetch_all(1);
        echo '<ul>';
        foreach($podzespoly as $podzespol){
            echo "<li><b>{$podzespol['nazwa']} {$podzespol['cena']}</b></li>";
        }
        echo '</ul>';
    ?>
    <h2>najwyzsza cena podzespolow</h2>
    <?php
        $sql = "SELECT typy_id, MAX(cena)
        FROM podzespoly
        GROUP BY typy_id;";
        $result = $conn -> query($sql);
        $ceny = $result -> fetch_all(1);
        foreach($ceny as $cena){
            echo "{$cena['typy_id']} {$cena['MAX(cena)']} <br>";
        }
    ?>
    <h2>lista z podzespolami i kategoriami</h2>
    <ol>
    <?php
        $sql = "SELECT podzespoly.nazwa, typy.kategoria 
        FROM podzespoly
            INNER JOIN typy ON podzespoly.typy_id = typy.id;";
        $result = $conn -> query($sql);
        $kategorie = $result -> fetch_all(1);
        foreach($kategorie as $kategoria){
            echo "<li>{$kategoria['nazwa']} {$kategoria['kategoria']}</li>";
        }
    ?>
    </ol>

    <form action="dodawanie.php" method="post">
        <label for="typ">kategoria</label>
        <select name="typ" id="typ">
            <?php
            $sql = "SELECT id, kategoria
            FROM typy;";
            $result = $conn -> query($sql);
            $kategorie = $result -> fetch_all(1);
            foreach($kategorie as $kategoria){
                echo "<option value='{$kategoria['id']}'>{$kategoria['kategoria']}</option>";
            }
            ?>
        </select><br>
        <label for="nazwa">nazwa</label>
        <input type="text" name="nazwa" id="nazwa"><br>
        <label for="cena">cena</label>
        <input type="text" name="cena" id="cena"><br>
        <button>wyslij</button>
    </form>
    <form action="usuwanie.php" method="post">
        <label for="podzespoly">wybierz ktory usunac</label>
        <select name="podzespoly" id="podzesloly">
            <?php
                $sql = "SELECT podzespoly.id, typy.kategoria, podzespoly.cena, podzespoly.nazwa
                FROM podzespoly
                    INNER JOIN typy ON podzespoly.typy_id=typy.id;";

                $result = $conn -> query($sql);
                $lista = $result -> fetch_all(1);
                foreach($lista as $pod){
                    echo "<option value='{$pod['id']}'>{$pod['id']} {$pod['kategoria']} {$pod['cena']} {$pod['nazwa']}</option>";
                }
            ?>
        </select>
        <button>usun</button>
    </form>
</body>
</html>