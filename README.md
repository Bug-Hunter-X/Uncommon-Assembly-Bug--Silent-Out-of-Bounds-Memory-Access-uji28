# Uncommon Assembly Bug: Silent Out-of-Bounds Memory Access

This repository demonstrates a subtle bug in assembly code that can lead to unexpected crashes due to out-of-bounds memory access. The bug is silent in that it doesn't always trigger, depending on the values of registers at runtime.

## The Bug

The `bug.asm` file contains assembly code with a `mov` instruction that calculates a memory address.  The calculation itself may produce an address that is outside the allowed memory region, which would cause a crash.

## The Solution

The `bugSolution.asm` file provides a corrected version with added checks to prevent accessing invalid memory addresses.