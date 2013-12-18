 <?php
include('config.php');
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href="<?php echo $design; ?>/style.css" rel="stylesheet" title="Style" />
        <script src="tabcontent.js" type="text/javascript"></script>
        <title>Fitness Calculator</title>
    </head>
    <body>
    	<div class="header">
        	<a href="<?php echo $url_home; ?>"><img src="<?php echo $design; ?>/images/logo.png" alt="Home" /></a>
	    </div>
        <div class="content">
        
<?php
if(isset($_SESSION['username']))
{
$nb_new_pm = mysql_fetch_array(mysql_query('select count(*) as nb_new_pm from pm where ((user1="'.$_SESSION['userid'].'" and user1read="no") or (user2="'.$_SESSION['userid'].'" and user2read="no")) and id2="1"'));
$nb_new_pm = $nb_new_pm['nb_new_pm'];
?>

<div class="box">
	<div class="box_left">
    	<a href="<?php echo $url_home; ?>">Home</a> |
        <a href="fitnesscalcu.php?id=<?php echo $_SESSION['userid']; ?>">Fitness Calculator</a> | 
        <a href="forums.php?id=<?php echo $_SESSION['userid']; ?>">Forums</a> | 
        <a href="tracking.php?id=<?php echo $_SESSION['userid']; ?>">My Track</a> |
        <a href="profile.php?id=<?php echo $_SESSION['userid']; ?>">Profile</a>
    </div>
	<div class="box_right">
    	<a href="list_pm.php">Your messages(<?php echo $nb_new_pm; ?>)</a> - <a href="profile.php?id=<?php echo $_SESSION['userid']; ?>"><?php echo htmlentities($_SESSION['username'], ENT_QUOTES, 'UTF-8'); ?></a> (<a href="login.php">Logout</a>)
    </div>
	<div class="clean"></div>
    <p>
</div>
 <div class="calculator">
 <center><h1> Your Fitness Calculator</h1><br /><br />
        <ul class="tabs" data-persist="true">
            <li><a href="#view1">Pace</a></li>
            <li><a href="#view2">BMI</a></li>
            <li><a href="#view3">Body Fat</a></li>
        </ul>
        <div class="tabcontents">
            <div id="view1">
                <form action="fitness_calculator.php" method="post"> 
				Hours: <input name="hour" type="number" /><br><br>
				Minute: <input name="minute" type="number" max="60"/><br><br>
                Second: <input name="second" type="number" max="60"/><br><br>
				Distance: <input name="distance" type="number" min="1"/><br><br>
				<input type="submit" />
                </form>  
            </div>
            
            <div id="view2">
				<form action="fitness_calculatorBMI.php" method="post"> 
				Weight: (Pounds)<input name="weight" type="number" /><br><br>
                Height: (Inches)<input name="height" type="number" /><br><br>
				<input type="submit" />
                </form>         
            </div>
            <div id="view3">
                <form action="fitness_calculatorBODYFAT.php" method="post"> 
				Weight:(Pounds)<input name="weight" type="number" /><br><br>
				Waist: <input name="waist" type="number" /><br><br>
                Wrist: <input name="wrist" type="number" /><br><br>
				Hip: <input name="hip" type="number" /><br><br>
                Forearm: <input name="forearm" type="number" /><br><br>
				<input type="submit" />  
                </form>
            </div>
        </div>
    </div>
<?php
}


else
{
?>


<div class="box">
	<div class="box_left">
    	<a href="<?php echo $url_home; ?>">Home</a>
    </div>
	<div class="box_right">
    	
    </div>
	<div class="clean"></div>
</div>

<div class="box_login">
	<form action="login.php" method="post">
		<label for="username">Username</label><input type="text" name="username" id="username" /><br /><br />
		<label for="password">Password</label><input type="password" name="password" id="password" /><br /><br />
        <label for="memorize">Remember</label><input type="checkbox" name="memorize" id="memorize" value="yes" /><br /><br />
        <div class="center">
	        <input type="submit" value="Login" /> <input type="button" onclick="javascript:document.location='signup.php';" value="Sign Up" />
        </div>
    </form>
    
</div>
<?php
}
?>
		</div>
		<div class="foot">&copy All Rights Reserve 2013 | Web Designed by <a href="https://www.facebook.com/groups/528217340587521/">TEAM JMick</a></div>
	</body>
</html>