<?php
/**
 * Created by PhpStorm.
 * User: 1084760
 * Date: 14/10/14
 * Time: 16:16
 */

require_once 'core/init.php';

$user = new User();

$question = new Question();

if(!$user->isLoggedIn()){
    Redirect::to('index.php');
}
?>

<p>Your Vote</p>
<?php

foreach($question->show() as $number => $question_for_vote){
    echo $question_for_vote->quest . "<br>";

}
?>

