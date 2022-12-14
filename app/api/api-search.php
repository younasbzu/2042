<?php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');

/*$data = json_decode(file_get_contents("php://input"), true);
$search_value = $data['search'];*/

$search_value = isset($_GET['search']) ? $_GET['search'] : die();

include "config.php";

$sql = "SELECT * FROM students WHERE name LIKE '%{$search_value}%'";

$result = $conn->query($sql) or die("SQL Query Failed.");

if($result->num_rows > 0 ){
	
	$output =$result->fetch_all(MYSQLI_ASSOC);
	echo json_encode($output);

}else{

 echo json_encode(array('message' => 'No Search Found.', 'status' => false));

}  

?>
