<?php
/**
 * Created by PhpStorm.
 * User: al-amin
 * Date: 2/14/19
 * Time: 11:39 AM
 */
echo "hello";
class admin extends user
{
    var $persons_name;
    var $h;
    function __construct($persons_name,$h) {
    $this->name = $persons_name;
    $this->h=$h;
    }


}

$ad=new admin("alamin","hasan");
echo $ad->persons_name;
echo $ad->h;