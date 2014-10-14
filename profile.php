<?php
/**
 * Created by PhpStorm.
 * User: 1084760
 * Date: 14/10/14
 * Time: 16:16
 */

require_once 'core/init.php';

$user = new User();

if(!$user->isLoggedIn()){
    Redirect::to('index.php');
}
?>

<p>Your Profile</p>
<p>Your Name : <?php echo $user->data()->name; ?></p>
<p>Your UserName : <?php echo $user->data()->username; ?></p>
<br>
<p><a href="index.php">Go to Index Page</a></p>

