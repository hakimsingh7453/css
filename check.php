
<?php 

if ($_POST['submit'] == 'log'){ 
//Collect POST values 




$link = mysqli_connect('localhost', 'root', ''); 

if($link)
	echo "success";
else
	echo "fail";


 
//Select database 
$db = mysqli_select_db($link,'qora'); 
if(!$db) { 
die("Unable to select database"); }
else
echo "succefull";
//Create query (if you have a Logins table the you can select login id and password from there)
//$qry='SELECT * FROM Logins WHERE login_id = "ABC" AND password = "12345"'; 
//Execute query 
//$result=mysql_query($qry); 
//Check whether the query was successful or not 


$id=$_POST['id'];



echo $id;












}
?>
