<html>
<head>
<title>Rest Web Services</title>
</head>
<body>
<?php
if (isset ($_POST['nim'])) {
$url = 'http://localhost/tugas5REST-master/restmhsw2.php';
$data = "<mahasiswa>
<nim>" . $_POST['nim'] . "</nim>
<nama>" . $_POST['nama'] ."</nama>
<prodi>" . $_POST['prodi'] . "</prodi>
</mahasiswa>";
echo "datanya ".$data;
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
$response = curl_exec($ch);
echo "response ".$response;

curl_close($ch);
}
?>
<a href="restmhsw.php">Lihat Data Mahasiswa</a>
<form method="POST" action="tambah.php">
<table>
<tr>
<td>NIM</td>
<td><input type="text" name="nim" id="nim"></td>
</tr>
<tr>
<td>Nama</td>
<td><input type="text" name="nama" id="nama"></td>
</tr>
<tr>
<td>Prodi</td>
<td><input type="text" name="prodi" id="prodi"></td>
</tr>
<tr>
<tr>
<td><input type="submit" name="submit" id="submit" value="Tambah"></td>
<td></td>
</tr>
</table>
</form>
</body>
</html>
