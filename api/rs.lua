-------------------------------------------------------------------------------
-- ##RS API
-- The [rs API](http://computercraft.info/wiki/Redstone_%28API%29) contains
-- methods to control attached RedPower cables/bundled cables and regular redstone.
-- ###Notes:  
-- >
-- > 1. The [rs module](rs.html) is an alias of [redstone](redstone.html).
-- @module rs

-------------------------------------------------------------------------------
-- Returns an array of possible `sides`.
-- @function [parent=#rs] getSides
-- @return #table list of all valid `sides`.

-------------------------------------------------------------------------------
-- Returns the current redstone input signal state on `side`.
-- ###Notes:  
-- >
-- > 1. This function will throw an error if you give it an invalid side. 
-- @function [parent=#rs] getInput
-- @param peripheral#side side the `side` of the computer to consider.
-- @return #boolean `true` if the computer is getting redstone power from the given side; otherwise `false`.

-------------------------------------------------------------------------------
-- Returns the current redstone output signal on `side`.
-- @function [parent=#rs] getOutput
-- @param peripheral#side side the `side` of the computer to consider.
-- @return #boolean `true` if the computer is sending redstone power from the given side; otherwise `false`.

-------------------------------------------------------------------------------
-- Set or reset a redstone signal on `side`.
-- ###Notes:  
-- >
-- > 1. This function will throw an error if you give it an invalid `side`. 
-- @function [parent=#rs] setOutput
-- @param peripheral#side side the `side` of the computer to consider.
-- @param #boolean state `true` powers the `side`; `false` depowers the `side.

-------------------------------------------------------------------------------
-- Returns the state of a redpower wire inside a bundle connected to `side`.
-- @function [parent=#rs] getBundledInput
-- @param peripheral#side side the `side` of the computer to consider.
-- @return colors#color The [`colors`](colors.html)/[`colours`](colours.html) that the computer is getting redstone power from on the given `side`.

-------------------------------------------------------------------------------
-- Returns the set of redpower wires inside a bundle on `side` that are being 
-- driven high by the local console.
-- ###Notes:  
-- >
-- > 1. Not those that are driven high by another device on the bundle but
--      not driven high by the local console.
-- @function [parent=#rs] getBundledOutput
-- @param peripheral#side side the `side` of the computer to consider.
-- @return colors#color The [`colors`](colors.html)/[`colours`](colours.html) that the computer is sending redstone power to on the given `side`.

-------------------------------------------------------------------------------
-- Powers one or multiple colored signals in a redpower bundled wire connected to
-- `side`.
-- ###Notes:  
-- >
-- > 1. In order to power multiple signals, add the [`color`](colors.html)/[`colour`](colours.html) values of the [`colors`](colors.html)/[`colours`](colours.html) you want to activate.
-- > 2. To turn off a signal, subtract that [`color`](colors.html)/[`colour`](colours.html) from getBundledOutput's return (if present) and use that number for the integer.
-- > 3. To turn off all of the values, use 0 for the integer.
-- @function [parent=#rs] setBundledOutput
-- @param peripheral#side side the `side` of the computer to consider.
-- @param colors#color colors The [`colors`](colors.html)/[`colours`](colours.html) to power.

-------------------------------------------------------------------------------
-- Returns `true` or `false` whether or not a colored signal is active in a redpower
-- bundled wire connected to `side`.
-- @function [parent=#rs] testBundledInput
-- @param peripheral#side side the `side` of the computer to consider.
-- @param colors#color color The [`color`](colors.html)/[`colour`](colours.html) to check.
-- @return #boolean `true` if the computer is getting redstone power from the given `side` from the provided [`color`](colors.html)/[`colour`](colours.html); otherwise `false`.

return nil