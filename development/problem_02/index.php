<?php

require_once 'vendor/autoload.php';

$input = (int)readline('Enter number: ');

try {
    echo 'The sum is: ' . solution($input) . PHP_EOL;
} catch (Exception $exception) {
    echo $exception->getMessage();
}
