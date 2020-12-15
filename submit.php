 <?php
 error_reporting(0);

     session_start();
   $user=  $_SESSION['user'];
 


  $iid=$_GET['id'];
  

 ?>


 <?php
    session_start();
    include('connect.php');
    if(!isset($_SESSION['user']))
        header("location: login.php");
?>








<html>


 <head>
   <style>

*
{
    margin:0;
    padding:0;
    box-sizing: border-box;
}



body{
    z-index: 1;
    font-family: "Segoe UI",Arial,sans-serif;
    text-align: center;
  width:100%;
    height:80vh;
    background:linear-gradient(57deg, #00C6A7 , #1E4D92);
   

    font-size: 15px;

    
    margin: 0 auto;
    font-weight: 500;
}




   </style>


 </head>

<body>

 <form   name="myloginForm"  method="post" action=""   enctype="multipart/form-data">

    <label text-align="center"><h3> Enter your answer <h3></label>
  <textarea rows="5" cols="50" name="ans"
                            ></textarea> 


  <input type="submit" name="submit" value="submit">




</form>

</body>
</html>


<?php 
 session_start();
   $user=  $_SESSION['user'];




 $id=$_GET['id'];

if ($_POST['submit'] == 'submit'){ 
//Collect POST values 

$answer=$_POST['ans'];



$link = mysqli_connect('localhost', 'root', ''); 


 
//Select database 
$db = mysqli_select_db($link,'qora'); 
if(!$db) { 
die("Unable to select database"); }
else
//echo "succefull";
//Create query (if you have a Logins table the you can select login id and password from there)
//$qry='SELECT * FROM Logins WHERE login_id = "ABC" AND password = "12345"'; 
//Execute query 
//$result=mysql_query($qry); 
//Check whether the query was successful or not 









$query = "UPDATE quans SET answer='$answer',answeredby='$user'
WHERE id='$id'";


//Execute query 
$results = mysqli_query($link,$query); 
 
//Check if query executes successfully 
if($results == FALSE) 
echo "fail"; 
else 
{
echo 'Data inserted successfully! ';
header('location:index.php');

}










}
?>



