<?php
require_once 'core/init.php';

if(Session::exists('home')){
    echo Session::flash('home');
}

//echo Session::get(Config::get('session/session_name'));

$user = new User();
if($user->isLoggedIn()){
?>
<p>Hello <?php echo $user->data()->name;  ?></p>

<ul>
    <li><a href="logout.php">Log Out</a></li>  
	<li><a href="changepassword.php">Change Password</a></li> 
    <li><a href="update.php">Update Information</a></li>
    <li><a href="profile.php">Your Profile</a> </li>
    <li><a href="question.php">Any Thing for Vote</a> </li>
</ul>
<?php
if($user->hasPermissions('admin'))
{
echo '<p>You are an admin</p>';
}
}
else
{
    echo "<p>You need to<a href='login.php'> login </a> or <a href='register.php'> register</a></p>";
}