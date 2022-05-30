<?php
session_start();
if(!isset($_SESSION['email'])){
    header("Location: logowanie.php");
}
$polaczenie = mysqli_connect("127.0.0.1", "root", "", "TopMovies");
$email = $_SESSION['email']['email'];
$wybieranieuserasql = "SELECT id,imie,nazwisko,email,isadmin from users WHERE email= '$email'";
$wynik = mysqli_query($polaczenie, $wybieranieuserasql);
$profil = mysqli_fetch_assoc($wynik);

if(isset($_POST['zmiendane'])){
    $noweimie = $_POST['noweimie'];
    $nowenazwisko = $_POST['nowenazwisko'];
    $nowymail = $_POST['nowyemail'];
    $obecnymail = $_SESSION['email']['email'];

    $zmianasql = " UPDATE users SET imie='$noweimie', nazwisko='$nowenazwisko', email='$nowymail' WHERE email='$obecnymail'";
    $zmianacart = "UPDATE cart SET user = '$nowymail' WHERE user='$obecnymail'";
    $polaczenie->query($zmianasql);
    $polaczenie->query($zmianacart);
    header("Location: logowanie.php");

}

?>

<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title> Mój profil </title>
    <link rel="stylesheet" href="profil.css">
    <link rel='stylesheet' href='https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css'>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="functions.js"></script>
</head>
<body>
<div class="nawigacyjny">
    <a onclick="Wyloguj()"> <i class="fi fi-rr-sign-out-alt"></i> Wyloguj</a>
    <a onclick="Koszyk()"><i class="fi fi-rr-shopping-cart"></i> Koszyk</a>
    <p onClick="MainPage()"> <i class="fi fi-rr-home"></i> Strona Główna </p>
    <span id="alert" onclick="powiadomienie('')">  </span>
</div>
<div class="bodyprofilu">
<form action="profil.php" method="post" class="formularzzmiany">
        <label for="noweimie" class="sr-only">Imię</label>
    <input type="text" class="form-control" id="noweimie" name="noweimie" disabled value="<?php echo $profil['imie']?>"> <br>
        <label for="nowenazwisko" class="sr-only">Nazwisko</label>
    <input type="text" class="form-control" id="nowenazwisko" name="nowenazwisko" disabled value="<?php echo $profil['nazwisko']?>"> <br>
        <label for="nowyemail" class="sr-only">E-mail:</label>
    <input type="text" class="form-control" id="nowyemail" name="nowyemail" disabled value="<?php echo $profil['email']?>"> <br>
        <button type='button' onclick="Zmiendane()" class="zmiendanebutt"> <i class="fi fi-rr-refresh"></i> Zmień dane</button>
    <input id="zmiendanebutton" type="submit" name="zmiendane" value="Zaaktualizuj dane!" class="zaaktualizujdanebutt" disabled>
    <input type="submit" name="usunkonto" onclick="return confirm('Czy napewno chcesz usunąć konto? Tej operacji nie można cofnąć')"class="usunkontobutt" value="USUŃ KONTO">

</form>

</div>
</body>

</html>