-------------------------------------------------------------------------------
-- ##RedPower Bundled Cable Color API
-- The [colors API](http://computercraft.info/wiki/Colors_%28API%29) allows you
-- to utilize Bundled Cables from the RedPower mod, and colors on Advanced
-- Computers and Advanced Monitors.
-- ###Notes:  
-- >
-- > 1. For the non-American English version just replace 'color' with 'colour' and it
-- will use the other API, @{colours} - which is exactly the same, except in non-American
-- English (e.g. gray is spelled grey and lightGray is spelled lightGrey).
-- > 2. Since the @{#colors} are just integers, the standard addition (+) and
-- subtraction (-) operators may be used on @{#colors} instead of @{#colors.combine}
-- and @{#colors.subtract}.
-- > 3. Furthermore, the [Bit (API)](bit.html) may be used on sets of @{#colors}.
-- @module colors

--------------------------------------------------------------------------------
-- A bitmask of colors. Implemented as a @{#number}.
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
-- > > 8. gray = 128
-- > > 9. lightGray = 256
-- > > 10. cyan = 512
-- > > 11. purple = 1024
-- > > 12. blue = 2048
-- > > 13. brown = 4096
-- > > 14. green = 8192
-- > > 15. red = 16384
-- > > 16. black = 32768
-- @type color

-------------------------------------------------------------------------------
-- Combines a set of colors (or sets of colors) into a larger set.
-- @function [parent=#colors] combine
-- @param ... the color(s) to use. An element of the table colors can also be provided.
-- @return #color the set of combined colors

-------------------------------------------------------------------------------
-- Removes one or more colors (or sets of colors) from an initial set.
-- @function [parent=#colors] subtract
-- @param #color colors the set of colors to remove from.
-- @param ... color(s) to remove from the set. An element of the table `"colors"` can also be provided.
-- @return #color the set of colors with specified ones removed.

-------------------------------------------------------------------------------
-- Tests whether a given color (or set of colors) is contained within a set (first arguement).
-- @function [parent=#colors] test
-- @param #color colors the set of colors to test with
-- @param #color color the color to check for
-- @return #boolean whether the color is contained in the set

-------------------------------------------------------------------------------
-- Constant to color code mapping.
-- @field  [parent=#colors] #color green

-------------------------------------------------------------------------------
-- Constant to color code mapping.
-- @field  [parent=#colors] #color brown

-------------------------------------------------------------------------------
-- Constant to color code mapping.
-- @field  [parent=#colors] #color black

-------------------------------------------------------------------------------
-- Constant to color code mapping.
-- @field  [parent=#colors] #color pink

-------------------------------------------------------------------------------
-- Constant to color code mapping.
-- @field  [parent=#colors] #color yellow

-------------------------------------------------------------------------------
-- Constant to color code mapping.
-- @field  [parent=#colors] #color orange

-------------------------------------------------------------------------------
-- Constant to color code mapping.
-- @field  [parent=#colors] #color magenta

-------------------------------------------------------------------------------
-- Constant to color code mapping.
-- @field  [parent=#colors] #color purple

-------------------------------------------------------------------------------
-- Constant to color code mapping.
-- @field  [parent=#colors] #color cyan

-------------------------------------------------------------------------------
-- Constant to color code mapping.
-- @field  [parent=#colors] #color red

-------------------------------------------------------------------------------
-- Constant to color code mapping.
-- @field  [parent=#colors] #color white

-------------------------------------------------------------------------------
-- Constant to color code mapping.
-- @field  [parent=#colors] #color lightBlue

-------------------------------------------------------------------------------
-- Constant to color code mapping.
-- @field  [parent=#colors] #color blue

-------------------------------------------------------------------------------
-- Constant to color code mapping.
-- @field  [parent=#colors] #color lime

-------------------------------------------------------------------------------
-- Constant to color code mapping.
-- @field  [parent=#colors] #color lightGray

-------------------------------------------------------------------------------
-- Constant to color code mapping.
-- @field  [parent=#colors] #color gray

return nil