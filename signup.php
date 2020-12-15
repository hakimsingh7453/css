<?php
    session_start();
    
    if( isset($_SESSION['user'])){
        header("Location: profile.php");
    }
    include('connect.php');

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
    <body id="_6">
        <!-- navigation bar -->
        <a href="index.php">
            <div id="log">
            <div id="ntro">Questionaire</div>
            </div>
        </a>
        <ul id="nav-bar">
            <a href="index.php"><li>Home</li></a>
            <a href="categories.php"><li>Categories</li></a>
           
            <a href="ask.php"><li>Ask Question</li></a>
            <?php 
                if(! isset($_SESSION['user'])){
            ?>
            <a href="login.php"><li>Log In</li></a>
            <a href="signup.php"><li id="home">Sign Up</li></a>
            <?php
                }
                else{
            ?>
            <a href="profile.php"><li>Hi, <?php echo $_SESSION["user"]; ?></li></a>
            <a href="logout.php"><li>Log Out</li></a>
            <?php
                }
            ?>
        </ul>
        
        <!-- content -->
        <div id="content">
            <div id="sf">
                <center>
                    <div class="heading">
                       <div id="ntro">Questionaire</div></h1>
             
                    </div>

                    <form action="<?php echo htmlspecialchars( $_SERVER["PHP_SELF"] ); ?>" method="post" enctype="multipart/form-data">
                        <input name="username" id="user" type="text" title="This will be your parmanent Id." placeholder="Create a Unique Username" required>
                        <input name="password" id="key" type="password" title="Password must contain at least 8 characters including alphabets,numbers, and symbols." placeholder="Create a Strong Password" required>
                        <i class="material-icons" id="lock">lock</i>
                        <i class="material-icons" id="person">person</i>
                        <input name="name" id="name" type="text" title="Although, you will be called by your name only" placeholder="Enter your Full Name" required>
                        <input name="email" id="mailbox" type="email" title="Your Email id is in safe hands." placeholder="Enter your Email Id" required>
                        <i class="material-icons" id="email">mail</i>
                        <i class="material-icons" id="iden">perm_identity</i>

                        <div id="button-block">
                            <center>
                                <div class="buttons"><input name="submit" type="submit" value="Create An Account" class="up-in"></div>
                                <div class="buttons" id="new"><a href="login.php"><input type="button" value="Already a member : Log In" class="up-in" id="tolog"></a></div>
                            </center>
                        </div>
                    </form>
                </center>
            </div>
            
            <div id="ta">
                <h1>Thank You For Registering With Us.</h1>
            </div>
            
        </div>
        
        <?php
        
            if( isset( $_POST["submit"] ) )
            {

                function valid($data){
                    $data=trim(stripslashes(htmlspecialchars($data)));
                    return $data;
                }

                $username = valid( $_POST["username"] );
                $password = valid( $_POST["password"] );
                $password = password_hash($password, PASSWORD_DEFAULT);
                $name = valid( $_POST["name"] );
                $email = valid( $_POST["email"] );

                $query = "INSERT INTO users values( NULL, '$username', '$password', '$name', '$email', CURRENT_TIMESTAMP ) ";
                if(mysqli_error($conn)){
                    echo "something went wrong";
                }
//                echo $query;
                else if( mysqli_query( $conn, $query) ){
                    echo "<style>#sf{display: none;} #ta{display:block;}</style>";
                }
                else{
//                    echo mysqli_error($conn);
                    echo "Username already exists";
                }
                mysqli_close($conn);
            }
        
        ?>
        
        <!-- Footer -->
        <div id="footer" style="padding:20px;">
            2019 questionaire
        </div>
        
        <!-- Sripts -->
      
        
    </body>
    
</html>