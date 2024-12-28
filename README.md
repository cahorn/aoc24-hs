Advent of Code 2024
===================

[Advent of Code](https://adventofcode.com/2024) 2024 in
[Haskell](https://www.haskell.org/)


Dependencies
------------

 * [stack](https://docs.haskellstack.org/en/stable/)
 * [tasty](https://github.com/UnkindPartition/tasty) (test)
 * [ormolu](https://github.com/tweag/ormolu) (style)
 * [hlint](https://github.com/ndmitchell/hlint) (style)


Use
---

To get the answer for a particular day/part solution when applied to the input
in the given file:

    $ stack run DAY PART < INPUTFILE


Test
----

To test all day/part solutions against the respective example input/answer
pairs:

    $ stack test


Style
-----

### Check

Check format with `ormolu` and quality with `hlint`:

    $ scripts/check

### Format

Apply format with `ormolu`:

    $ scripts/format
