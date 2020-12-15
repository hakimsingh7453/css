<?php
    session_start();
    include('connect.php');
    if(!isset($_SESSION['user']))
        header("location: login.php");
?>

<!DOCTYPE html>
<html>
    <head>
        <title> Questionaire</title>
        <link type="text/css" rel="stylesheet" href="css/style.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="css/material.css">
        <link type="text/css" rel="stylesheet" href="fonts/font.css">
     
    </head>
    <body id="ask">
        <!-- navigation bar -->
        <a href="index.php">
            <div id="log">
                <div id="ntro">Questionaire</div>
            </div>
        </a>
        <ul id="nav-bar">
            <a href="index.php"><li>Home</li></a>
            <a href="categories.php"><li>Categories</li></a>
     
            <a href="ask.php"><li id="home">Ask Question</li></a>
            <a href="profile.php"><li>Hi, <?php echo $_SESSION["user"]; ?></li></a>
            <a href="logout.php"><li>Log Out</li></a>
        </ul>
        
        <!-- content -->
        <div id="content">
            <div id="sf">
                <center>
                    <div class="heading ask">
                    <div id="ntro">Questionaire</div></h1>
                
                    </div>

                    <form action="<?php echo htmlspecialchars( $_SERVER["PHP_SELF"] ); ?>" method="post" enctype="multipart/form-data">

                        <input name="question" type="text" title="Your Question..." placeholder="Ask Your questions" id="question">

                        <select name="cat">
                            <option valus="Category">Category</option>
                            <option value="Algorithms">Algorithms</option>
                      
                            <option value="Database Management">DBMS</option>
                              <option value="Architecture">Architecture</option>
                             <option value="Theory of computation">Theory of computation</option>
                           
                            <option value="Software Engineering">SE</option>
                            <option value="Other">other</option>
                        </select>
                        <input name="submit" type="submit" class="up-in" id="ask_submit">
                    </form>
                </center>
            </div>
        </div>
        
        <div id="ask-ta">
            <h1>Thank You.<br>Stay tunned for updates.</h1>
        </div>
        
        <?php
        
            if( isset( $_POST["submit"] ) )
            {

                $question =  $_POST["question"] ;
                
                $no =  $_POST["cat"];
                $question = addslashes($question);
                $q = "SELECT * FROM quans WHERE question = '$question'";
                $result = mysqli_query($conn,$q);
                if(mysqli_error($conn))
                    echo "error";
                else if( $no == "Category"){
                    echo "error";
                }
                else if( mysqli_num_rows($result) == 0 ){
                    $query = "INSERT INTO quans VALUES(NULL, '$question', NULL,'".$_SESSION['user']."',NULL)";
                    $query1 = "INSERT INTO quacat SELECT q.id, c.name FROM quans as q, category as c WHERE q.question = '".$question."' AND c.name = '".$_POST['cat']."'";
                    mysqli_query( $conn, $query);
                    if(mysqli_query( $conn, $query1)){
                        echo " your question is posted successfully";
                    }
                    else{
                        echo "";
                    }
                }
                else{
                    echo "question was asked already";
                }
                
                mysqli_close($conn);
            }
        
        ?>
        
        <!-- Footer -->
        <div id="footer" style="padding:30px;">
            Questionaire
        </div>
        
     
        
    </body>
    
</html>