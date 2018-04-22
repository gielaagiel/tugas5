<?php
// Check for the path elements
// Turn off error reporting
error_reporting(0);

// Report runtime errors
error_reporting(E_ERROR | E_WARNING | E_PARSE);

// Report all errors
error_reporting(E_ALL);

// Same as error_reporting(E_ALL);
ini_set("error_reporting", E_ALL);

// Report all errors except E_NOTICE
error_reporting(E_ALL & ~E_NOTICE);

$path = $_SERVER[PATH_INFO];    
if ($path != null) {
$path_params = spliti ("/", $path);
}

if ($_SERVER['REQUEST_METHOD'] == 'GET') {

if ($path_params[1] == null) {

		$con=mysqli_connect("localhost","root","","akademik");
// Check connection
	if (mysqli_connect_errno())
	{
	echo "Failed to connect to MySQL: " . mysqli_connect_error();
	}

	$sql="SELECT nim,nama,prodi FROM mahasiswa";
	echo "<data>";
	if ($result=mysqli_query($con,$sql))
	{
  // Fetch one and one row
  	
	while ($row=mysqli_fetch_row($result))
		{
		echo "<mahasiswa>";
		echo "<nim>".$row[0]."</nim>";
		echo "<nama>".$row[1]."</nama>";
		echo "<prodi>".$row[2]."</prodi>";
		echo "</mahasiswa>";
		}
  // Free result set
	mysqli_free_result($result);
	}
	echo "</data>";
	mysqli_close($con);

}
else if ($_SERVER['REQUEST_METHOD'] == 'GET') {
if ($path_params[1] != null) {
		$con=mysqli_connect("localhost","root","","akademik");
// Check connection
	if (mysqli_connect_errno())
	{
	echo "Failed to connect to MySQL: " . mysqli_connect_error();
	}

	$sql="SELECT nim,nama,prodi FROM mahasiswa where nim = '$path_params[1]'";
	echo "<data>";
	if ($result=mysqli_query($con,$sql))
	{
  // Fetch one and one row
  	
	while ($row=mysqli_fetch_row($result))
		{
		echo "<mahasiswa>";
		echo "<nim>".$row[0]."</nim>";
		echo "<nama>".$row[1]."</nama>";
		echo "<prodi>".$row[2]."</prodi>";
		echo "</mahasiswa>";
		}
  // Free result set
	mysqli_free_result($result);
	}
	echo "</data>";
	mysqli_close($con);

	
}
}
	
}
?> 