<?php

function solution($string1, $string2) {
    if (strlen($string1) < strlen($string2)) {
        throw new Exception('String 1 must be longer then String 2');
    }

    $temp = "";

    foreach (mb_str_split($string2) as $indexChar2 => $charString2) {
        foreach (mb_str_split($string1) as $indexChar1 => $charString1) {
            if ($charString2 == $charString1) {
                $temp .= $charString2;
                $string1 = substr_replace($string1, "", $indexChar1, 1);
                break;
            }
        }
    }

    return $temp == $string2;
}
