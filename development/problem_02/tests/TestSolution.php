<?php

declare(strict_types=1);

use PHPUnit\Framework\TestCase;

final class TestSolution extends TestCase
{
    public function testSumOfAllMultiples(): void
    {
        $result = solution(100);
        $this->assertEquals($result, 2318);
    }

    public function testInvalidInputType(): void
    {
        $this->expectExceptionMessage('Input should be a valid integer');

        $result = solution('a');
    }

    public function testInputShoudBeGreaterThenZero(): void
    {
        $this->expectExceptionMessage('Number should be greater then 0');

        $result = solution(-1);
    }
}
