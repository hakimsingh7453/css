<?php
    session_start();
    if(! isset($_SESSION['user']))
        header("Location: login.php");
?>
<!DOCTYPE html>
<html>
    <head>
        <title> Questionaire </title>
        <link type="text/css" rel="stylesheet" href="css/style.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="css/material.css">
      
        <link type="text/css" rel="stylesheet" href="fonts/font.css">
    </head>
    <body id="pro">
        <!-- navigation bar -->
        <a href="index.php">
            <div id="log">
               <div id="ntro"> Questionaire </div>
            </div>
        </a>
        <ul id="nav-bar">
            <a href="index.php"><li>Home</li></a>
            <a href="categories.php"><li>Categories</li></a>
           
            <a href="ask.php"><li>Ask Question</li></a>
            <a href="profile.php"><li id="home">Hi, <?php echo $_SESSION["user"]; ?></li></a>
            <a href="logout.php"><li>Log Out</li></a>
        </ul>
        
        <!-- content -->
        <div id="content">
        <center>
            <h1 id="hea"><?php echo "Welcome ".$_SESSION["user"]; ?></h1>
            <div class="clearfix">
                <div id="hea-det">
                    <p id="first">N</p><p class="tit">ame: </p>
                    <p class="det"><?php echo $_SESSION["name"]; ?></p><br>
                    <p id="first">E</p><p class="tit">mail: </p>
                    <p class="det"><?php echo $_SESSION["email"]; ?></p><br>
                    <p id="first">J</p><p class="tit">oin Date: </p>
                    <p class="det"><?php echo $_SESSION["date"]; ?></p>
                </div>
                <div id="pic"></div>
            </div>
        </center>
        </div>
    
        <!-- Footer -->


<center>
                        <?php
                                  include('connect.php');
                                    $user=$_SESSION["user"];
                            $qu = "SELECT q.question, q.answer,q.id, q.askedby, q.answeredby from quans as q, quacat as r, category as c where q.id=r.id and r.category=c.name and q.askedby='$user'   ORDER BY q.id DESC";
                            $re = mysqli_query($conn,$qu);
                            while($da = mysqli_fetch_assoc($re)){
                        ?>
                        <div id="qa-block">
                            <div class="question">
                                <div id="Q">Q.</div>
                                <?php echo $da['question']."<small id='sml'>Asked By: @".$da['askedby']."</small>"; ?>
                            </div>
                            <div class="answer">
                                <?php 
                                    if($da["answer"]){
                                        $nul=0;
                                        echo $da["answer"]."<br><small>Answered By: @".$da['answeredby']."</small>";
                                    }
                                    else{
                                        $nul=1;
                                        echo "<em>*** Not Answered Yet ***</em>";
                                    }
                                ?>
                             

                                       <h3 ><?php echo "<a href='submit.php?id=". $da['id']. "' > <div class='btn btn-primary btn-small'> submit your answer </div> </a> ";        ?>   </h3>
                                   


                                
                            </div>
                        </div>
                        <?php ; } ?>
                    </center>









        <div id="footer">
        
        </div>
        
    </body>
    
</html>