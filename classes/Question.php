<?php
/**
 * Created by PhpStorm.
 * User: 1084760
 * Date: 14/10/14
 * Time: 16:10
 */

class Question {

    protected $_ques;


    public function __construct($user = null) {

    $this->_db = DB::getInstances();

    }

    public function find($id = null){

        if($id){
            $data = $this->_db->get('question', );
        }

    }

    public function getQues(){
        return $this->_ques;
    }

    public function setQues($ques){
        $this->_ques = $ques;
    }




}