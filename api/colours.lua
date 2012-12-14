-------------------------------------------------------------------------------
-- RedPower Bundled Cable Colour API
-- The Colours API allows you to utilize Bundled Cables from the RedPower mod, and
-- colours on Advanced Computers and Advanced Monitors.
-- For the non-American English version just replace 'colour' with 'colour' and it
-- will use the other API, colours - which is exactly the same, except in non-American
-- English (e.g. gray is spelt grey and lightGray is spelt lightGrey). 
-- See http://computercraft.info/wiki/Colours_%28API%29 for more info
-- @module colours

-------------------------------------------------------------------------------
-- Combines a set of colours (or sets of colours) into a larger set.
-- @function [parent=#colours] combine
-- @param ... the colour(s) to use. An element of the table colours can also be provided.
-- @return #number the set of combined colours

-------------------------------------------------------------------------------
-- Removes one or more colours (or sets of colours) from an initial set.
-- @function [parent=#colours] subtract
-- @param #number colors the set of colours to remove from.
-- @param ... colour(s) to remove from the set. An element of the table `"colours"` can also be provided.
-- @return #number the set of colours with specified ones removed.

-------------------------------------------------------------------------------
-- Tests whether a given colour (or set of colours) is contained within a set (first arguement).
-- @function [parent=#colours] test
-- @param #number colors the set of colours to test with
-- @param #number color the colour to check for
-- @return #boolean whether the colour is contained in the set

return nil