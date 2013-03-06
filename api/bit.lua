-------------------------------------------------------------------------------
-- ##Bit API
-- The [bit API](http://computercraft.info/wiki/Bit_%28API%29) is for manipulating
-- numbers using bitwise binary operations.
-- @module bit

-------------------------------------------------------------------------------
-- Shifts a `number` left by a specified `number` of bits
-- @function [parent=#bit] blshift
-- @param #number n the `number` to be manipulated
-- @param #number bits the `number` of bits to shift `n`
-- @return #number the value of `n` shifted left by bits bits, which is equivalent to `n×2^bits`

-------------------------------------------------------------------------------
-- Shifts a `number` right by a specified `number` of bits
-- @function [parent=#bit] brshift
-- @param #number n the `number` to be manipulated
-- @param #number bits the `number` of bits to shift `n`
-- @return #number the value of `n` shifted right by bits bits, which is equivalent to `n÷2^bits`

-------------------------------------------------------------------------------
-- Shifts a `number` right by a specified `number` of bits (zero fill >>>)
-- @function [parent=#bit] blogic_rshift
-- @param #number n the `number` to be manipulated
-- @param #number bits the `number` of bits to shift `n`
-- @return #number the value of `n` shifted right by bits bits, which is equivalent to `n÷2^bits`

-------------------------------------------------------------------------------
-- Computes the bitwise exclusive OR of two numbers
-- @function [parent=#bit] bxor
-- @param #number m the `number` to XOR'ed
-- @param #number n the `number` to XOR'ed
-- @return #number the value of `m XOR n`

-------------------------------------------------------------------------------
-- Computes the bitwise inclusive OR of two numbers
-- @function [parent=#bit] bor
-- @param #number m the `number` to OR'ed
-- @param #number n the `number` to OR'ed
-- @return #number the value of `m OR n`

-------------------------------------------------------------------------------
-- Computes the bitwise AND of two numbers
-- @function [parent=#bit] band
-- @param #number m the `number` to AND'ed
-- @param #number n the `number` to AND'ed
-- @return #number the value of `m AND n`

-------------------------------------------------------------------------------
-- Computes the bitwise NOT of a number, taken in the domain and range of
-- 32-bit unsigned integers
-- @function [parent=#bit] bnot
-- @param #number n the `number` to AND'ed
-- @return #number the value of `NOT n`

return nil