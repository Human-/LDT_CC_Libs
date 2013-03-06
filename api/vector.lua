-------------------------------------------------------------------------------
-- ##Vector API
-- The [vector API](http://computercraft.info/wiki/Vector_%28API%29) provides 
-- methods to create and manipulate vectors.
-- @module vector

-------------------------------------------------------------------------------
-- Creates a `vector`.
-- @function [parent=#vector] new
-- @param #number x `x` value for `vector`.
-- @param #number y `y` value for `vector`.
-- @param #number z `z` value for `vector`.
-- @return #vect a `vector` table.

-------------------------------------------------------------------------------
-- Adds the two `vectors` and returns the resulting `vector`.
-- ###Notes:  
-- >
-- > 1. Can also be used by writing `vectorA + vectorB`.
-- @function [parent=#vect] add
-- @param self the `vector` table.
-- @param #vect vect another `vector`.
-- @return #vect the resulting `vector` table.

-------------------------------------------------------------------------------
-- Subtracts a `vector` from the initial `vector` and returns the resulting `vector`.
-- ###Notes:  
-- >
-- > 1. Can also be used by writing `vectorA - vectorB`.
-- @function [parent=#vect] sub
-- @param self the `vector` table.
-- @param #vect vect another `vector`.
-- @return #vect the resulting `vector` table.

-------------------------------------------------------------------------------
-- Multiplies a `vector` with a scalar and returns the resulting `vector`.
-- ###Notes:  
-- >
-- > 1. Can also be used by writing vectorA * n.
-- @function [parent=#vect] mul
-- @param self the `vector`.
-- @param #number multiplier the scalar.
-- @return #vect the resulting `vector` table.

-------------------------------------------------------------------------------
-- Returns the dot product of two `vectors`.
-- @function [parent=#vect] dot
-- @param self the `vector`.
-- @param #vect vect another `vector`.
-- @return #vect the resulting `vector`.

-------------------------------------------------------------------------------
-- Returns the `vector` from the cross product of the two `vectors`.
-- @function [parent=#vect] cross
-- @param self the `vector`.
-- @param #vect vect another `vector`.
-- @return #vect the resulting `vector`.

-------------------------------------------------------------------------------
-- Returns the `vector's` length.
-- @function [parent=#vect] length
-- @param self the `vector`.
-- @return #number length of the `vector`.

-------------------------------------------------------------------------------
-- Returns a normalized representation of the `vector`.
-- @function [parent=#vect] normalize
-- @param self the `vector`.
-- @return #vect the resulting `vector`.

-------------------------------------------------------------------------------
-- Rounds the `vector` coordinates to the nearest integers and returns the result as a new `vector`.
-- @function [parent=#vect] round
-- @param self the `vector`.
-- @return #vect the resulting `vector`.

-------------------------------------------------------------------------------
-- Returns a `string` representation of the `vector` in the form of `"x,y,z"`.
-- @function [parent=#vect] tostring
-- @param self the `vector`.
-- @return #string `string` representation of the `vector` in the form of `"x,y,z"`.

return nil