<?php
/**
 * Created by PhpStorm.
 * User: dung.vuong
 * Date: 7/9/2015
 * Time: 3:46 PM
 */
namespace core;

class CrArrayUtil
{

    /**
     * @param array $arr
     * @return true if $arr is an associative array
     */
    public static function isAssocArray(array $arr)
    {
        foreach ($arr as $k => $v) {
            if (is_int($k)) {
                return false;
            }
        }
        return true;
    }
}