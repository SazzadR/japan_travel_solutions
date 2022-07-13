<?php

declare(strict_types=1);

use PHPUnit\Framework\TestCase;

final class TestSolution extends TestCase
{
    public function testFirstStringCanBeTurnedIntoSecondString(): void
    {
        $this->assertTrue(solution('jupiyuipiter', 'jupiter'));
        $this->assertTrue(solution('abba', 'aba'));
        $this->assertFalse(solution('xyz', 'abc'));
    }

    public function testFirstStringShouldBeLongerThenSecond(): void
    {
        $this->expectExceptionMessage('String 1 must be longer then String 2');

        $this->assertTrue(solution('jupiter', 'jupiyuipiter'));

    }
}
