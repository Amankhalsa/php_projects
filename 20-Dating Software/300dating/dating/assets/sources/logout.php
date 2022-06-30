<?php
if (isset($_SESSION['user'])) {
    unset($_SESSION['user']);
}

if (isset($_SESSION['new_user'])) {
    unset($_SESSION['new_user']);
}

$domain = $_SERVER["SERVER_NAME"];
header('Location: http://'.$domain);