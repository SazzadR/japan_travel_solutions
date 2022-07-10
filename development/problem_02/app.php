<?php

function solution($input) {
    if (!is_int($input)) {
        throw new Exception('Input should be a valid integer');
    }

    if (!($input > 0)) {
        throw new Exception('Number should be greater then 0');
    }

    $numbers = array_filter(range(0, ($input - 1)), function($number) {
        if ($number % 3 == 0 || $number % 5 == 0) {
            return $number;
        }
    });

    return array_sum($numbers);
}
