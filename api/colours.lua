-------------------------------------------------------------------------------
-- ##RedPower Bundled Cable Colour API
-- The [colours API](http://computercraft.info/wiki/Colors_%28API%29) allows you
-- to utilize Bundled Cables from the RedPower mod, and colors on Advanced
-- Computers and Advanced Monitors.
-- ###Notes:  
-- >
-- > 1. For the American English version just replace 'colour' with 'color' and it
-- will use the other API, @{colors} - which is exactly the same, except in American
-- English (e.g. grey is spelled gray and lightGrey is spelled lightGray).
-- > 2. Since the @{#colours} are just integers, the standard addition (+) and
-- subtraction (-) operators may be used on @{#colours} instead of @{#colours.combine}
-- and @{#colours.subtract}.
-- > 3. Furthermore, the [Bit (API)](bit.html) may be used on sets of @{#colours}.
-- @module colours

--------------------------------------------------------------------------------
-- A bitmask of colours. Implemented as a @{#number}.
-- >
-- > ###Notes:  
-- > >
-- > > 1. white = 1
-- > > 2. orange = 2
-- > > 3. magenta = 4
-- > > 4. lightBlue = 8
-- > > 5. yellow = 16
-- > > 6. lime = 32
-- > > 7. pink = 64
-- > > 8. grey = 128
-- > > 9. lightGrey = 256
-- > > 10. cyan = 512
-- > > 11. purple = 1024
-- > > 12. blue = 2048
-- > > 13. brown = 4096
-- > > 14. green = 8192
-- > > 15. red = 16384
-- > > 16. black = 32768
-- @type colour

-------------------------------------------------------------------------------
-- Combines a set of colours (or sets of colours) into a larger set.
-- @function [parent=#colours] combine
-- @param ... the colour(s) to use. An element of the table colours can also be provided.
-- @return #colour the set of combined colours

-------------------------------------------------------------------------------
-- Removes one or more colours (or sets of colours) from an initial set.
-- @function [parent=#colours] subtract
-- @param #colour colors the set of colours to remove from.
-- @param ... colour(s) to remove from the set. An element of the table `"colours"` can also be provided.
-- @return #colour the set of colours with specified ones removed.

-------------------------------------------------------------------------------
-- Tests whether a given colour (or set of colours) is contained within a set (first arguement).
-- @function [parent=#colours] test
-- @param #colour colors the set of colours to test with
-- @param #colour color the colour to check for
-- @return #boolean whether the colour is contained in the set

-------------------------------------------------------------------------------
-- Constant to colour code mapping.
-- @field  [parent=#colours] #colour green

-------------------------------------------------------------------------------
-- Constant to colour code mapping.
-- @field  [parent=#colours] #colour brown

-------------------------------------------------------------------------------
-- Constant to colour code mapping.
-- @field  [parent=#colours] #colour black

-------------------------------------------------------------------------------
-- Constant to colour code mapping.
-- @field  [parent=#colours] #colour pink

-------------------------------------------------------------------------------
-- Constant to colour code mapping.
-- @field  [parent=#colours] #colour yellow

-------------------------------------------------------------------------------
-- Constant to colour code mapping.
-- @field  [parent=#colours] #colour orange

-------------------------------------------------------------------------------
-- Constant to colour code mapping.
-- @field  [parent=#colours] #colour magenta

-------------------------------------------------------------------------------
-- Constant to colour code mapping.
-- @field  [parent=#colours] #colour purple

-------------------------------------------------------------------------------
-- Constant to colour code mapping.
-- @field  [parent=#colours] #colour cyan

-------------------------------------------------------------------------------
-- Constant to colour code mapping.
-- @field  [parent=#colours] #colour red

-------------------------------------------------------------------------------
-- Constant to colour code mapping.
-- @field  [parent=#colours] #colour white

-------------------------------------------------------------------------------
-- Constant to colour code mapping.
-- @field  [parent=#colours] #colour lightBlue

-------------------------------------------------------------------------------
-- Constant to colour code mapping.
-- @field  [parent=#colours] #colour blue

-------------------------------------------------------------------------------
-- Constant to colour code mapping.
-- @field  [parent=#colours] #colour lime

-------------------------------------------------------------------------------
-- Constant to colour code mapping.
-- @field  [parent=#colours] #colour lightGrey

-------------------------------------------------------------------------------
-- Constant to colour code mapping.
-- @field  [parent=#colours] #colour grey

return nil