# Lua Metatable Unexpected Behavior with nil Check

This repository demonstrates a subtle bug related to Lua metatables and nil checks within functions.  The issue arises when a function explicitly checks for `nil` values but encounters unexpected behavior when a metatable's `__index` metamethod is involved.

The `bug.lua` file contains the problematic code. The `bugSolution.lua` file demonstrates a solution to this issue.

## Bug Description
A function that explicitly handles `nil` arguments may still fail if the argument is a table with a metatable that defines `__index`.  The `__index` metamethod might return a value even though the key doesn't exist, causing unexpected behavior or errors.