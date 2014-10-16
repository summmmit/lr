<?php
/**
 * Created by PhpStorm.
 * User: 1084760
 * Date: 14/10/14
 * Time: 16:10
 */

class Question {

    private $_db;

    public function __construct($user = null) {

    $this->_db = DB::getInstances();

    }

    public function data()
    {
        return $this->_data[0];
    }

    public function show()
    {

            $field = "can_show";
            $user = true;
            $data = $this->_db->get('question', array($field, '=', $user));
            if ($data->count()) {
                return $data->results();
            }
            return false;
    }

    public function showOptions(){
        
    }

}