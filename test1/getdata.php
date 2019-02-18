<?php
include 'koneksi.php';
$text = $_POST['input'];
$data = explode(" ", $text);
$textarray = [];
$umur = 0;
// $preg = preg_replace('/[0-9]/',' ', $text);
// print_r($preg);die();
#print_r(array($data,count($data)));
for ($i=0;$i<count($data);$i++){
    if (!is_numeric($data[$i])){
        //not number
        $textarray[] = $data[$i];
    } else {
        $umur = $data[$i];
        #unset($data[$i]);
    }
}

// for ($k=0;$k<count($textarray);$k++){
//     if (strtoupper($textarray[$k]!='TAHUN')){
//         unset($textarray, $k);
//     }
// }


print_r($textarray);
$nama = $textarray[0].' '.$textarray[1];
$kota = $textarray[count($textarray)-1];
echo $nama;
echo $kota;
if (empty($nama)||empty($umur)||empty($kota)){
	echo "Data Harus di isi";
} else {
    $queryResult = $connect->query("insert into user(id,nama,umur,kota) value (null,'$nama','$umur','$kota')");
	echo "Upload Success";
}
?>