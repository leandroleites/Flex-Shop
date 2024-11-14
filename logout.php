<?php

session_start();

unset($_SESSION["ID"]);

unset($_SESSION["email"]);
unset($_SESSION["firstname"]);
unset($_SESSION["lastname"]);

$BackToMyPage = $_SERVER['HTTP_REFERER'];
if(isset($BackToMyPage)) {
    header('Location: '.$BackToMyPage);
} else {
    header('Location: index.php'); // default page
}
   

?>
