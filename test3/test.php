<?php
$connect = new mysqli('localhost', 'root', '', 'test3');
$data = $connect->query('select * from departemen');
print_r($data->num_rows);
?>