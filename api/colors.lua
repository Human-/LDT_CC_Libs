-------------------------------------------------------------------------------
-- RedPower Bundled Cable Color API
-- The Colors API allows you to utilize Bundled Cables from the RedPower mod, and
-- colors on Advanced Computers and Advanced Monitors.
-- For the non-American English version just replace 'color' with 'colour' and it
-- will use the other API, colours - which is exactly the same, except in non-American
-- English (e.g. gray is spelled grey and lightGray is spelled lightGrey). 
-- See http://computercraft.info/wiki/Colors_%28API%29 for more info
-- @module colors

-------------------------------------------------------------------------------
-- Combines a set of colors (or sets of colors) into a larger set.
-- @function [parent=#colors] combine
-- @param ... the color(s) to use. An element of the table colors can also be provided.
-- @return #number the set of combined colors

-------------------------------------------------------------------------------
-- Removes one or more colors (or sets of colors) from an initial set.
-- @function [parent=#colors] subtract
-- @param #number colors the set of colors to remove from.
-- @param ... color(s) to remove from the set. An element of the table `"colors"` can also be provided.
-- @return #number the set of colors with specified ones removed.

-------------------------------------------------------------------------------
-- Tests whether a given color (or set of colors) is contained within a set (first arguement).
-- @function [parent=#colors] test
-- @param #number colors the set of colors to test with
-- @param #number color the color to check for
-- @return #boolean whether the color is contained in the set

return nil