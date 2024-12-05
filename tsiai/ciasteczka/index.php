<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<?php
// Sprawdzenie, czy ciasteczko 'imie' już istnieje
if (!isset($_COOKIE['imie'])) {
    // Jeśli nie ma ciasteczka, prosimy o imię
    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        $imie = $_POST['imie'];
        // Zapisanie imienia do ciasteczka na 30 dni
        setcookie('imie', $imie, time() + 30*24*60*60, '/');
        // Zapisanie liczby odwiedzin w ciasteczku
        setcookie('odwiedziny', 1, time() + 30*24*60*60, '/');
        echo "Witaj, $imie! Ciasteczko zostało zapisane.";
    } else {
        echo '<form method="post">
                Podaj swoje imię: <input type="text" name="imie" required>
                <input type="submit" value="Zapisz imię">
              </form>';
    }
} else {
    // Jeśli ciasteczko istnieje, wyświetlamy komunikat powitalny
    $imie = $_COOKIE['imie'];
    $odwiedziny = isset($_COOKIE['odwiedziny']) ? $_COOKIE['odwiedziny'] : 0;
    $odwiedziny++;
    // Zapisujemy zaktualizowaną liczbę odwiedzin
    setcookie('odwiedziny', $odwiedziny, time() + 30*24*60*60, '/');
    echo "Witaj ponownie, $imie! Odwiedziłeś tę stronę $odwiedziny razy.";
}
?>

<?php
// Funkcja usuwająca ciasteczka
function usunCiasteczka() {
    setcookie('imie', '', time() - 3600, '/');  // Usunięcie ciasteczka 'imie'
    setcookie('odwiedziny', '', time() - 3600, '/');  // Usunięcie ciasteczka 'odwiedziny'
    echo "Ciasteczka zostały usunięte.";
}

// Sprawdzenie, czy użytkownik chce usunąć ciasteczka
if (isset($_POST['usun'])) {
    usunCiasteczka();
} else {
    // Sprawdzenie, czy ciasteczko 'imie' już istnieje
    if (!isset($_COOKIE['imie'])) {
        // Jeśli nie ma ciasteczka, prosimy o imię
        if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['imie'])) {
            $imie = $_POST['imie'];
            // Zapisanie imienia do ciasteczka na 30 dni
            setcookie('imie', $imie, time() + 30*24*60*60, '/');
            // Zapisanie liczby odwiedzin w ciasteczku
            setcookie('odwiedziny', 1, time() + 30*24*60*60, '/');
            echo "Witaj, $imie! Ciasteczko zostało zapisane.";
        } else {
            echo '<form method="post">
                    Podaj swoje imię: <input type="text" name="imie" required>
                    <input type="submit" value="Zapisz imię">
                  </form>';
        }
    } else {
        // Jeśli ciasteczko istnieje, wyświetlamy komunikat powitalny
        $imie = $_COOKIE['imie'];
        $odwiedziny = isset($_COOKIE['odwiedziny']) ? $_COOKIE['odwiedziny'] : 0;
        $odwiedziny++;
        // Zapisujemy zaktualizowaną liczbę odwiedzin
        setcookie('odwiedziny', $odwiedziny, time() + 30*24*60*60, '/');
        echo "Witaj ponownie, $imie! Odwiedziłeś tę stronę $odwiedziny razy.";
        
        // Formularz do usunięcia ciasteczek
        echo '<form method="post">
                <input type="submit" name="usun" value="Usuń ciasteczka">
              </form>';
    }
}
?>
</body>
</html>

<!-- setcookie($nazwa, $wartosc, $koniec, $sciezka, $domena, $bezpieczne) 
$nazwa ciasteczka
$wartość - wartość przypisana
$koniec - czas wygaśnięcia (wyznaczany zazwyczaj względem czasu aktualnego time()
Jeśli nie został podany ciasteczko istnieje do momentu usunięcia przez użytkownika.
Jeśli podamy czas w przeszłości, ciasteczko zostaje usunięte np.: time()-3600.
$sciezka i $domena - stosowane do określenia adresów, dla których cookie jest ważne
$bezpieczne - true oznacza, że cookie nie będzie wysyłane przez zwykłe połączenie HTT

//ustawienie ciasteczka
<?php 
    // // zapisanie oddania głosu jednorazowego
    // setcookie('oddano_glos', '1');

    // // w przypadku gdy głosować można raz dziennie
    // setcookie('oddano_glos', '1', time()+60*60*24);

?>

//sprawdzenie czy ciasteczko istnieje
<?php 
    // if(isset($_COOKIE['aktywacja']))
    //     echo "Ciasteczko istnieje";
    // else
    //     echo "Brak ciasteczka o nazwie aktywacja";
?> -->